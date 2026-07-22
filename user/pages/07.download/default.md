---
metadata:
    description: 'Download the free SAE Books Community edition — full double-entry accounting, cashbook mode, self-hosted, AGPLv3. One-click server, desktop app, or Docker. Australian small business.'
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
      <p class="lead">This is the same double-entry ledger the paid tiers run on &mdash; chart of accounts, invoicing, bills, bank reconciliation, GST/BAS reporting, payroll, time tracking &mdash; with the Community flag set. Download one file, run it, and the full server with its web interface is on your machine &mdash; no Docker, no command line. Own the database underneath it, and never see a nag screen.</p>
      <div class="hero-ctas">
        <a href="#one-click" class="btn btn-primary btn-lg">One-click server</a>
        <a href="#desktop" class="btn btn-secondary btn-lg">Desktop app</a>
        <a href="https://cashbook-demo.saebooks.com.au" class="btn btn-secondary btn-lg" target="_blank" rel="noopener">Try it in the browser first</a>
      </div>
      <div class="hero-meta">
        <span class="pill"><span class="dot"></span>Free &middot; AGPLv3</span>
        <span class="pill">Full double-entry included</span>
        <span class="pill">Cashbook mode for sole traders</span>
        <span class="pill">Your data, your machine</span>
      </div>
    </div>
  </div>
</section>

<section class="band" id="one-click">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Install path one &mdash; recommended</span>
      <h2>One-click server. Download one thing, run it.</h2>
      <p>A single file that runs the complete SAE Books server &mdash; the accounting engine, the web interface, and a bundled SQLite database &mdash; on your own computer. No Docker, no installer, no command line on Windows. First run seeds a set of starter books and opens the web interface in your browser; your data stays on your machine and survives restarts.</p>
    </div>
    <div class="feature-grid install-grid">
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="8" rx="2"/><rect x="2" y="14" width="20" height="8" rx="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg></div>
        <h4>Linux &mdash; x86_64</h4>
        <p>One binary. Mark it executable and run it; your browser opens on the starter books.</p>
        <a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SAEBooks-linux-x86_64" class="btn btn-primary" style="margin-top:12px;">Download SAE Books server &mdash; Linux (72&nbsp;MB)</a>
        <p class="note" style="margin-top:8px;"><code>chmod +x SAEBooks-linux-x86_64 &amp;&amp; ./SAEBooks-linux-x86_64</code></p>
        <p class="note" style="margin-top:8px;"><a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SHA256SUMS">SHA-256 checksums</a> for this file.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect width="18" height="18" x="3" y="3" rx="2"/><path d="M9 3v18"/></svg></div>
        <h4>Windows &mdash; x64</h4>
        <p>One .exe. Double-click it; your browser opens on the starter books.</p>
        <a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SAEBooks-windows-x64.exe" class="btn btn-primary" style="margin-top:12px;">Download SAE Books server &mdash; Windows (56&nbsp;MB)</a>
        <p class="note" style="margin-top:8px;">Not yet code-signed, so Windows SmartScreen shows a &ldquo;Windows protected your PC&rdquo; notice on first run &mdash; click <em>More info &rarr; Run anyway</em>. Verify against the <a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SHA256SUMS">SHA-256 checksums</a> first.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M12 20.94c1.5 0 2.75 1.06 4 1.06 3 0 6-8 6-12.22A4.91 4.91 0 0 0 17 5c-2.22 0-4 1.44-5 2-1-.56-2.78-2-5-2a4.9 4.9 0 0 0-5 4.78C2 14 5 22 8 22c1.25 0 2.5-1.06 4-1.06Z"/><path d="M10 2c1 .5 2 2 2 5"/></svg></div>
        <h4>macOS &mdash; Apple Silicon</h4>
        <p>One binary for Apple Silicon (arm64) Macs. Mark it executable and run it; your browser opens on the starter books.</p>
        <a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SAEBooks-macos-arm64" class="btn btn-primary" style="margin-top:12px;">Download SAE Books server &mdash; macOS (56&nbsp;MB)</a>
        <p class="note" style="margin-top:8px;"><code>chmod +x SAEBooks-macos-arm64 &amp;&amp; ./SAEBooks-macos-arm64</code></p>
        <p class="note" style="margin-top:8px;">Ad-hoc signed, not notarized &mdash; on first run clear the download flag (<code>xattr -d com.apple.quarantine SAEBooks-macos-arm64</code>) or right-click &rarr; <em>Open</em>. Verify against the <a href="https://github.com/saebooks/saebooks/releases/download/v0.6/SHA256SUMS">SHA-256 checksums</a> first.</p>
      </div>
    </div>
    <p class="note" style="margin-top:16px;">All server downloads live on the <a href="https://github.com/saebooks/saebooks/releases">SAE Books releases page</a>. This is beta software &mdash; keep your own backups.</p>
  </div>
