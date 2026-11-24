---
title: Nouvelles
nav:
  order: 1
  tooltip: Dernières nouvelles et annonces
---

# {% include icon.html icon="fa-solid fa-feather-pointed" %}Nouvelles


{% include section.html %}

{% include search-box.html %}

{% include tags.html tags=site.tags %}

{% include search-info.html %}

{% include list.html data="news" component="post-excerpt" %}
