---
title: Team
nav:
  order: 3
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-users" %}Team

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

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

### PhD

{% include list.html data="members" component="alumni-card" filter="role == 'phd' and group == 'alum'" %}

### Master

{% include list.html data="members" component="alumni-card" filter="role == 'master' and group == 'alum'" %}

### Postdoc

{% include list.html data="members" component="alumni-card" filter="role == 'postdoc' and group == 'alum'" %}

{% endif %}

{% include section.html background="images/background.jpg" dark=true %}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

{% include section.html %}

{% capture content %}

{% include figure.html image="images/photo.jpg" %}
{% include figure.html image="images/photo.jpg" %}
{% include figure.html image="images/photo.jpg" %}

{% endcapture %}

{% include grid.html style="square" content=content %}
