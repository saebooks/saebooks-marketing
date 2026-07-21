#!/usr/bin/env bash
# Deploy the saebooks.com.au Grav SOURCE (this repo) -> live container webroot.
#   ./deploy.sh             # snapshot + sync + cache-bust + clearcache + smoke + layout check (auto-rollback on failure)
#   ./deploy.sh --no-verify # sync only, no smoke/layout test, no rollback
# One-way: this repo is canonical, live is derived. Run on bosun.
set -euo pipefail
cd "$(dirname "$0")"

SRC="$PWD/user"
LIVE=/opt/appdata/grav-saebooks/www/user
SNAP=/opt/appdata/grav-saebooks/_deploy-prev      # previous-good snapshot (render-critical paths)
CTN=grav-saebooks
ORIGIN=http://10.0.1.1:18008                       # grav-saebooks origin (bypasses Cloudflare)
HOSTHDR='saebooks.com.au'
PW_CACHE=/home/sauer/.cache/ms-playwright          # chromium for the headless layout check
PURGE_ENV=/home/sauer/.config/saebooks-deploy/cf-purge.env   # scoped (cache-purge-only) CF token, chmod 600
PAGES_PUBLIC="'' product self-host cashbook resources blog download pre-order sitemap.xml"  # pages to purge at the CF edge after deploy

dock() { if command -v sudo >/dev/null 2>&1; then sudo docker "$@"; else docker "$@"; fi; }
rs()   { if command -v sudo >/dev/null 2>&1; then sudo rsync "$@"; else rsync "$@"; fi; }
SUDO=; command -v sudo >/dev/null 2>&1 && SUDO=sudo
cc() { dock exec "$CTN" php /app/www/public/bin/grav clearcache >/dev/null 2>&1 || true; }

# Derive assets_version from a content hash of the live CSS so EVERY change to the
# stylesheet produces a new ?v=... asset URL -> Cloudflare + browser caches bust
# automatically. Without this the version was static and stale CSS served for ~30d.
bump_assets_version() {
  local ver
  ver=$($SUDO sha1sum "$LIVE/data/saebooks.css" "$LIVE/data/colors_and_type.css" 2>/dev/null | sha1sum | cut -c1-12)
  [ -z "$ver" ] && return 0
  if $SUDO grep -q '^assets_version:' "$LIVE/config/site.yaml"; then
    $SUDO sed -i "s|^assets_version:.*|assets_version: \"$ver\"|" "$LIVE/config/site.yaml"
  else
    echo "assets_version: \"$ver\"" | $SUDO tee -a "$LIVE/config/site.yaml" >/dev/null
  fi
  echo "    assets_version -> $ver"
}

# Purge Cloudflare's cached HTML for the changed pages so visitors fetch markup
# carrying the freshly-hashed ?v= asset URLs. Best-effort: a missing/expired token
# warns but never fails an already-successful deploy. The CSS files themselves are a
# new cache key after bump_assets_version, so only the HTML needs purging.
cf_purge_html() {
  [ -f "$PURGE_ENV" ] || { echo 'WARN: CF purge token absent ('"$PURGE_ENV"') — skipping edge purge (visitors get new CSS within cache TTL)' >&2; return 0; }
  # shellcheck disable=SC1090
  . "$PURGE_ENV"
  [ -n "${CF_PURGE_TOKEN:-}" ] && [ -n "${CF_ZONE_ID:-}" ] || { echo 'WARN: CF purge creds incomplete — skipping edge purge' >&2; return 0; }
  local p urls=()
  for p in $PAGES_PUBLIC; do [ "$p" = "''" ] && p=''; urls+=("\"https://$HOSTHDR/$p\""); done
  local files; files=$(IFS=,; echo "${urls[*]}")
  local resp; resp=$(curl -s -m 20 -X POST "https://api.cloudflare.com/client/v4/zones/$CF_ZONE_ID/purge_cache" \
    -H "Authorization: Bearer $CF_PURGE_TOKEN" -H 'Content-Type: application/json' --data "{\"files\":[$files]}")
  if printf '%s' "$resp" | grep -q '"success":true'; then echo '    CF edge cache purged (html pages)'; else echo "WARN: CF purge failed: $resp" >&2; fi
}

