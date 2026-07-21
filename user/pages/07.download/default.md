---
metadata:
    description: 'Download the free SAE Books Community edition — full double-entry accounting, cashbook mode, self-hosted, AGPLv3. Single-command install or a desktop click-install. Australian small business.'
header_active: download
title: 'Download SAE Books free — Community edition'
menu: 'Download'
body_classes: 'page download-page'
autoseo:
    enabled: false
process:
    twig: true
---

<section class="hero">
  <div class="container">
    <div>
      <span class="eyebrow brand">Community edition &middot; AGPLv3 &middot; free forever</span>
      <h1>Get started free. No licence key, no clock running.</h1>
      <p class="lead">This is the same double-entry ledger the paid tiers run on &mdash; chart of accounts, invoicing, bills, bank reconciliation, GST/BAS reporting, payroll, time tracking &mdash; with the Community flag set. Run it on your own server or your own laptop, own the Postgres database underneath it, and never see a nag screen.</p>
      <div class="hero-ctas">
        <a href="#single-command" class="btn btn-primary btn-lg">Single-command install</a>
        <a href="#desktop" class="btn btn-secondary btn-lg">Desktop click-install</a>
        <a href="https://cashbook-demo.saebooks.com.au" class="btn btn-secondary btn-lg" target="_blank" rel="noopener">Try it in the browser first</a>
      </div>
      <div class="hero-meta">
        <span class="pill"><span class="dot"></span>Free &middot; AGPLv3</span>
        <span class="pill">Full double-entry included</span>
        <span class="pill">Cashbook mode for sole traders</span>
        <span class="pill">Your data, your server</span>
      </div>
    </div>
  </div>
</section>

<section id="whats-included">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">What you get, free</span>
      <h2>Nothing held back for later.</h2>
      <p>The Community edition isn&rsquo;t a trimmed demo &mdash; it&rsquo;s the same codebase as every paid tier, with the paid flags left off. Full accrual accounting today, or flip to cashbook mode with one setting if you're a sole trader who just wants cash in / cash out.</p>
    </div>
    <div class="feature-grid">
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M4 4h16v4H4zM4 12h16M4 18h10"/></svg></div>
        <h4>Full double-entry, included</h4>
        <p>Chart of accounts, journals, general ledger, sales, purchases, bank reconciliation, GST/BAS report generation &mdash; the whole ledger, not a stripped-down trial.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M3 21h18"/><path d="M5 21V7l8-4v18"/><path d="M19 21V11l-6-4"/></svg></div>
        <h4>Cashbook mode</h4>
        <p>Prefer cash in / cash out over full accrual? One config flag switches the same install to sole-trader defaults &mdash; same data, same server, switch back any time.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M3 5v14a9 3 0 0 0 18 0V5"/><path d="M3 12a9 3 0 0 0 18 0"/></svg></div>
        <h4>Self-hosted, by default</h4>
        <p>Runs on your own server, your own laptop, or a small VPS &mdash; on a Postgres database you control. Nothing phones home that you haven&rsquo;t opted into.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 12c-1 0-3-1-3-3s2-3 3-3-2-3-3-3-3 2-3 3-2-3-3-3-3 2-3 3 2 3 3 3-2 3-3 3 2 3 3 3 3-2 3-3 2 3 3 3 3-2 3-3z"/></svg></div>
        <h4>AGPLv3, no strings</h4>
        <p>Source is open. Self-compile and flip the licence flag if you want to see how it works &mdash; that&rsquo;s what AGPL means. No key server, no phone-home licence check.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg></div>
        <h4>Your data, your server</h4>
        <p>Full export any time &mdash; CSV, JSON, OFX, QIF, or a complete Postgres dump. Nothing about the free edition is designed to make leaving hard.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><path d="M8 12h8"/></svg></div>
        <h4>No licence key, no nag screens</h4>
        <p>The Community binary just runs. Paid-tier features stay flag-gated in the same image &mdash; described below, not hidden from you, just not switched on.</p>
      </div>
    </div>
  </div>
</section>

<section class="band" id="single-command">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Install path one</span>
      <h2>Single docker command.</h2>
      <p>One image, one command, running locally in a couple of minutes. This is the fast path for trying it out on a spare machine; for TLS, backups and production hardening use the <a href="/self-host">full self-host guide</a> instead.</p>
    </div>
    <div class="install">
      <div class="payroll-callout">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24" style="width:26px;height:26px;"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <div>
          <h3>Image name and tag &mdash; to be confirmed</h3>
          <p>One command starts the free community edition: the engine, the web application and a local database. It opens on http://127.0.0.1:18960.</p>
        </div>
      </div>
      <ol>
        <li><strong>Run the image.</strong>
<pre><span class="c"># downloads the compose file and starts the engine + web app</span>
curl -fsSLO https://raw.githubusercontent.com/saebooks/saebooks/main/docker-compose.community.yml
docker compose -f docker-compose.community.yml up -d</pre>
        </li>
        <li><strong>Open it and create your admin user.</strong>
<pre>open http://localhost:8042
<span class="c"># first-run wizard: admin user, company name, AU chart of accounts</span></pre>
        </li>
        <li><strong>That's it.</strong> Postgres is bundled inside the image for this path &mdash; nothing else to install. Your data lives in the <code>saebooks-data</code> volume; back that up like any other Docker volume.</li>
      </ol>
    </div>
  </div>
