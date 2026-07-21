---
metadata:
    description: 'Tour SAE Books — cashbook, invoicing, time tracking, BAS worksheet, chart of accounts and reports. Self-hosted double-entry accounting for Australian small business.'
header_active: product
title: 'Inside SAE Books — the whole product'
menu: 'Product'
body_classes: 'page product-page'
autoseo:
    enabled: false
process:
    twig: true
---

<section class="hero">
  <div class="container">
    <div>
      <span class="eyebrow brand">The whole product</span>
      <h1>A complete accounting product. And it's yours.</h1>
      <p class="lead">Cashbook to payroll to BAS &mdash; the full double-entry stack in one app you run. Here's what's actually inside, shot from the live demo. Every screen is a thin client over the same public REST API, on a database you own.</p>
      <div class="hero-ctas">
        <a href="https://cashbook-demo.saebooks.com.au" class="btn btn-primary btn-lg" target="_blank" rel="noopener">Try the live demo
          <svg class="lucide" viewBox="0 0 24 24" style="width:14px;height:14px;"><path d="M5 12h14M13 5l7 7-7 7"/></svg>
        </a>
        <a href="/self-host" class="btn btn-secondary btn-lg">Self-host free</a>
        <a href="/preview-access" class="btn btn-secondary btn-lg">Request access</a>
      </div>
    </div>
  </div>
</section>

<section class="band">
  <div class="container">
    <div class="tour">

      <div class="tour-row">
        <div class="tour-text">
          <span class="eyebrow brand">Cashbook</span>
          <h2 class="big">Money in, money out &mdash; the fast way in.</h2>
          <p>Log income and expenses in seconds, tag GST, watch the month total move. It's the sole-trader on-ramp to a full double-entry ledger &mdash; flip to accrual whenever you're ready, same data, same server.</p>
        </div>
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/cashbook" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-cashbook-light.png" alt="SAE Books cashbook — cash in / cash out with recent entries and this-month totals"><img class="shot-dark" src="/user/data/screenshots/tour-cashbook-dark.png" alt="" aria-hidden="true"></a>
        </figure>
      </div>

      <div class="tour-row flip">
        <div class="tour-text">
          <span class="eyebrow brand">Invoicing &amp; receivables</span>
          <h2 class="big">Get paid &mdash; and see who hasn't.</h2>
          <p>Quotes, invoices, credit notes, recurring &mdash; draft to open to paid, with one-field ABR lookup on contacts and aged-receivables reporting. The whole AR side, not a bolt-on.</p>
        </div>
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/invoices" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-invoices-light.png" alt="SAE Books invoices — draft, open and due-soon invoices with AUD totals"><img class="shot-dark" src="/user/data/screenshots/tour-invoices-dark.png" alt="" aria-hidden="true"></a>
        </figure>
      </div>

      <div class="tour-row">
        <div class="tour-text">
          <span class="eyebrow brand">Time tracking</span>
          <h2 class="big">Hours in the grid, straight onto an invoice.</h2>
          <p>Log billable hours by day and project on a weekly grid, then turn the billable ones into a draft invoice line &mdash; rate snapshotted at entry. No re-keying your week.</p>
        </div>
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/time-entries/week" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-timesheet-light.png" alt="SAE Books weekly time grid — log billable hours by day and project"><img class="shot-dark" src="/user/data/screenshots/tour-timesheet-dark.png" alt="" aria-hidden="true"></a>
        </figure>
      </div>

    </div>
  </div>
</section>

<div class="payroll-callout">
  <div class="icon"><svg class="lucide" viewBox="0 0 24 24" style="width:26px;height:26px;"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>
  <div>
    <h3>Payroll &amp; STP Phase 2</h3>
    <p>Pay runs, super, leave accrual and STP Phase 2 payload assembly &mdash; from the Business tier. Honest status: payroll is in beta, so verify the ATO tax-table coefficients before you run it live.</p>
  </div>
</div>

<section>
  <div class="container">
    <div class="tour">
      <div class="tour-row flip">
        <div class="tour-text">
          <span class="eyebrow brand">GST &amp; BAS</span>
          <h2 class="big">A BAS that builds itself.</h2>
          <p>G1 through G11, 1A/1B net GST &mdash; the worksheet computes from your books, ready to review and lodge via the ATO portal. Australian tax isn't an add-on here; it's baked into the chart of accounts and tax codes from the Odoo AU localisation.</p>
        </div>
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/reports/bas-summary" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-bas-light.png" alt="SAE Books BAS worksheet — G1 to G11, 1A/1B net GST"><img class="shot-dark" src="/user/data/screenshots/tour-bas-dark.png" alt="" aria-hidden="true"></a>
        </figure>
      </div>
    </div>
  </div>
