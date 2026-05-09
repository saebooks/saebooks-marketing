---
# Post template — copy this directory to add a new build-log entry.
#
# Steps:
#   1. cp -r user/pages/02.blog/_post-template  user/pages/02.blog/NN.your-slug
#   2. Edit item.md: fill title, date, tags, write body below the closing ---
#   3. Commit and redeploy.
#
# Date format: 'DD-MM-YYYY HH:MM'  (Grav standard short date, AEST)
# Tags: build-log | architecture | marketing | release | engineering
# Category: build-log  (drives RSS category filter)
#
title: 'Post title here'
date: '09-05-2026 00:00'
taxonomy:
    tag: [build-log]
    category: build-log
template: item
autoseo:
    enabled: false
body_classes: blog-page
---

Post body in Markdown here.
