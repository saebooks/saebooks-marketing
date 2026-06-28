---
metadata:
    description: 'Self-host SAE Books with Docker and your own Postgres. AGPLv3 source, GST and BAS-ready double-entry accounting you fully own — for Australian small business.'
header_active: self-host
title: 'Self-host SAE Books — your books, your database, your control'
menu: 'Self-host'
body_classes: 'page self-host-page'
autoseo:
    enabled: false
process:
    twig: true
---

<section class="hero">
  <div class="container">
    <div>
      <span class="eyebrow brand">Community edition &middot; AGPLv3</span>
      <h1>Your books. Your database. Your control.</h1>
      <p class="lead">SAE Books is API-first double-entry accounting you run on your own server. The full ledger &mdash; invoicing, payroll, time tracking, GST/BAS &mdash; in one binary, on a Postgres database you own. Free to self-host for life. No licence key, no nag screens, nothing held hostage.</p>
      <div class="hero-ctas">
        <a href="https://github.com/saebooks/saebooks" target="_blank" rel="noopener" class="btn btn-primary btn-lg">Download from GitHub
          <svg class="lucide" viewBox="0 0 24 24" style="width:14px;height:14px;"><path d="M5 12h14M13 5l7 7-7 7"/></svg>
        </a>
        <a href="https://dev.saebooks.com.au/getting-started/quickstart/" class="btn btn-secondary btn-lg">Read the quickstart</a>
        <a href="https://cashbook-demo.saebooks.com.au" class="btn btn-secondary btn-lg" target="_blank" rel="noopener">Try the live demo</a>
      </div>
      <div class="hero-meta">
        <span class="pill"><span class="dot"></span>Free &middot; AGPLv3</span>
        <span class="pill">Postgres 16 bundled</span>
        <span class="pill">~10 min to running</span>
        <span class="pill">Australian data residency</span>
      </div>
    </div>
  </div>
</section>

<section class="band">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Not a mockup</span>
      <h2>This is what you'll be running.</h2>
      <p>Live screenshots from <a href="https://cashbook-demo.saebooks.com.au" target="_blank" rel="noopener">cashbook-demo.saebooks.com.au</a> &mdash; the same build you self-host, seeded with sample data. No login required, click anything.</p>
    </div>
    <div class="shots-grid">
      <figure class="shot-frame">
        <a href="https://cashbook-demo.saebooks.com.au/cashbook" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-cashbook-light.png" alt="SAE Books cashbook overview — cash in / cash out, recent entries, this-month summary"><img class="shot-dark" src="/user/data/screenshots/tour-cashbook-dark.png" alt="" aria-hidden="true"></a>
        <figcaption>Cashbook overview &mdash; cash in / out, live entries, this-month totals.</figcaption>
      </figure>
      <figure class="shot-frame">
        <a href="https://cashbook-demo.saebooks.com.au/invoices" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-invoices-light.png" alt="SAE Books invoices list — draft, open and due-soon invoices with AUD totals"><img class="shot-dark" src="/user/data/screenshots/tour-invoices-dark.png" alt="" aria-hidden="true"></a>
        <figcaption>Invoices &mdash; draft / open / due-soon, the full AR ledger.</figcaption>
      </figure>
    </div>
  </div>
</section>