</section>

<section class="subtle">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">The full ledger</span>
      <h2>A platform first. A BAS app second.</h2>
      <p>Underneath the friendly screens is a real double-entry engine: the AU-standard chart of accounts, journals, period locks, an immutable audit trail, multi-company, and FX revaluation &mdash; with a reports library that goes well past the basics.</p>
    </div>
    <div class="tour">
      <div class="tour-shots-2">
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/accounts" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-accounts-light.png" alt="SAE Books chart of accounts — the AU standard, by account type"><img class="shot-dark" src="/user/data/screenshots/tour-accounts-dark.png" alt="" aria-hidden="true"></a>
          <figcaption style="font-size:var(--fs-small);color:var(--muted);padding:10px 14px;border-top:1px solid var(--border);margin:0;">Chart of accounts &mdash; the AU standard, by type.</figcaption>
        </figure>
        <figure class="tour-shot shot-frame">
          <a href="https://cashbook-demo.saebooks.com.au/reports" target="_blank" rel="noopener"><img class="shot-light" src="/user/data/screenshots/tour-reports-light.png" alt="SAE Books reports library — P&L, balance sheet, BAS, aged receivables, FX revaluation"><img class="shot-dark" src="/user/data/screenshots/tour-reports-dark.png" alt="" aria-hidden="true"></a>
          <figcaption style="font-size:var(--fs-small);color:var(--muted);padding:10px 14px;border-top:1px solid var(--border);margin:0;">Reports &mdash; P&amp;L, Balance Sheet, Aged AR/AP, Budget vs Actual, FX.</figcaption>
        </figure>
      </div>
    </div>
  </div>
</section>

<section id="yours">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">And it's all yours</span>
      <h2>Every screen above is just one client.</h2>
      <p>The web app is a thin client over a public REST API &mdash; the same endpoints your scripts hit. Your books live in a database you control, exportable in full at any time. No vendor can revoke access to your own ledger.</p>
    </div>
    <div style="text-align:center;margin:-24px auto 8px;max-width:720px;">
      <span class="pill">REST &middot; OpenAPI &middot; Webhooks</span>
      <span class="pill">Your database</span>
      <span class="pill">Full export (CSV/JSON/OFX/dump)</span>
      <span class="pill">AGPLv3</span>
      <span class="pill">Australian data residency</span>
      <span class="pill">Flat pricing</span>
    </div>
    <div class="hero-ctas" style="justify-content:center;margin-top:28px;">
      <a href="/self-host" class="btn btn-primary btn-lg">Self-host free</a>
      <a href="/preview-access" class="btn btn-secondary btn-lg">Request preview access</a>
      <a href="https://dev.saebooks.com.au" class="btn btn-secondary btn-lg">Read the API docs</a>
    </div>
  </div>
</section>

<footer class="site-footer">
  <div class="container">
    <div class="foot-grid">
      <div class="foot-brand">
        <a href="/" class="wordmark"><img src="/user/data/sae-books-logo.png" alt="SAE Books" style="height:40px;"></a>
        <p class="blurb">An API-first accounting ledger for Australian small business. The whole double-entry stack &mdash; cashbook to payroll to BAS &mdash; in one app you own. AGPLv3.</p>
      </div>
      <div class="foot-col">
        <h5>Product</h5>
        <ul>
          <li><a href="/product">Inside SAE Books</a></li>
          <li><a href="/cashbook">Cashbook bundle</a></li>
          <li><a href="https://cashbook-demo.saebooks.com.au" target="_blank" rel="noopener">Live demo</a></li>
          <li><a href="/#editions">Pricing &amp; plans</a></li>
        </ul>
      </div>
      <div class="foot-col">
        <h5>Build</h5>
        <ul>
          <li><a href="https://dev.saebooks.com.au">Docs</a></li>
          <li><a href="https://discourse.saebooks.com.au">Forum</a></li>
          <li><a href="https://github.com/saebooks/saebooks" target="_blank" rel="noopener">GitHub</a></li>
          <li><a href="/self-host">Self-host</a></li>
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
