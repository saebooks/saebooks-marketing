# saebooks-marketing

Public marketing site for [saebooks.com.au](https://saebooks.com.au) — Grav CMS with the
Typhoon theme, custom dark CSS, and direct CTAs into the SAE Books surface area:

- **App**     — `https://app.saebooks.com.au` (FastAPI ledger)
- **Dev**     — `https://dev.saebooks.com.au` (developer portal / API ref)
- **Forum**   — `https://discourse.saebooks.com.au` (Discourse community)
- **Login**   — `https://auth.saebooks.com.au` (Authentik SSO)

All four properties share the same Authentik identity (`auth.saebooks.com.au`) so a single
sign-in covers the lot.

## Layout

```
user/
├── pages/
│   ├── 01.home/homepage.md      # full landing page: hero, why, features, editions, self-host, FAQ, CTA
│   ├── 02.cashbook/default.md   # the free Cashbook product page
│   └── 02.blog/                 # build log / blog (item.md per post)
├── data/
│   ├── saebooks.css             # custom dark theme, no Tailwind compile required
│   └── sae-books-logo.png       # wordmark
└── config/
    ├── site.yaml                # title, nav menu
    ├── plugins/custom-css.yaml  # loads saebooks.css
    └── themes/typhoon.yaml      # Typhoon dark mode + footer + copyright
```

The landing page is a single rich `homepage.md` with in-page sections (`#features`,
`#editions`, `#self-host`, `#faq`) rather than separate pages — the nav anchors into it.

## Deploy

The live site runs the `grav-saebooks` container on **bosun**
(`/opt/appdata/grav-saebooks` → docker volume). Files in `user/` map 1:1 to
`/config/www/user/` inside the container. To re-deploy after edits in this repo:

```bash
ssh bosun "sudo docker cp /home/sauer/projects/saebooks-marketing/user/. \
  grav-saebooks:/config/www/user/ && \
  sudo docker exec grav-saebooks bin/grav clearcache"
```

## Theme

Typhoon is a paid Tailwind-based Grav theme. Licence keys are stored separately at
`user/data/licenses.yaml` (not in this repo — see the Grav premium-licences note on
the ops host).

The custom CSS forces a dark palette over Typhoon's light defaults; the `body_classes`
in each page front-matter (`homepage`, etc.) namespace the overrides so they don't
bleed into Typhoon's admin UI. A light/dark/auto theme switcher is wired in the header.

## Auth

Editor login is OAuth2 against the dedicated `auth.saebooks.com.au` Authentik instance
(separate from `auth.sauer.com.au`, deliberately portable to a dedicated host later).
Visitors don't need to authenticate to read the site.

## Licence

Site **content** © Sauer Pty Ltd ATF Saueesti Trust (ABN 87 744 586 592).
SAE Books itself is [AGPL-licensed](https://github.com/saebooks/saebooks).
