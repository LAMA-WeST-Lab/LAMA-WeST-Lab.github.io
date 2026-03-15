---
title: Seminars
nav:
  order: 4
  tooltip: Seminars and events
---

# {% include icon.html icon="fa-solid fa-presentation" %}Seminars

We host regular seminars featuring presentations from lab members and invited speakers on topics ranging from machine learning to data science and beyond.

{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

## Upcoming Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="status == 'upcoming'" %}

{% include section.html %}

## Past Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="status == 'past'" %}

