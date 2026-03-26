---
title: Team
nav:
  order: 3
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-users" %}Team

{% include section.html %}

## Principal Investigator

{% include list.html data="members" component="portrait" filter="(role == 'principal-investigator' or role == 'professor') and group != 'alum'" %}

## Postdocs

{% include list.html data="members" component="portrait" filter="role == 'postdoc' and group != 'alum'" %}

## PhD Students

{% include list.html data="members" component="portrait" filter="role == 'phd' and group != 'alum'" %}

## Master Students

{% include list.html data="members" component="portrait" filter="role == 'master' and group != 'alum'" %}

{% assign alumni = site.members | where_exp: "member", "member.group == 'alum'" | size %}
{% if alumni > 0 %}

## Alumni

### Postdocs

{% include list.html data="members" component="alumni-card" filter="role == 'postdoc' and group == 'alum'" %}

### PhD Students

{% include list.html data="members" component="alumni-card" filter="role == 'phd' and group == 'alum'" %}

### Master Students

{% include list.html data="members" component="alumni-card" filter="role == 'master' and group == 'alum'" %}



{% endif %}