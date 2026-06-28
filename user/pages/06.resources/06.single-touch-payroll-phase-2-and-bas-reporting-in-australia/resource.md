---
title: 'Single Touch Payroll Phase 2 and BAS Reporting in Australia'
date: '2026-06-29 00:12'
template: resource
category: 'Guide'
hero: '/user/data/article-visuals/single-touch-payroll-phase-2-and-bas-reporting-in-australia-hero.svg'
read_time: '~3 min read'
dek: 'How Single Touch Payroll Phase 2 works, what disaggregated reporting means for BAS obligations, and how SAE Books handles both in one ledger.'
metadata:
    description: 'How Single Touch Payroll Phase 2 works, what disaggregated reporting means for BAS obligations, and how SAE Books handles both in one ledger.'
taxonomy:
    category: [resources]
    tag: ['single touch payroll', 'stp2', 'bas', 'payg withholding', 'payroll', 'ato']
sources:
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/bas' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2-employers' }
autoseo:
    enabled: false
---

## What STP Phase 2 Requires

Single Touch Payroll Phase 2 (STP2) expands the original STP framework by requiring employers to report additional payroll detail to the ATO each time a payment is made. Rather than submitting a single combined gross figure, each pay event must include disaggregated fields: income type, tax treatment code, and gross earnings are reported separately. This gives the ATO and Services Australia more granular visibility into employee payments without requiring employers to lodge separate forms after the fact.

SAE Books structures payroll data to meet STP2 field requirements and handles ATO submission directly via its API, so each pay run produces a compliant STP2 payload lodged at the time of payment.

<figure class="article-diagram"><img class="d-light" src="/user/data/article-visuals/single-touch-payroll-phase-2-and-bas-reporting-in-australia-flow-light.svg" alt="STP2 Pay Event to BAS Reconciliation" loading="lazy"><img class="d-dark" src="/user/data/article-visuals/single-touch-payroll-phase-2-and-bas-reporting-in-australia-flow-dark.svg" alt="" aria-hidden="true" loading="lazy"></figure>

## How STP2 Relates to BAS Obligations

Business Activity Statements (BAS) are used to report and pay GST, PAYG withholding, and PAYG instalments to the ATO on a monthly or quarterly basis. STP2 does not replace BAS lodgement. The two obligations are closely linked, however: PAYG withholding amounts reported through STP2 pay events must reconcile with the W2 label on each BAS period.

Because SAE Books maintains a single ledger for both payroll and tax obligations, PAYG withholding figures captured during STP2 reporting flow directly into BAS preparation. This removes the manual reconciliation step that arises when payroll and accounting data are held in separate systems.

## Disaggregated Data and Record-Keeping

STP2 separates previously combined payment fields into distinct components. Employers must identify each payment by income type — such as salary and wages, closely held payee income, or working holiday maker income — and apply the correct tax treatment code. Allowances, overtime, and bonuses must be itemised rather than rolled into a gross total.

This level of detail supports accurate end-of-year income statements for employees and reduces the likelihood of discrepancies between employer-reported figures and employee tax returns. SAE Books stores each disaggregated field against the relevant pay event record, making the data available for audit or review without additional data entry.

## Employer Obligations

The ATO has published STP2 guidance for employers covering reporting start dates, exemptions, and the treatment of closely held payees. Employers who were already reporting under STP Phase 1 were required to transition to the expanded fields by a date agreed with their software provider or the ATO. New employers must begin STP2-compliant reporting from their first pay event.

Key ongoing obligations include:

- Lodging an STP2 report on or before each payday
- Finalising employee income statements in the ATO system at the end of each financial year
- Ensuring BAS PAYG withholding labels reconcile with cumulative STP2 figures for the same period

## STP2 and BAS in SAE Books

SAE Books is a self-hosted, API-first accounting ledger. Payroll data entered into SAE Books is structured to meet STP2 field requirements, and BAS figures for PAYG withholding are derived from the same payroll records — there is no need to re-enter data or export files between systems.

For businesses that prefer to integrate SAE Books with existing tools, the public API exposes payroll and BAS data in standard formats, supporting custom workflows without dependence on a proprietary software ecosystem.