<section id="why-self-host">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Why self-host</span>
      <h2>Six reasons it's yours, not theirs.</h2>
    </div>
    <div class="feature-grid">
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M3 5v14a9 3 0 0 0 18 0V5"/><path d="M3 12a9 3 0 0 0 18 0"/></svg></div>
        <h4>It's your Postgres</h4>
        <p>Your books live in a Postgres database you control &mdash; your laptop, your NAS, a VPS you rent. Any DBA on the planet can help you in a pinch. Nothing is locked in a vendor format.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M9 12l2 2 4-4"/><path d="M21 12c-1 0-3-1-3-3s2-3 3-3-2-3-3-3-3 2-3 3-2-3-3-3-3 2-3 3 2 3 3 3-2 3-3 3 2 3 3 3 3-2 3-3 2 3 3 3 3-2 3-3z"/></svg></div>
        <h4>Free, AGPLv3</h4>
        <p>The full core ledger, free to self-host for life. No licence key, no nag screens. Self-compile and flip the licence flag &mdash; that's what AGPL means.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg></div>
        <h4>Full export, any time</h4>
        <p>CSV, JSON, OFX, QIF, or a complete Postgres dump from Settings &rarr; Export &mdash; importable into a fresh instance with one command. Portability is a feature, not a goodbye gift.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/></svg></div>
        <h4>Public REST API</h4>
        <p>Every screen is a thin client over the same OpenAPI-documented endpoints your scripts call. Anything you can do in a browser, your automations can do too &mdash; same auth, same schema.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="8" rx="2"/><rect x="2" y="14" width="20" height="8" rx="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg></div>
        <h4>One command to run</h4>
        <p>Postgres ships in the compose stack &mdash; no separate database to install. <code>docker compose up -d</code>, migrate, and you're live in about ten minutes.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg></div>
        <h4>Nothing held hostage</h4>
        <p>The core app works fully offline. Internet features &mdash; bank feeds, FX rates, ABN lookup, BAS e-lodgement &mdash; are additive, never required. No vendor can revoke access to your own ledger.</p>
      </div>
    </div>
  </div>
</section>

<section class="band" id="quickstart">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Quickstart</span>
      <h2>From clone to running in ten minutes.</h2>
      <p>Prerequisites: Docker Engine 24+ with <code>docker compose</code> v2, and outbound HTTPS. No Postgres install needed &mdash; the stack ships one.</p>
    </div>
    <div class="install">
      <ol>
        <li><strong>Grab the release compose file.</strong>
<pre>mkdir saebooks &amp;&amp; cd saebooks
curl -fsSL https://raw.githubusercontent.com/saebooks/saebooks/main/docker-compose.release.yml -o docker-compose.yml</pre>
        </li>
        <li><strong>Set the four env values that matter.</strong>
<pre>cp .env.example .env
<span class="c"># then edit .env:</span>
POSTGRES_PASSWORD=change-me
SAEBOOKS_SECRET_KEY=$(openssl rand -hex 32)
SAEBOOKS_PUBLIC_URL=http://localhost:8042
SAEBOOKS_EDITION=community   <span class="c"># free; no licence key</span></pre>
        </li>
        <li><strong>Pull and start.</strong>
<pre>docker compose pull
docker compose up -d
<span class="c"># app :8042 (API) &middot; web :8043 (UI) &middot; db :5432 (internal)</span></pre>
        </li>
        <li><strong>Migrate and seed the AU chart of accounts.</strong>
<pre>docker compose exec app alembic upgrade head
docker compose exec app python -m saebooks.scripts.bootstrap
<span class="c"># 135 accounts + standard AU tax codes, idempotent</span></pre>
        </li>
        <li><strong>Create your admin user, then log in.</strong>
<pre>docker compose exec app python -m saebooks.scripts.create_admin \
  --email you@example.com --name "Your Name"