echo '=== 0/4  snapshot current render-critical live state (pages + templates + data) ==='
$SUDO mkdir -p "$SNAP/pages" "$SNAP/templates" "$SNAP/data"
rs -a --delete "$LIVE/pages/"                     "$SNAP/pages/"
rs -a --delete "$LIVE/themes/typhoon/templates/" "$SNAP/templates/"
rs -a --delete "$LIVE/data/"                      "$SNAP/data/"   # css/js -> so a layout regression can roll back

echo '=== 1/4  sync managed paths -> live ==='
rs -a --delete --exclude='*.bak*' "$SRC/pages/"                     "$LIVE/pages/"
rs -a --delete --exclude='*.bak*' "$SRC/themes/typhoon/templates/" "$LIVE/themes/typhoon/templates/"
# config + data: add/update only (live holds untracked secrets + runtime/PII files).
rs -a --exclude='*.bak*' "$SRC/config/" "$LIVE/config/"
rs -a --exclude='*.bak*' "$SRC/data/"   "$LIVE/data/"
[ -f "$PWD/README.md" ] && rs -a "$PWD/README.md" "$LIVE/README.md" || true

echo '=== 2/4  fix ownership (container PUID:PGID = 99:100) + cache-bust + clear cache ==='
$SUDO chown -R 99:100 "$LIVE/pages" "$LIVE/themes/typhoon/templates" "$LIVE/config" "$LIVE/data"
bump_assets_version
cc

if [ "${1:-}" = '--no-verify' ]; then echo '=== 3/4  smoke + layout test skipped (--no-verify) ==='; cf_purge_html; echo 'deployed (unverified)'; exit 0; fi

echo '=== 3/4  smoke test @ origin (header renders, no raw twig, HTTP 200) ==='
fail=0; tmp="$(mktemp)"
for p in '' product self-host cashbook resources blog download pre-order sitemap.xml; do
  code=$(curl -s -o "$tmp" -w '%{http_code}' -m 20 "$ORIGIN/$p" -H "Host: $HOSTHDR" || echo 000)
  leak=$(grep -c '{% ' "$tmp" 2>/dev/null || true)
  st='ok'
  [ "$code" != '200' ] && { st="HTTP $code"; fail=1; }
  [ "${leak:-0}" -gt 0 ] && { st='RAW-TWIG-LEAK'; fail=1; }
  if [ "$p" = 'sitemap.xml' ]; then
    xml=$(grep -c '<urlset' "$tmp" 2>/dev/null || true)
    [ "${xml:-0}" -lt 1 ] && { st='NO-URLSET'; fail=1; }
  else
    hdr=$(grep -c 'header class="site-header"' "$tmp" 2>/dev/null || true)
    [ "${hdr:-0}" -lt 1 ] && { st='NO-HEADER'; fail=1; }
  fi
  printf '    %-12s %s\n' "/$p" "$st"
done
rm -f "$tmp"

# Headless layout guard: loads the screenshot-bearing pages at desktop + mobile and
# fails on horizontal overflow / images spilling right / shot-frame not toggling /
# missing .shot-frame CSS. Catches the "skewed to the right" class that curl can't see.
if [ "$fail" = 0 ]; then
  if command -v node >/dev/null 2>&1 && [ -f "$PWD/layout-check.mjs" ] && [ -d "$PW_CACHE" ]; then
    echo '=== 3b/4  layout check (headless chromium, desktop + mobile, light + dark) ==='
    if ! PLAYWRIGHT_BROWSERS_PATH="$PW_CACHE" ORIGIN="$ORIGIN" HOSTHDR="$HOSTHDR" \
         PAGES='/,/product,/self-host,/resources,/cashbook,/download,/pre-order' node "$PWD/layout-check.mjs"; then
      fail=1
    fi
  else
    echo '=== 3b/4  layout check SKIPPED (node/playwright/script unavailable) ===' >&2
  fi
