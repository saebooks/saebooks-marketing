---
title: 'Single Touch Payroll Phase 2 and BAS Reports Explained'
date: '2026-06-28 23:34'
template: resource
category: 'Guide'
read_time: '~3 min read'
dek: 'Understand STP Phase 2 reporting requirements, how they connect to BAS obligations, and how SAE Books handles both in a single API-first ledger.'
metadata:
    description: 'Understand STP Phase 2 reporting requirements, how they connect to BAS obligations, and how SAE Books handles both in a single API-first ledger.'
taxonomy:
    category: [resources]
    tag: ['single touch payroll', 'stp phase 2', 'bas', 'payg withholding', 'payroll reporting', 'small business']
sources:
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/bas' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2-employers' }
autoseo:
    enabled: false
---

## What STP Phase 2 Requires

Single Touch Payroll Phase 2 (STP2) expands the original STP framework by requiring employers to report additional payroll information to the ATO each time a payment is made. Under STP2, each pay event must include disaggregated data: income type, tax treatment code, and gross earnings are reported as separate fields rather than as a single combined figure. This gives the ATO and Services Australia more granular visibility into employee payments without requiring employers to submit separate forms after the fact.

SAE Books supports STP2 submission directly via its API, so each pay run produces a compliant STP2 payload that is lodged with the ATO at the time of payment.

## How STP2 Relates to BAS Obligations

Business Activity Statements (BAS) are used to report and pay GST, PAYG withholding, and PAYG instalments to the ATO on a monthly or quarterly basis. STP2 does not replace BAS lodgement, but the two obligations are closely linked: PAYG withholding amounts reported through STP2 pay events must reconcile with the W2 label on each BAS period.

Because SAE Books maintains a single ledger for both payroll and tax obligations, the PAYG withholding figures captured during STP2 reporting flow directly into BAS preparation. This reduces the manual reconciliation step that arises when payroll and accounting data are held in separate systems.

## Disaggregated Data and Record-Keeping

STP2 separates previously combined payment fields into distinct components. Employers must identify each payment by income type (for example, salary and wages, closely held payee, or working holiday maker income) and apply the correct tax treatment code. Allowances, overtime, and bonuses must also be itemised rather than rolled into a gross total.

This level of detail supports accurate end-of-year income statements for employees and reduces the likelihood of discrepancies between employer-reported figures and employee tax returns. SAE Books stores each disaggregated field against the relevant pay event record, making the data available for audit or review without additional data entry.

## Employer Obligations and Transition

The ATO has published STP2 guidance specifically for employers at ato.gov.au/stp2-employers, covering reporting start dates, exemptions, and the treatment of closely held payees. Employers who were already reporting under STP Phase 1 were required to transition to the expanded fields by a date agreed with their software provider or the ATO. New employers must begin STP2-compliant reporting from their first pay event.

Key ongoing obligations include:

- Lodging an STP2 report on or before each payday
- Finalising employee income statements in the ATO system at the end of each financial year
- Ensuring BAS PAYG withholding labels reconcile with cumulative STP2 figures for the same period

## Using SAE Books for STP2 and BAS

SAE Books is a self-hosted, API-first accounting ledger. Payroll data entered into SAE Books is structured to meet STP2 field requirements, and the platform handles the ATO submission directly. BAS figures for PAYG withholding are derived from the same payroll records, so there is no need to re-enter data or export files between systems.

For businesses that prefer to integrate SAE Books with existing tools, the public API exposes payroll and BAS data in standard formats, allowing custom workflows without dependence on a proprietary software ecosystem.
