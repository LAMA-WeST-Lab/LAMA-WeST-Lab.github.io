---
title: Séminaires
nav:
  order: 4
  tooltip: Séminaires et événements
---

# {% include icon.html icon="fa-solid fa-presentation" %}Séminaires

Nous organisons régulièrement des séminaires où les membres du laboratoire présentent leurs propres projets de recherche ou d'autres sujets pertinents.

Pour la session d'automne 2026, les séminaires ont lieu de **13 h à 14 h 30 au local M-6007 de Polytechnique**.

{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

## Séminaires à venir

{% comment %}
  Upcoming/past is decided at build time, compared by calendar day so a seminar
  stays "upcoming" for its whole day. The rebuild-daily workflow rebuilds the
  site every night so this stays current between pushes.
{% endcomment %}
{% include list.html data="seminars" component="seminar-excerpt" filter="date.strftime('%F') >= Time.now.strftime('%F')" %}

{% include section.html %}

## Séminaires passés

{% include list.html data="seminars" component="seminar-excerpt" filter="date.strftime('%F') < Time.now.strftime('%F')" %}
