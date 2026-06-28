---
title: 'Peppol e-Invoicing Explained for Australian Small Business'
date: '2026-06-29 00:29'
template: resource
category: 'Guide'
hero: '/user/data/article-visuals/peppol-e-invoicing-explained-for-australian-small-business-hero.svg'
read_time: '~3 min read'
dek: 'Understand how Peppol e-invoicing works in Australia, what Access Points do, and how SAE Books connects small businesses to the Peppol network.'
metadata:
    description: 'Understand how Peppol e-invoicing works in Australia, what Access Points do, and how SAE Books connects small businesses to the Peppol network.'
taxonomy:
    category: [resources]
    tag: ['peppol', 'e-invoicing', 'access point', 'accounts payable', 'accounts receivable', 'small business']
sources:
    - { label: 'anskaffelser.dev', url: 'https://anskaffelser.dev/authority/documentation/onboarding/membership/' }
    - { label: 'dddinvoices.com', url: 'https://dddinvoices.com/learn/e-invoicing-estonia' }
    - { label: 'ec.europa.eu', url: 'https://ec.europa.eu/digital-building-blocks/sites/display/DIGITAL/eInvoicing+in+Estonia' }
    - { label: 'ec.europa.eu', url: 'https://ec.europa.eu/digital-building-blocks/sites/spaces/DIGITAL/pages/467108883/eInvoicing+in+Estonia' }
    - { label: 'peppol.org', url: 'https://peppol.org/about-openpeppol/governance/' }
    - { label: 'peppol.org', url: 'https://peppol.org/about-openpeppol/peppol-authorities/' }
    - { label: 'peppol.org', url: 'https://peppol.org/about-openpeppol/peppol-authorities/list-of-peppol-authorities/' }
    - { label: 'peppol.org', url: 'https://peppol.org/join/join/' }
    - { label: 'peppol.org', url: 'https://peppol.org/join/membership/' }
    - { label: 'peppol.org', url: 'https://peppol.org/learn-more/country-profiles/' }
    - { label: 'peppol.org', url: 'https://peppol.org/members/peppol-authorities/' }
    - { label: 'peppol.org', url: 'https://peppol.org/wp-content/uploads/2024/04/how_to_set-up_a__post-award__peppol_access_point_v2.1.pdf' }
    - { label: 'billit.eu', url: 'https://www.billit.eu/en-int/peppol-access-point/peppol-e-invoicing-in-estonia/' }
    - { label: 'dsoft.be', url: 'https://www.dsoft.be/en/post/iso-27001-mandatory-for-peppol-access-points-an-important-step-toward-secure-digital-exchange' }
    - { label: 'storecove.com', url: 'https://www.storecove.com/blog/en/e-invoicing-in-estonia/' }
    - { label: 'storecove.com', url: 'https://www.storecove.com/blog/en/how-to-register-to-peppol/' }
    - { label: 'storecove.com', url: 'https://www.storecove.com/blog/en/peppol-standards-iso-certification/' }
    - { label: 'storecove.com', url: 'https://www.storecove.com/blog/en/what-is-a-peppol-authority/' }
    - { label: 'tickstar.com', url: 'https://www.tickstar.com/guide-to-peppol-authorities/' }
    - { label: 'tickstar.com', url: 'https://www.tickstar.com/how-to-become-a-peppol-access-point/' }
autoseo:
    enabled: false
---

## What Peppol Is

Peppol (Pan-European Public Procurement On-Line) is an open, international framework that lets businesses exchange electronic invoices and other procurement documents through a standardised network. It is governed by OpenPeppol, a non-profit association that sets the technical specifications, legal agreements, and membership rules that every participant must follow.

In Australia, the Australian Taxation Office (ATO) acts as the Peppol Authority — the national body responsible for accrediting service providers and overseeing local compliance. A full list of Peppol Authorities by country is published on the OpenPeppol website.

<figure class="article-diagram"><img src="/user/data/article-visuals/peppol-e-invoicing-explained-for-australian-small-business-flow.svg" alt="Peppol Four-Corner Invoice Flow" loading="lazy"></figure>

## How the Network Works

Peppol uses a "four-corner" model:

1. **Sender** — the business issuing the invoice.
2. **Sender's Access Point** — an accredited service provider that transmits the document on the sender's behalf.
3. **Receiver's Access Point** — an accredited service provider that receives the document and delivers it to the buyer.
4. **Receiver** — the business receiving the invoice.

Access Points connect to each other through the Peppol network. Neither trading partner needs to know the technical details of the other's system; the Access Points handle format translation and secure delivery.

SAE Books connects to the Peppol network via an accredited Access Point, so invoices created in SAE Books can be sent to — and received from — any Peppol-registered business without manual re-keying.

## Peppol Access Points and Accreditation

Any organisation that wants to operate as a Peppol Access Point must:

- **Join OpenPeppol** as a member and sign the current Service Provider Agreement (which replaced the earlier Transport Infrastructure Agreement from 2023 onwards).
- **Hold ISO 27001 certification**, or be actively working toward it. ISO 27001 is mandatory for Access Points and demonstrates that an organisation meets the information-security standards the network requires.
- **Comply with the requirements of the relevant Peppol Authority** in each country where they operate — in Australia, that is the ATO.

OpenPeppol publishes a detailed onboarding guide for prospective Access Points covering the technical and administrative steps involved.

## What This Means for Small Businesses Using SAE Books

Most small businesses do not become Access Points themselves — they connect to the network *through* an accredited Access Point. When SAE Books sends or receives a Peppol e-invoice on your behalf, the underlying Access Point infrastructure is already in place.

To receive Peppol invoices, a business needs a **Peppol ID** — a unique identifier registered in the Peppol network's Service Metadata Publisher (SMP). Once registered, any sender on the network can look up that ID and route documents to it automatically.

Key practical points:

- **No proprietary portal required.** Because Peppol is an open standard, invoices flow directly between systems via the API, rather than through a supplier-specific web portal.
- **Format standardisation.** Peppol defines the document format (based on UBL XML), so the invoice your customer receives matches what their system expects.
- **Audit trail.** Every document transmitted through the network is logged, supporting GST record-keeping obligations under Australian tax law.

## Peppol Authorities and Governance

OpenPeppol's governance structure separates global rule-setting (OpenPeppol's responsibility) from national implementation (each Peppol Authority's responsibility). Authorities are typically government agencies or bodies designated by a government. They accredit local Access Points, handle disputes, and may add country-specific requirements on top of the global baseline.

Countries without a designated national authority fall under OpenPeppol's direct governance. The full list of current Peppol Authorities is maintained on the OpenPeppol website and updated as new countries join.
