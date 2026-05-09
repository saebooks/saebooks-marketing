---
title: 'Why we''re building accounting software for the next twenty years, not the last twenty'
date: '09-05-2026 00:30'
taxonomy:
    tag: [build-log, architecture, marketing]
    category: build-log
template: item
autoseo:
    enabled: false
body_classes: blog-page
---

The dinosaurs of small-business accounting didn't die because their bookkeeping was wrong. They died because the world moved underneath them and they couldn't move with it.

If you've used the big-name cloud books for any length of time, you already know the shape of the problem. The data lives somewhere you can't see. The integrations work until the day they don't. The price goes up every year. New features arrive on a roadmap you don't control, and the features you actually wanted are paywalled into a tier you can't justify. When the vendor changes hands, gets bought, or quietly deprecates the API your business depends on, you find out after the fact.

That's the dinosaur shape. It worked for a decade. It's not going to work for the next one.

We've been building something different.

## What changed today, the ninth of May

This week we cut the public alpha of SAE Books — `v0.1` on the eighth, `v0.1.1` going out tonight with the launch promo wired up, purchase orders, proration helpers, and two security fixes the critic carousel caught before they shipped. The repo is on GitHub under AGPL. The Docker images are on Docker Hub, multi-arch, ready to pull. The web tier is installable as a phone app already — open it in your browser, hit "Add to home screen," and it behaves like a native app, splash screen and all. The Android and iOS shells are scaffolded next to the web repo, pointed at a hosted URL, ready for App Store enrolment.

That's the surface. The surface isn't why we built this.

## The product is the API

Most accounting software is a website with an API bolted on the side. The website is the product; the API is a marketing checkbox. If you want to do anything interesting — pull your own data, build your own dashboards, integrate with the tool your business actually runs on — you discover the API is missing the half you need, throttled where it matters, or available only on the highest tier.

We inverted that. The API is the product. Everything else — the web app, the mobile app, the marketing site, the customer portal, the licence server, the lodgement relays — orbits the API. The schema is documented. The endpoints are stable. The auth is straightforward. If we ship a feature, it's available through the API on day one, because the API is what we built it on.

That single decision changes what you can do with your books. You can host your data on your own server, in your own jurisdiction, behind your own firewall. You can run your own dashboards. You can integrate your trade business, your retail shop, your professional practice, into a single source of truth that you own. You can change vendors — including us — without losing your history, because every byte of it is in a Postgres database you control.

That's not how the dinosaurs work. That's not how they can work, because their commercial model depends on you not being able to leave.

## Decisions we took today

A few worth calling out, because they say more about where we're heading than another feature list would.

**No hosted-cashbook product.** We've decided not to ship a SaaS cashbook tier — the lightweight bank-feed-only product the market has been asking for. The reason isn't that we can't build it. It's that the privacy story doesn't survive the architecture: a cashbook with bank-feeds requires us to hold raw banking data on our servers, and the whole point of SAE Books is that your financial data lives where you live, not in a vendor's warehouse. The community-tier full ledger does the same job for nothing, with the bank reconciliation running on your hardware. If you want a cashbook, install the community tier and use the cashbook view. If you want us to host it, we'd have to become the thing we're trying to replace.

**Decimal versioning, three segments maximum.** `0.1` is the alpha. `0.1.1` through `0.1.9` are alpha patches. `0.2` is the next minor. `0.9` is the beta cut. `1.0` is the general release. No `0.1.10`. No `0.10`. No four-segment `0.1.0.1`. If you've ever stared at `1.18.4-rc.3+build.55` trying to work out whether your install is the right version, you'll know why this matters.

**The architectural rewrite for the rest of the world.** Right now the engine knows Australian tax rules. New Zealand is next — same continent, similar GST shape, much smaller market but a clean second jurisdiction to prove the multi-country abstraction. After that, the United Kingdom; then Europe with its VAT and OSS regimes. The plan landed today: one schema with a jurisdiction discriminator, per-country tax engines as pluggable strategies, lodgement adapters per country pointing at one multi-tenant relay. Same product, four jurisdictions, no separate codebases.

## Where this fits

The big-name cloud books have spent a decade convincing small business that the trade-off — your data on their servers, their roadmap, their pricing power — is the price of modernity.

It isn't. It was the price of nineteen-nineties enterprise software companies pretending to be cloud-native. The next twenty years won't look like that. They'll look like this: open source where the licence allows it, on-prem where the data demands it, API-first where the integrations matter, and a single trust relationship between you and the people who write your software, not between you and a faceless billing system that owns your invoice history.

That's what we're building. Tonight is one more step. Tomorrow we'll be back at it.
