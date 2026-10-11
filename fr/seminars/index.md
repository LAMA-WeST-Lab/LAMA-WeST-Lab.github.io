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

{% include list.html data="seminars" component="seminar-excerpt" filter="date >= Time.now" %}

{% include section.html %}

## Séminaires passés

{% include list.html data="seminars" component="seminar-excerpt" filter="date < Time.now" %}
