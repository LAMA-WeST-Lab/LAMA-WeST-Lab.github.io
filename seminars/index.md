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

{% comment %}
  Upcoming/past is decided at build time, compared by calendar day so a seminar
  stays "upcoming" for its whole day. The rebuild-daily workflow rebuilds the
  site every night so this stays current between pushes.
{% endcomment %}
{% include list.html data="seminars" component="seminar-excerpt" filter="date.strftime('%F') >= Time.now.strftime('%F')" %}

{% include section.html %}

## Past Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="date.strftime('%F') < Time.now.strftime('%F')" %}