fi

if [ "$fail" = 1 ]; then
  echo '=== 4/4  VERIFY FAILED -> ROLLING BACK to previous-good snapshot ===' >&2
  rs -a --delete "$SNAP/pages/"     "$LIVE/pages/"
  rs -a --delete "$SNAP/templates/" "$LIVE/themes/typhoon/templates/"
  rs -a --delete "$SNAP/data/"      "$LIVE/data/"
  $SUDO chown -R 99:100 "$LIVE/pages" "$LIVE/themes/typhoon/templates" "$LIVE/data"
  bump_assets_version   # restored CSS gets its own hash so the rollback also busts cache
  cc
  echo 'ROLLED BACK. Live restored to previous-good; the bad source change was NOT published.' >&2
  exit 1
fi
echo '=== 4/4  ok; purge CF edge + mirror to GitHub ==='
cf_purge_html
sudo -u sauer GIT_SSH_COMMAND='ssh -o BatchMode=yes -o ConnectTimeout=10' git -C /home/sauer/projects/saebooks-marketing push -q origin HEAD:main 2>&1 | tail -1 || echo 'WARN: mirror push failed (deploy still OK)'
echo 'deployed + verified -> https://saebooks.com.au/'

echo '=== 5/5  refresh CF Pages apex copy (saebooks-web project serves saebooks.com.au) ==='
# The PUBLIC apex is a CF Pages static copy (DR: survives bosun down). It decoupled
# silently once (2026-07-03..07-20) — this stage keeps it in lockstep with the origin.
PAGES_OK=0
if [ -f /home/sauer/.claude/secrets/cf-bridge.env ]; then
  . /home/sauer/.claude/secrets/cf-bridge.env
  MIRROR=$(mktemp -d /tmp/saebooks-apex-mirror.XXXXXX)
  wget -q -e robots=off --mirror --page-requisites --convert-links --adjust-extension \
      --no-host-directories --restrict-file-names=windows --timeout=15 --tries=2 \
      -P "$MIRROR" http://10.0.1.1:18008/ || true
  # sitemap.xml is never link-crawled (no nav <a> to it) -- fetch it explicitly so the
  # CF Pages static copy actually serves it (the static copy is the whole public site).
  wget -q -e robots=off --timeout=15 --tries=2 -O "$MIRROR/sitemap.xml" \
      http://10.0.1.1:18008/sitemap.xml || true
  if [ -s "$MIRROR/index.html" ]; then
    if CLOUDFLARE_API_TOKEN="$CF_BRIDGE_TOKEN" CLOUDFLARE_ACCOUNT_ID="$CF_ACCOUNT_ID" \
        npx --yes wrangler@latest pages deploy "$MIRROR" --project-name=saebooks-web \
        --branch=main --commit-dirty=true >/tmp/saebooks-pages-deploy.log 2>&1; then
      MARK=$(grep -oE '<h1[^>]*>[^<]{10,80}' "$MIRROR/index.html" | head -1 | sed 's/<[^>]*>//')
      [ -n "$MARK" ] || MARK=$(grep -oE '<title>[^<]{10,60}' "$MIRROR/index.html" | head -1 | cut -c8-)
      for i in 1 2 3 4 5 6; do
        sleep 15
        if curl -s --max-time 20 https://saebooks.com.au/ | grep -qF "$MARK"; then
          PAGES_OK=1; echo "apex Pages copy refreshed + verified (try $i)"; break
        fi
      done
    fi
  fi
  rm -rf "$MIRROR"
fi
[ "$PAGES_OK" = 1 ] || echo 'WARN: CF Pages apex refresh FAILED — public apex may be serving a STALE copy (origin deploy itself is OK). See /tmp/saebooks-pages-deploy.log' >&2
