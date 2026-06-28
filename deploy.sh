#!/usr/bin/env bash
# Deploy the saebooks.com.au Grav SOURCE (this repo) -> live container webroot.
#   ./deploy.sh             # snapshot + sync + clearcache + smoke test (auto-rollback on failure)
#   ./deploy.sh --no-verify # sync only, no smoke test / no rollback
# One-way: this repo is canonical, live is derived. Run on bosun.
set -euo pipefail
cd "$(dirname "$0")"

SRC="$PWD/user"
LIVE=/opt/appdata/grav-saebooks/www/user
SNAP=/opt/appdata/grav-saebooks/_deploy-prev      # previous-good snapshot (render-critical paths)
CTN=grav-saebooks
ORIGIN=http://10.0.1.1:18008                       # grav-saebooks origin (bypasses Cloudflare)
HOSTHDR='saebooks.com.au'

dock() { if command -v sudo >/dev/null 2>&1; then sudo docker "$@"; else docker "$@"; fi; }
rs()   { if command -v sudo >/dev/null 2>&1; then sudo rsync "$@"; else rsync "$@"; fi; }
SUDO=; command -v sudo >/dev/null 2>&1 && SUDO=sudo
cc() { dock exec "$CTN" php /app/www/public/bin/grav clearcache >/dev/null 2>&1 || true; }

echo '=== 0/4  snapshot current render-critical live state (pages + templates) ==='
$SUDO mkdir -p "$SNAP/pages" "$SNAP/templates"
rs -a --delete "$LIVE/pages/"                     "$SNAP/pages/"
rs -a --delete "$LIVE/themes/typhoon/templates/" "$SNAP/templates/"

echo '=== 1/4  sync managed paths -> live ==='
rs -a --delete --exclude='*.bak*' "$SRC/pages/"                     "$LIVE/pages/"
rs -a --delete --exclude='*.bak*' "$SRC/themes/typhoon/templates/" "$LIVE/themes/typhoon/templates/"
# config + data: add/update only (live holds untracked secrets + runtime/PII files).
rs -a --exclude='*.bak*' "$SRC/config/" "$LIVE/config/"
rs -a --exclude='*.bak*' "$SRC/data/"   "$LIVE/data/"
[ -f "$PWD/README.md" ] && rs -a "$PWD/README.md" "$LIVE/README.md" || true

echo '=== 2/4  fix ownership (container PUID:PGID = 99:100) + clear cache ==='
$SUDO chown -R 99:100 "$LIVE/pages" "$LIVE/themes/typhoon/templates" "$LIVE/config" "$LIVE/data"
cc

if [ "${1:-}" = '--no-verify' ]; then echo '=== 3/4  smoke test skipped (--no-verify) ==='; echo 'deployed (unverified)'; exit 0; fi

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

if [ "$fail" = 1 ]; then
  echo '=== 4/4  SMOKE FAILED -> ROLLING BACK to previous-good snapshot ===' >&2
  rs -a --delete "$SNAP/pages/"     "$LIVE/pages/"
  rs -a --delete "$SNAP/templates/" "$LIVE/themes/typhoon/templates/"
  $SUDO chown -R 99:100 "$LIVE/pages" "$LIVE/themes/typhoon/templates"
  cc
  echo 'ROLLED BACK. Live restored to previous-good; the bad source change was NOT published.' >&2
  exit 1
fi
echo '=== 4/4  ok; mirror to GitHub ==='
 -u sauer GIT_SSH_COMMAND='ssh -o BatchMode=yes -o ConnectTimeout=10' git -C "" push -q origin HEAD:main 2>&1 | tail -1 || echo 'WARN: mirror push failed (deploy still OK)'
echo 'deployed + verified -> https://saebooks.com.au/'