</section>

<section id="desktop">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Install path two</span>
      <h2>Desktop app <span style="white-space:nowrap;">(v0.4)</span> &mdash; connects to your server.</h2>
      <p>A native desktop client for Windows and Linux. Run the one-click server above on the same machine and the desktop app&rsquo;s first-run wizard finds it and pairs with it automatically &mdash; or point it at a SAE Books server anywhere else on your network.</p>
    </div>
    <div class="feature-grid install-grid">
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect x="2" y="2" width="20" height="8" rx="2"/><rect x="2" y="14" width="20" height="8" rx="2"/><line x1="6" y1="6" x2="6.01" y2="6"/><line x1="6" y1="18" x2="6.01" y2="18"/></svg></div>
        <h4>Linux &mdash; AppImage</h4>
        <p>Download, mark executable, run. No installer, no root needed.</p>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SAEBooks-0.4.0-x86_64.AppImage" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.4.0 &mdash; AppImage (95&nbsp;MB)</a>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/tasur-0.4.0-x86_64.AppImage" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur (eesti/&#1088;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;) &mdash; AppImage</a>
        <p class="note" style="margin-top:8px;">Verify your download against the <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SHA256SUMS">SHA-256 checksums</a>. All releases live on the <a href="https://github.com/saebooks/saebooks-desktop/releases">GitHub releases page</a>.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect width="18" height="18" x="3" y="3" rx="2"/><path d="M9 3v18"/></svg></div>
        <h4>Windows &mdash; MSI</h4>
        <p>v0.4 installs and runs on a clean machine &mdash; the runtime is now bundled, with Start-menu and desktop shortcuts.</p>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SAEBooks-0.4.0-x64.msi" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.4.0 &mdash; Windows (48&nbsp;MB)</a>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/tasur-0.4.0-x64.msi" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur &mdash; Windows</a>
        <p class="note" style="margin-top:8px;">The installer is not yet code-signed, so Windows SmartScreen shows a &ldquo;Windows protected your PC&rdquo; notice on first run &mdash; click <em>More info &rarr; Run anyway</em>. Verify against the <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SHA256SUMS">SHA-256 checksums</a>.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M12 20.94c1.5 0 2.75 1.06 4 1.06 3 0 6-8 6-12.22A4.91 4.91 0 0 0 17 5c-2.22 0-4 1.44-5 2-1-.56-2.78-2-5-2a4.9 4.9 0 0 0-5 4.78C2 14 5 22 8 22c1.25 0 2.5-1.06 4-1.06Z"/><path d="M10 2c1 .5 2 2 2 5"/></svg></div>
        <h4>macOS &mdash; universal2</h4>
        <p>v0.4 universal2 DMG (Apple Silicon + Intel). Open the disk image and drag the app into Applications.</p>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SAEBooks-0.4.0-universal2.dmg" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.4.0 &mdash; macOS (135&nbsp;MB)</a>
        <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/tasur-0.4.0-universal2.dmg" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur &mdash; macOS</a>
        <p class="note" style="margin-top:8px;">Ad-hoc signed, not notarized &mdash; Gatekeeper blocks the first open: right-click the app &rarr; <em>Open</em> &rarr; <em>Open</em>, once. Requires macOS 13 (Ventura) or later. Verify against the <a href="https://github.com/saebooks/saebooks-desktop/releases/download/v0.4/SHA256SUMS">SHA-256 checksums</a>.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><rect width="14" height="20" x="5" y="2" rx="2"/><path d="M12 18h.01"/></svg></div>
        <h4>Android &mdash; APK</h4>
        <p>The cashbook and ledger on your phone. Sideload the signed APK.</p>
        <a href="https://github.com/saebooks/saebooks-android-releases/releases/download/v0.3.0/SAEBooks-0.3.0-release.apk" class="btn btn-primary" style="margin-top:12px;">Download SAE Books 0.3.0 &mdash; Android</a>
        <a href="https://github.com/saebooks/saebooks-android-releases/releases/download/v0.3.0/tasur-0.3.0-release.apk" class="btn btn-secondary" style="margin-top:12px;margin-left:8px;">tasur &mdash; Android</a>
        <p class="note" style="margin-top:8px;">Not yet on Google Play &mdash; enable install from your browser when prompted. Verify against the <a href="https://github.com/saebooks/saebooks-android-releases/releases/download/v0.3.0/SHA256SUMS">SHA-256 checksums</a>.</p>
      </div>
    </div>
  </div>
</section>

<section class="band" id="single-command">
  <div class="container">
    <div class="sh">
      <span class="eyebrow brand">Install path three</span>
      <h2>Docker compose.</h2>
      <p>Prefer containers? One compose file, running locally in a couple of minutes. This is the path for a spare machine or small VPS; for TLS, backups and production hardening use the <a href="/self-host">full self-host guide</a> instead.</p>
    </div>
    <div class="install">
      <div class="payroll-callout">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24" style="width:26px;height:26px;"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <div>
          <h3>One command, running in a couple of minutes.</h3>
          <p>The published community images &mdash; <code>saebooks/saebooks-community-api</code> and <code>saebooks/saebooks-community-web</code> &mdash; start the engine, the web application, and a bundled SQLite database. It opens on <code>http://127.0.0.1:18960</code>.</p>
        </div>
      </div>
      <ol>
        <li><strong>Run the image.</strong>
<pre><span class="c"># downloads the compose file and starts the engine + web app</span>
curl -fsSLO https://raw.githubusercontent.com/saebooks/saebooks/main/docker-compose.community.yml
docker compose -f docker-compose.community.yml up -d</pre>
        </li>
        <li><strong>Open it in your browser.</strong>
<pre>open http://127.0.0.1:18960
<span class="c"># sign in with the starter books — see SAEBOOKS_DEMO_* in the compose file</span></pre>
        </li>
        <li><strong>That's it.</strong> The database (SQLite) is bundled inside the image for this path &mdash; no separate Postgres to install. Your data lives in a Docker volume; back that up like any other Docker volume.</li>
      </ol>
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
        <p>Runs on your own server, your own laptop, or a small VPS &mdash; on a database you control. Nothing phones home that you haven&rsquo;t opted into.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 12c-1 0-3-1-3-3s2-3 3-3-2-3-3-3-3 2-3 3-2-3-3-3-3 2-3 3 2 3 3 3-2 3-3 3 2 3 3 3 3-2 3-3 2 3 3 3 3-2 3-3z"/></svg></div>
        <h4>AGPLv3, no strings</h4>
        <p>Source is open. Self-compile and flip the licence flag if you want to see how it works &mdash; that&rsquo;s what AGPL means. No key server, no phone-home licence check.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg></div>
        <h4>Your data, your server</h4>
        <p>Full export any time &mdash; CSV, JSON, OFX, QIF, or a complete database dump. Nothing about the free edition is designed to make leaving hard.</p>
      </div>
      <div class="tile">
        <div class="icon"><svg class="lucide" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><path d="M8 12h8"/></svg></div>
        <h4>No licence key, no nag screens</h4>
        <p>The Community binary just runs. Paid-tier features stay flag-gated in the same image &mdash; described below, not hidden from you, just not switched on.</p>
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
        <p>For the one-click server: a 64-bit Linux or Windows machine and a spare gigabyte of disk &mdash; nothing else to install. For the Docker path: Docker Engine 24 or newer and outbound HTTPS for the first pull. A cheap VPS or an old laptop is plenty for a single company&rsquo;s books.</p>
      </details>
      <details class="faq">
        <summary>Is this the same thing as the self-host guide?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>Same Community codebase, different packaging. This page is the fastest way to get it running &mdash; one file, a desktop app, or one compose command. The <a href="/self-host">self-host page</a> covers the full compose stack with TLS, backups, and hardening for a production server. Start here, move there when you&rsquo;re ready to run it for real.</p>
      </details>
      <details class="faq">
        <summary>Why does my OS warn me about the download?<span class="chev"><svg class="lucide" viewBox="0 0 24 24" style="width:18px;height:18px;"><polyline points="6 9 12 15 18 9"/></svg></span></summary>
        <p>The binaries are not yet code-signed (Windows) or notarized (macOS), so SmartScreen and Gatekeeper flag them on first run. That&rsquo;s a signing-certificate gap, not a verdict on the software &mdash; and you don&rsquo;t have to take our word for it: every artifact ships with a SHA-256 checksum linked beside its download button, published on the GitHub release built from the open source.</p>
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
        <p class="blurb">An API-first accounting ledger for Australian small business. Free Community edition &mdash; your books, your database, your control. AGPLv3, owned by you.</p>
      </div>
      <div class="foot-col">
        <h5>Get started</h5>
        <ul>
          <li><a href="#one-click">One-click server</a></li>
          <li><a href="#desktop">Desktop app</a></li>
          <li><a href="#single-command">Docker compose</a></li>
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
