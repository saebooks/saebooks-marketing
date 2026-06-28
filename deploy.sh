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

if [ "${1:-}" = '--no-verify' ]; then echo '=== 3/4  smoke + layout test skipped (--no-verify) ==='; echo 'deployed (unverified)'; exit 0; fi

echo '=== 3/4  smoke test @ origin (header renders, no raw twig, HTTP 200) ==='
fail=0; tmp="$(mktemp)"
for p in '' product self-host cashbook resources blog; do
  code=$(curl -s -o "$tmp" -w '%{http_code}' -m 20 "$ORIGIN/$p" -H "Host: $HOSTHDR" || echo 000)
  leak=$(grep -c '{% ' "$tmp" 2>/dev/null || true)
  hdr=$(grep -c 'header class="site-header"' "$tmp" 2>/dev/null || true)
  st='ok'
  [ "$code" != '200' ] && { st="HTTP $code"; fail=1; }
  [ "${leak:-0}" -gt 0 ] && { st='RAW-TWIG-LEAK'; fail=1; }
  [ "${hdr:-0}" -lt 1 ] && { st='NO-HEADER'; fail=1; }
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
         PAGES='/,/product,/self-host,/resources' node "$PWD/layout-check.mjs"; then
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
echo '=== 4/4  ok; mirror to GitHub ==='
sudo -u sauer GIT_SSH_COMMAND='ssh -o BatchMode=yes -o ConnectTimeout=10' git -C /home/sauer/projects/saebooks-marketing push -q origin HEAD:main 2>&1 | tail -1 || echo 'WARN: mirror push failed (deploy still OK)'
echo 'deployed + verified -> https://saebooks.com.au/'
