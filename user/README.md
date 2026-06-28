# saebooks.com.au — Grav site (`user/` tree)

Private version-control + disaster-recovery mirror of the **grav-saebooks** Grav
install that serves **https://saebooks.com.au**.

- Live path: `bosun:/opt/appdata/grav-saebooks/www/user` (container `grav-saebooks`).
- This is the safety net sauer.com.au had (`aussieboer61/sauer-grav`) and this site didn't.

## NOT in this repo (gitignored — recreate on restore)
- `config/plugins/email.yaml` — Resend SMTP config incl. API key (preview-access form mail).
  Recreate from `~/.claude/secrets/resend.env` (`RESEND_FULL_API_KEY`), to `admin@saee.com.au`.
- `config/plugins/login-oauth2.yaml` — OAuth client secrets.
- `config/security.yaml` — Grav security salt.
- `accounts/` — admin accounts (password hashes).
- `data/preview-access/` — form submissions (lead PII). `data/rememberme/`, `data/licenses.yaml`.
- caches, logs, scheduler state.

## Restore
1. Stand up `grav-saebooks` (linuxserver/grav), volume `/opt/appdata/grav-saebooks/www`.
2. `git clone` this repo into `www/user/`.
3. Recreate the gitignored secret files above.
4. Clear cache: `docker exec grav-saebooks rm -rf /app/www/public/cache/twig/*`.

## Editing notes
- CSS cache-bust = `config/site.yaml: assets_version`. After editing `data/saebooks.css`
  run `~/bin/saebooks-assets-bump`.
- Auto-synced every 15 min by the `saebooks-grav-sync.timer` systemd unit on bosun (one-way push).
