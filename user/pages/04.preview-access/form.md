---
metadata:
    description: 'Request early access to hosted SAE Books, or self-host the free Community edition now. GST and BAS-ready double-entry accounting for Australian small business.'
title: 'Request preview access'
menu: 'Preview access'
body_classes: 'page form-page'
form_lead: "SAE Books is in private beta. Tell us a little about you and we'll be in touch about early access to the hosted editions. The Community edition is free to self-host right now."
autoseo:
    enabled: false
form:
    name: preview-access
    fields:
        -
            name: name
            id: pa-name
            label: 'Your name'
            type: text
            validate:
                required: true
        -
            name: email
            id: pa-email
            label: 'Email'
            type: email
            validate:
                required: true
        -
            name: company
            id: pa-company
            label: 'Business / company (optional)'
            type: text
        -
            name: interest
            id: pa-interest
            label: "What are you after?"
            type: select
            default: business
            options:
                business: 'Business edition (hosted)'
                pro: 'Pro edition (hosted)'
                enterprise: 'Enterprise / custom'
                pre-order-license: 'Pre-order a licence (no launch date yet)'
                keeping-in-touch: 'Just keeping in touch'
        -
            name: message
            id: pa-message
            label: 'Anything else? (optional)'
            type: textarea
    buttons:
        -
            type: submit
            value: 'Request access'
            classes: 'btn btn-primary btn-lg'
    process:
        -
            save:
                fileprefix: request-
                dateformat: Ymd-His-u
                extension: txt
                body: "{% include 'forms/data.txt.twig' %}"
        -
            email:
                from: 'noreply@saebooks.com.au'
                to: 'admin@saee.com.au'
                reply_to: '{{ form.value.email }}'
                subject: 'Preview-access request — {{ form.value.name|e }} ({{ form.value.interest }})'
                body: "{% include 'forms/data.html.twig' %}"
        -
            message: "Thanks — that's landed with us. We'll be in touch about preview access."
---
