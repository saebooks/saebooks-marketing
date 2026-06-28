# saebooks.com.au — marketing site (Grav) SOURCE

Canonical source for the public marketing site <https://saebooks.com.au>, served by
the `grav-saebooks` container on bosun. **Edit here — never on the live container.**

## Workflow
1. Edit `user/` (content / templates / config) in this repo on bosun (as `sauer`).
2. `git commit`. That's it — a systemd path-watch auto-runs `./deploy.sh`:
   **sync → fix ownership (99:100) → clear Grav cache → smoke-test → mirror-push to GitHub.**
   If a change breaks the site, the smoke test **auto-ROLLS BACK** live to the previous-good
   state and the deploy is marked failed (`OnFailure` notify). A bad edit cannot silently stay live.
3. Manual deploy any time: `./deploy.sh` (or `./deploy.sh --no-verify` to skip the gate).

## Tracked (managed → deployed) vs not
- **Tracked:** `user/pages`, `user/config` (minus secrets), `user/data` (minus PII/runtime),
  `user/themes/typhoon/templates`, this README.
- **NOT tracked / NOT deployed:** `user/plugins` (GPM-managed on live), `user/accounts`,
  secrets (`security*.yaml|php`, `plugins/email.yaml`, `plugins/login-oauth2.yaml`,
  `data/licenses.yaml`), `cache/logs/tmp/backup`, form-submission/runtime data.

## Pipeline pieces (bosun)
| Piece | Role |
|---|---|
| `deploy.sh` | sync + ownership + clearcache + smoke-test (auto-rollback) + mirror-push. Origin smoke = `http://10.0.1.1:18008` (bypasses Cloudflare). |
| `saebooks-marketing-deploy.path` (systemd) | watches `.git/refs/heads/main` → triggers the deploy service on every commit/pull. |
| `saebooks-marketing-deploy.service` (systemd, root oneshot) | runs `deploy.sh`. |
| live webroot | `/opt/appdata/grav-saebooks/www/user` (container PUID:PGID `99:100`). |

Content-twig is DEAD on this Grav 2.0.3 — put `{% include %}` / `{{ }}` in **templates**, not page
markdown bodies (the smoke test greps for raw `{%` leaks to catch regressions).

Retired 2026-06-28: `saebooks-grav-sync` (old edit-live-then-mirror auto-commit; broke 2026-06-03).
