---
title: 'What a Valid Tax Invoice Needs Under Australian GST'
date: '2026-06-29 00:46'
template: resource
category: 'Guide'
hero: '/user/data/article-visuals/what-a-valid-tax-invoice-needs-under-australian-gst-hero.svg'
read_time: '~2 min read'
dek: 'Learn which fields make a tax invoice valid under Australian GST law, when one is required, and how SAE Books records compliant invoices via its API.'
metadata:
    description: 'Learn which fields make a tax invoice valid under Australian GST law, when one is required, and how SAE Books records compliant invoices via its API.'
taxonomy:
    category: [resources]
    tag: ['tax invoice', 'gst', 'accounts receivable', 'australian tax', 'small business', 'invoicing']
sources:
    - { label: 'business.gov.au', url: 'https://business.gov.au/finance/payments-and-invoicing/how-to-invoice' }
    - { label: 'sprintlaw.com.au', url: 'https://sprintlaw.com.au/articles/late-payment-interest-in-australia-how-to-charge-it-legally/' }
autoseo:
    enabled: false
---

## Required Elements of a Valid Tax Invoice

To be eligible for claiming input tax credits, a tax invoice must include the following elements:

- **The words 'tax invoice'** — displayed prominently on the document
- **Supplier's business name** — the registered name of the entity making the supply
- **Supplier's ABN** — the Australian Business Number of the supplier
- **Date of issue** — the date the invoice is issued
- **Description of the goods or services** — clear enough for the recipient to identify what was supplied
- **GST-inclusive price** — either the total amount including GST, or the price per unit and quantity

For invoices of $1,000 or more, the recipient's identity or ABN must also be shown.

<figure class="article-diagram"><img class="d-light" src="/user/data/article-visuals/what-a-valid-tax-invoice-needs-under-australian-gst-flow-light.svg" alt="Tax Invoice Flow in SAE Books" loading="lazy"><img class="d-dark" src="/user/data/article-visuals/what-a-valid-tax-invoice-needs-under-australian-gst-flow-dark.svg" alt="" aria-hidden="true" loading="lazy"></figure>

## The $82.50 Threshold

A tax invoice is required when the GST-inclusive value of a sale is $82.50 or more and the buyer requests one. Below that threshold, a simpler invoice or receipt is sufficient, though many businesses issue a full tax invoice regardless of the amount as a matter of good record-keeping.

## Recipient-Created Tax Invoices

In certain arrangements, the buyer — rather than the supplier — prepares the tax invoice. These are known as recipient-created tax invoices (RCTIs). They are only valid where both parties have a written agreement permitting this arrangement. An RCTI must still contain all the standard required elements, with the buyer's details substituted appropriately, and the supplier must not also issue a tax invoice for the same transaction.

## Late Payment Interest

Late payment interest is a separate matter from the invoice itself. According to Sprintlaw, interest on overdue invoices cannot be applied unilaterally — there must be a prior written agreement between the parties, such as a clause in a contract or Terms of Trade, before interest can be charged. Best practice is to:

- State late payment terms clearly in any contract or Terms of Trade before work begins
- Reference those terms on the invoice itself
- Issue formal written reminders before escalating a dispute

## Recording Tax Invoices in SAE Books

SAE Books stores each invoice as a structured ledger entry via its API. When an invoice is created, SAE Books captures the required GST fields — ABN, GST-inclusive amount, line-item descriptions, and issue date — so that the record satisfies ATO requirements from the moment it is written. Invoices can be retrieved, updated, or voided through the same API, giving businesses a single auditable source of truth for their tax invoice obligations.