<span class="c"># open http://localhost:8042 — it walks you through your first company</span></pre>
        </li>
      </ol>
      <div style="text-align:center;">
        <a href="https://dev.saebooks.com.au/install" class="btn btn-primary">Full install guide &mdash; TLS, backups, hardening
          <svg class="lucide" viewBox="0 0 24 24" style="width:14px;height:14px;"><path d="M5 12h14M13 5l7 7-7 7"/></svg>
        </a>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">What you get free</span>
      <h2>The Community edition is the full core ledger.</h2>
      <p>Single-company, self-hosted, AGPLv3. Same codebase as the paid tiers &mdash; runtime-flagged for what you need.</p>
    </div>
    <div class="feature-grid">
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M4 4h16v4H4zM4 12h16M4 18h10"/></svg></div><h4>Chart of accounts, journals, GL</h4><p>Full double-entry general ledger with the AU standard chart of accounts pre-loaded.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"/><rect x="8" y="2" width="8" height="4" rx="1"/></svg></div><h4>Sales, purchases, contacts</h4><p>Invoices, quotes, bills and a contact ledger &mdash; the full AR/AP workflow.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M3 3v18h18"/><path d="M7 14l4-4 4 4 5-5"/></svg></div><h4>Bank reconciliation</h4><p>Reconcile against statement imports; OFX/CSV in, matched transactions out.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M9 11l3 3L22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/></svg></div><h4>GST / BAS report generation</h4><p>BAS labels from the Odoo AU localisation. Generate, review, lodge via the ATO portal.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg></div><h4>Full export</h4><p>CSV, JSON, OFX, QIF, or a complete Postgres dump &mdash; your data, on demand.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M9 12l2 2 4-4"/></svg></div><h4>Immutable audit ledger</h4><p>Every posting is append-only and traceable. Period locks keep closed months closed.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M3 5v14a9 3 0 0 0 18 0V5"/></svg></div><h4>Runs on Postgres 14+</h4><p>Bring your own Postgres, or use the bundled image for a one-box setup.</p></div>
      <div class="tile"><div class="icon"><svg class="lucide" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><path d="M8 12h8"/></svg></div><h4>No licence key, no nag screens</h4><p>The Community binary just runs. Paid features are flag-gated in the same image.</p></div>
    </div>
  </div>
</section>

<section class="subtle" id="self-host-vs-hosted">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Run it your way</span>
      <h2>Self-host, or let us run it.</h2>
    </div>
    <div class="split">
      <div class="split-card">
        <div class="icon" style="width:32px;height:32px;"><svg class="lucide" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="8" rx="2" ry="2"/><rect x="2" y="14" width="20" height="8" rx="2" ry="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg></div>
        <h3>Run it yourself</h3>
        <p><code>docker compose up</code>. Postgres bundled, or bring your own 14+. Any OIDC provider for SSO. Ships with a backup runbook. Free, forever, AGPLv3.</p>
        <pre>$ docker compose up -d
&#10003; saebooks-app   started on :8042
&#10003; saebooks-web   started on :8043
&#10003; postgres       healthy
&#10003; migrations     applied (head)</pre>
        <a href="https://dev.saebooks.com.au/install" class="btn btn-secondary">Read the install guide
          <svg class="lucide" viewBox="0 0 24 24" style="width:14px;height:14px;"><path d="M5 12h14M13 5l7 7-7 7"/></svg>
        </a>
      </div>
      <div class="split-card" style="background: var(--brand-navy); color: #fff; border-color: var(--brand-navy);">
        <div class="icon" style="width:32px;height:32px;color:#fff;"><svg class="lucide" viewBox="0 0 24 24"><path d="M17.5 19H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z"/></svg></div>
        <h3 style="color:#fff;">Or let us run it</h3>
        <p style="color: rgba(255,255,255,0.85);">Same code, signed releases, off-site backup, SSO, Australian data residency. Pay monthly or annually &mdash; and cancel any time with a full DB dump in hand.</p>
        <ul style="color:rgba(255,255,255,0.85);font-size:14px;line-height:1.9;list-style:none;padding:0;margin:0 0 20px;">
          <li>&middot; Hourly snapshot &middot; 30-day retention</li>
          <li>&middot; Cairns, QLD data residency</li>
          <li>&middot; Authentik SSO included</li>
          <li>&middot; Migration assistance from Xero / MYOB</li>
        </ul>
        <a href="/#editions" class="btn" style="background:#fff;color:var(--brand-navy);">See hosted plans
          <svg class="lucide" viewBox="0 0 24 24" style="width:14px;height:14px;"><path d="M5 12h14M13 5l7 7-7 7"/></svg>
        </a>
      </div>
    </div>
  </div>
</section>

