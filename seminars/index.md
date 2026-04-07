---
title: Seminars
nav:
  order: 4
  tooltip: Seminars and events
---

# {% include icon.html icon="fa-solid fa-presentation" %}Seminars

We host regular seminars featuring presentations from lab members on their own research projects or other relevant subjects.

**Regular Schedule:** Our seminars are currently held **on Tuesday from 1:30 PM to 3:00 PM in room M-6007 at Polytechnique**.

{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

## Upcoming Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="[date.year, date.month, date.day] >= [Time.now.year, Time.now.month, Time.now.day]" %}

{% include section.html %}

## Past Seminars

{% include list.html data="seminars" component="seminar-excerpt" filter="[date.year, date.month, date.day] < [Time.now.year, Time.now.month, Time.now.day]" %}

