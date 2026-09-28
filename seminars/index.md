---
title: Seminars
nav:
  order: 4
  tooltip: Seminars and events
---

# {% include icon.html icon="fa-solid fa-presentation" %}Seminars

We host regular seminars featuring presentations from lab members on their own research projects or other relevant subjects.

For the Fall 2026 semester, seminars are held from **1:00 PM to 2:30 PM in room M-6007 at Polytechnique**.

{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

## Upcoming Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="date >= Time.now" %}

{% include section.html %}

## Past Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="date < Time.now" %}