</section>

<section id="desktop">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Install path two</span>
      <h2>Desktop click-install.</h2>
      <p>Prefer a normal application over a terminal? Download and run &mdash; no Docker, no command line.</p>
    </div>
    <div class="feature-grid" style="grid-template-columns:repeat(2,1fr);">
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="8" rx="2"/><rect x="2" y="14" width="20" height="8" rx="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg></div>
        <h4>Linux &mdash; AppImage</h4>
        <p>Download, mark executable, run. No installer, no root needed.</p>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/SAEBooks-0.3.0-x86_64.AppImage" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.3.0 &mdash; AppImage</a>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/tasur-0.3.0-x86_64.AppImage" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur (eesti/русский) &mdash; AppImage</a>
        <p class="note" style="margin-top:8px;">Verify your download against the <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/SHA256SUMS-0.3.0.txt">published checksums</a>. All releases live on the <a href="https://github.com/saebooks/saebooks-desktop/releases">GitHub releases page</a>.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect width="18" height="18" x="3" y="3" rx="2"/><path d="M9 3v18"/></svg></div>
        <h4>Windows &mdash; MSI</h4>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/SAEBooks-0.3.0-x64.msi" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.3.0 &mdash; Windows</a>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/tasur-0.3.0-x64.msi" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur &mdash; Windows</a>
        <p class="note" style="margin-top:8px;">The installer is not yet code-signed, so Windows SmartScreen shows a &ldquo;Windows protected your PC&rdquo; notice on first run &mdash; click <em>More info &rarr; Run anyway</em>. Verify against the <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.3.0/SHA256SUMS-0.3.0.txt">checksums</a>.</p>
      </div>
    </div>
  </div>
</section>

<section class="subtle" id="system-notes">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Before you install</span>
      <h2>Honest system notes.</h2>
    </div>
    <div class="faq-wrap">
      <details class="faq" open>
        <summary>What do I need to run this?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>For the single-command install: Docker Engine 24 or newer, outbound HTTPS for the first-run bootstrap, and a spare gigabyte or two of disk for the bundled database. A cheap VPS or an old laptop is plenty for a single company&rsquo;s books.</p>
      </details>
      <details class="faq">
        <summary>Is this the same thing as the self-host guide?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Same Community codebase, different packaging. This page is the fastest way to get it running &mdash; one image, or a desktop app. The <a href="/self-host">self-host page</a> covers the full compose stack with TLS, backups, and hardening for a production server. Start here, move there when you&rsquo;re ready to run it for real.</p>
      </details>
      <details class="faq">
        <summary>What's not turned on in the free edition?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Services that need us to run infrastructure on your behalf &mdash; hosted bank feeds, direct BAS e-lodgement, managed hosting &mdash; are gated behind a licence flag until those services are ready. They&rsquo;re not hidden from you, just switched off in the Community build; the ledger itself is not limited. You can still lodge BAS via the ATO portal using the numbers SAE Books generates.</p>
      </details>
      <details class="faq">
        <summary>Is this pre-1.0 software?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Yes. SAE Books is approaching its first public beta; APIs may still shift before 1.0. It runs today and the demo is live, but kick the tyres before you trust it with anything that matters, and keep your own backups regardless of who hosts them.</p>
      </details>
    </div>
  </div>
</section>

<section class="band">
  <div class="container" style="max-width:760px;text-align:center;">
    <span class="eyebrow brand">Want us to run it instead?</span>
    <h2>Free covers self-hosting. Hosted plans are pre-order only, for now.</h2>
    <p class="lede" style="color:var(--body);font-size:var(--fs-lead);line-height:1.7;">If you'd rather not run your own server, the hosted editions are coming &mdash; priority access goes to businesses who pre-order a licence now. No launch date committed yet.</p>
    <div class="hero-ctas" style="justify-content:center;margin-top:28px;">
      <a href="/pre-order" class="btn btn-primary btn-lg">Pre-order a licence</a>
      <a href="/self-host" class="btn btn-secondary btn-lg">Full self-host guide</a>
    </div>
  </div>
</section>

<footer class="site-footer">
  <div class="container">
    <div class="foot-grid">
      <div class="foot-brand">
        <a href="/" class="wordmark"><img src="/user/data/sae-books-logo.png" alt="SAE Books" style="height:40px;"></a>
        <p class="blurb">An API-first accounting ledger for Australian small business. Free Community edition &mdash; your books, your Postgres, your control. AGPLv3, owned by you.</p>
      </div>
      <div class="foot-col">
        <h5>Get started</h5>
        <ul>
          <li><a href="#single-command">Single-command install</a></li>
          <li><a href="#desktop">Desktop click-install</a></li>
          <li><a href="/self-host">Full self-host guide</a></li>
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
          <li><a href="/pre-order">Pre-order a licence</a></li>
          <li><a href="https://www.gnu.org/licenses/agpl-3.0.en.html" target="_blank" rel="noopener">Licence (AGPLv3)</a></li>
        </ul>
      </div>
    </div>
  </div>
</footer>
