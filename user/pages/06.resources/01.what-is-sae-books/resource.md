---
title: 'What Is SAE Books? An API-First Ledger You Actually Own'
menu: 'What Is SAE Books'
date: '2026-06-03 09:00'
template: resource
category: 'Guide · The basics'
read_time: '~5 min read'
dek: 'Most accounting software rents you access to your own books. SAE Books is the opposite bet: a double-entry ledger built API-first, self-hosted by default, and open source — so the numbers that run your business live on infrastructure you control.'
metadata:
    description: 'SAE Books is an API-first, self-hosted, open-source double-entry accounting ledger for Australian small business — GST, BAS and STP Phase 2 built in. Your books, your database, your control.'
taxonomy:
    category: [resources]
    tag: [self-hosting, api-first, open-source, double-entry]
sources:
    - { label: 'SAE Books developer documentation', url: 'https://dev.saebooks.com.au' }
    - { label: 'Source code (AGPLv3)', url: 'https://github.com/saebooks/saebooks' }
    - { label: 'Live demo (Cashbook)', url: 'https://cashbook-demo.saebooks.com.au' }
    - { label: 'GNU Affero General Public License v3', url: 'https://www.gnu.org/licenses/agpl-3.0.en.html' }
autoseo:
    enabled: false
---

Every small business eventually meets the same wall. The books are essential — the GST you owe, the wages you paid, the invoices still outstanding — and yet they live somewhere you do not control. A subscription lapses, a card is declined, an account is flagged for review, and the ledger you built over years is suddenly on the far side of a paywall. You did the work. Someone else holds the keys.

SAE Books exists because of that wall. It is accounting software built on a single, stubborn premise: the data that runs your business should live on infrastructure you own and can carry. Not rented. Not held hostage. Not switch-off-able by anyone but you.

> A ledger that cannot be switched off — because you own the code, host the data, and hold the keys.

## API-first, not API-eventually

Most accounting platforms bolt an API on years after the fact, and it shows: half the things you can do in the screens, you cannot do in the API. SAE Books is built the other way around. Every screen is a thin client over a **public REST API** — the same API your own scripts, integrations and automations call. There is no hidden second system. If the app can do it, your code can do it, because the app *is* just code calling the same endpoints you can.

For anyone who automates — importing bank feeds, raising invoices from a job system, reconciling on a schedule — that is the difference between a tool you operate and a tool you can build on.

## Australian to the core

SAE Books is built for Australian small business, not adapted to it. **GST** tracking and the **BAS** worksheet, **STP Phase 2** payroll reporting, the standard Australian chart of accounts, PAYG, superannuation — these are built in, not plugins you bolt on and hope stay current. The compliance shape of the country sits inside the product rather than around it.

## Double-entry, with an audit trail that does not lie

Underneath the friendly screens is a real double-entry general ledger — debits and credits that must balance, the same discipline an accountant trusts. Every change is written to an **immutable audit log**: you can see what happened, when, and what it touched. And nothing is ever hostage — full export to CSV, JSON, OFX and a complete database dump is a first-class feature, not a favour. Your numbers are yours to take, any day, in formats you can actually use.

## Self-hosted by default, open source by design

The Community edition is **free and open source under the AGPLv3**. It runs on your server, against your own PostgreSQL database. The paid tiers — Business, Pro, Enterprise — are not a different program; they are runtime flags on the *same* binary. Self-compile, flip the flag, and run the lot. That is what AGPL means: not a trial, not a teaser, but software you can read, change, host and own outright.

There is a sole-trader bundle too — [Cashbook](/cashbook) — the same Community engine pre-configured for cash-basis simplicity, free for life. Start there, switch to full accrual with one setting when you outgrow it.

## Where it is today — honestly

SAE Books is a young product, and the honest version matters more than the polished one. The **Community edition is available now** to self-host. The hosted editions are in **private beta** — access by request while they are hardened. Some advanced features (direct ATO lodgement, bank feeds) are early-access. You can see exactly where things stand on the [build log](/blog), and you can try the whole product right now in the [live demo](https://cashbook-demo.saebooks.com.au) — real screens, real data, no sign-up.

## The one-sentence version

SAE Books is an API-first, self-hosted, open-source accounting ledger for Australian small business — built so that the books that run your business answer to you, and stay yours, no matter who you stop paying.

[Self-host it free](/self-host) · [Open the live demo](https://cashbook-demo.saebooks.com.au)
