---
title: 'Single Touch Payroll Phase 2 and BAS Reporting Explained'
date: '2026-06-28 23:29'
template: resource
category: 'Guide'
read_time: '~2 min read'
dek: 'Understand Single Touch Payroll Phase 2 requirements and how STP2 payroll data connects to BAS reporting, with guidance on using SAE Books to manage both.'
metadata:
    description: 'Understand Single Touch Payroll Phase 2 requirements and how STP2 payroll data connects to BAS reporting, with guidance on using SAE Books to manage both.'
taxonomy:
    category: [resources]
    tag: ['single touch payroll', 'stp2', 'bas', 'payroll reporting', 'ato compliance', 'small business']
sources:
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/bas' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2' }
    - { label: 'Australian Taxation Office (ATO)', url: 'https://ato.gov.au/stp2-employers' }
autoseo:
    enabled: false
---

## What Is Single Touch Payroll Phase 2?

Single Touch Payroll Phase 2 (STP2) is an expansion of the ATO's digital payroll reporting framework. Under STP2, employers report additional payroll details to the ATO each pay run, including disaggregated gross pay, income types, and tax treatment codes. This replaces the single gross figure reported under Phase 1 and gives the ATO more granular visibility into employee earnings and entitlements.

The ATO sets out the full list of employer obligations for STP2 at [ato.gov.au/stp2-employers](https://ato.gov.au/stp2-employers).

## What Changes Under STP2

STP2 requires employers to separately identify and report pay components that were previously bundled together. Key changes include:

- **Disaggregated gross**: salary, allowances, overtime, bonuses, and similar items are reported as distinct amounts rather than a single gross figure.
- **Income types**: each payment is assigned an income type (e.g. salary and wages, closely held payee, working holiday maker).
- **Tax treatment codes**: a six-character code communicates an employee's tax situation to the ATO, replacing the need to send the Tax File Number declaration separately.

Full technical detail is available at [ato.gov.au/stp2](https://ato.gov.au/stp2).

## How STP2 Relates to BAS Reporting

Business Activity Statements (BAS) capture a business's GST, PAYG withholding, and PAYG instalment obligations for each reporting period. The ATO's BAS guidance is at [ato.gov.au/bas](https://ato.gov.au/bas).

STP2 and BAS are separate obligations, but they draw on the same underlying payroll data. PAYG withholding amounts reported through STP2 each pay run must reconcile with the W2 label on the BAS for the same period. Keeping payroll records accurate and up to date throughout the period reduces the reconciliation work required at BAS time.

## Using SAE Books for STP2 and BAS

SAE Books is an API-first, self-hosted accounting ledger. Because payroll data lives in the same ledger as the general accounts, the figures that flow into an STP2 submission and those that populate a BAS are drawn from a single source of truth. This reduces manual re-entry and the risk of mismatches between payroll and activity statement figures.

SAE Books exposes STP2 submission and BAS reporting through its API, so the reporting workflow can be automated or integrated into existing business systems without relying on additional third-party payroll or accounting platforms.

## Staying Compliant

Employers must submit an STP2 report on or before each payday. BAS lodgement deadlines depend on the reporting cycle the ATO has assigned to the business. Missing either deadline can result in penalties.

The ATO provides guidance on due dates, deferrals, and correcting errors for both obligations at the sources listed above. Reviewing that guidance and reconciling payroll records regularly — rather than only at period end — is the most reliable way to meet both sets of requirements.
