#!/usr/bin/env bash
# Deploy the saebooks.com.au Grav SOURCE (this repo) -> live container webroot.
#   ./deploy.sh             # sync + clearcache + smoke test (fails loudly if broken)
#   ./deploy.sh --no-verify # skip the smoke test
# One-way: this repo is canonical, live is derived. Run on bosun.
set -euo pipefail
cd "$(dirname "$0")"

SRC="$PWD/user"
LIVE=/opt/appdata/grav-saebooks/www/user
CTN=grav-saebooks
ORIGIN=http://10.0.1.1:18008          # grav-saebooks origin (bypasses Cloudflare)
HOSTHDR='saebooks.com.au'

dock() { if command -v sudo >/dev/null 2>&1; then sudo docker "$@"; else docker "$@"; fi; }
rs()   { if command -v sudo >/dev/null 2>&1; then sudo rsync "$@"; else rsync "$@"; fi; }

echo '=== 1/4  sync managed paths -> live ==='
# pages + typhoon templates are fully managed -> --delete keeps live == repo.
rs -a --delete --exclude='*.bak*' "$SRC/pages/"                      "$LIVE/pages/"
rs -a --delete --exclude='*.bak*' "$SRC/themes/typhoon/templates/"  "$LIVE/themes/typhoon/templates/"
# config + data: add/update only (no --delete; live holds secrets + runtime/PII
# files the repo deliberately does not track: security-private.php, licenses.yaml, form data).
rs -a --exclude='*.bak*' "$SRC/config/" "$LIVE/config/"
rs -a --exclude='*.bak*' "$SRC/data/"   "$LIVE/data/"
[ -f "$PWD/README.md" ] && rs -a "$PWD/README.md" "$LIVE/README.md" || true

echo '=== 2/4  fix ownership (container PUID:PGID = 99:100) ==='
if command -v sudo >/dev/null 2>&1; then SUDO=sudo; else SUDO=; fi
$SUDO chown -R 99:100 "$LIVE/pages" "$LIVE/themes/typhoon/templates" "$LIVE/config" "$LIVE/data"

echo '=== 3/4  clear Grav cache ==='
dock exec "$CTN" php /app/www/public/bin/grav clearcache >/dev/null 2>&1 || true

if [ "${1:-}" = '--no-verify' ]; then echo '=== 4/4  smoke test skipped (--no-verify) ==='; echo 'deployed (unverified)'; exit 0; fi

echo '=== 4/4  smoke test @ origin (header renders, no raw twig, HTTP 200) ==='
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
[ "$fail" = 1 ] && { echo 'SMOKE TEST FAILED — investigate (live may be broken)' >&2; exit 1; }
echo 'deployed + verified -> https://saebooks.com.au/'