<section id="self-host-faq">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">FAQ</span>
      <h2>Self-hosting, answered.</h2>
    </div>
    <div class="faq-wrap">
      <details class="faq" open>
        <summary>What does AGPLv3 mean for my business?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Run it however you want &mdash; internally, with clients, anywhere. The licence only kicks in if you modify the code and offer the modified version as a network service to others. Most users will never trigger it. SAE Books is dual-licensed: AGPLv3 for self-host, commercial licence for anyone who needs to ship a proprietary fork. Forking under AGPL is fine; calling your fork &ldquo;SAE Books&rdquo; is not.</p>
      </details>
      <details class="faq">
        <summary>Can I get my data out?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Always. Export to CSV, JSON, OFX, QIF, or a full Postgres dump from the Settings &rarr; Export screen &mdash; importable into a fresh instance with one command. Data portability is a first-class feature, not a goodbye gift.</p>
      </details>
      <details class="faq">
        <summary>How do upgrades work?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Tagged Docker images. <code>docker compose pull &amp;&amp; up -d</code>; migrations run on boot. We test every migration against a parallel-run copy of Richard&rsquo;s own live books before publishing &mdash; so if it eats your data, it eats his first.</p>
      </details>
      <details class="faq">
        <summary>What if something goes wrong?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Community support is GitHub issues plus the forum at <a href="https://discourse.saebooks.com.au">discourse.saebooks.com.au</a> &mdash; mostly self-supported. And because your books are a Postgres database, any DBA on the planet can help you in a pinch. Nothing is locked in a vendor format.</p>
      </details>
      <details class="faq">
        <summary>Is the Cashbook bundle a different product?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>No &mdash; it's the same Community binary pre-configured for sole traders: cash-basis mode, single-user lock, sole-trader chart of accounts. Flip one config flag and you're on full accrual double-entry. Same data, same server. <a href="/cashbook">See the Cashbook bundle &rarr;</a></p>
      </details>
    </div>
  </div>
</section>

<section class="band">
  <div class="container" style="max-width:760px;text-align:center;">
    <span class="eyebrow brand">Status</span>
    <h2>Pre-1.0 &mdash; and honest about it.</h2>
    <p class="lede" style="color:var(--body);font-size:var(--fs-lead);line-height:1.7;">SAE Books is in private development, approaching its first public beta. It runs today &mdash; the Community edition is real, the demo is live &mdash; but it is not yet generally available and APIs may still shift before 1.0. Self-host it, kick the tyres, and tell us what breaks. Licence: AGPLv3 (self-host) + commercial dual licence.</p>
    <div class="hero-ctas" style="justify-content:center;margin-top:28px;">
      <a href="https://github.com/saebooks/saebooks" target="_blank" rel="noopener" class="btn btn-primary btn-lg">Download from GitHub</a>
      <a href="/preview-access" class="btn btn-secondary btn-lg">Request preview access</a>
    </div>
  </div>
</section>

<footer class="site-footer">
  <div class="container">
    <div class="foot-grid">
      <div class="foot-brand">
        <a href="/" class="wordmark"><img src="/user/data/sae-books-logo.png" alt="SAE Books" style="height:40px;"></a>
        <p class="blurb">An API-first accounting ledger for Australian small business. Free Community edition for self-host &mdash; your books, your Postgres, your control. AGPLv3, owned by you.</p>
      </div>
      <div class="foot-col">
        <h5>Self-host</h5>
        <ul>
          <li><a href="https://github.com/saebooks/saebooks" target="_blank" rel="noopener">GitHub repo</a></li>
          <li><a href="https://dev.saebooks.com.au/getting-started/quickstart/">Quickstart</a></li>
          <li><a href="https://dev.saebooks.com.au/install">Install guide</a></li>
          <li><a href="https://cashbook-demo.saebooks.com.au" target="_blank" rel="noopener">Live demo</a></li>
        </ul>
      </div>
      <div class="foot-col">
        <h5>Build</h5>
        <ul>
          <li><a href="https://dev.saebooks.com.au">Docs</a></li>
          <li><a href="https://discourse.saebooks.com.au">Forum</a></li>
          <li><a href="/blog">Build log</a></li>
          <li><a href="/#editions">Pricing &amp; plans</a></li>
        </ul>
      </div>
      <div class="foot-col">
        <h5>Company</h5>
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="/preview-access">Contact</a></li>
          <li><a href="https://www.gnu.org/licenses/agpl-3.0.en.html" target="_blank" rel="noopener">Licence (AGPLv3)</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>
