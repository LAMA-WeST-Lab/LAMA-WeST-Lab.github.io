---
title: Team
nav:
  order: 3
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-users" %}Team

{% include section.html %}

{% assign principal_investigators = site.members | where_exp: "member", "member.role == 'fullprof'" | where_exp: "member", "member.group != 'alum'" %}
{% if principal_investigators.size > 0 %}
## Lab Director

{% include list.html data="members" component="portrait" filter="(role == 'fullprof') and group != 'alum'" %}
{% endif %}

{% assign postdocs = site.members | where: "role", "postdoc" | where_exp: "member", "member.group != 'alum'" %}
{% if postdocs.size > 0 %}
## Postdocs

{% include list.html data="members" component="portrait" filter="role == 'postdoc' and group != 'alum'" %}
{% endif %}

{% assign phd_students = site.members | where: "role", "phd" | where_exp: "member", "member.group != 'alum'" %}
{% if phd_students.size > 0 %}

## Research Associates

{% include list.html data="members" component="alumni-card" filter="role == 'associate' and group != 'alum'" %}
{% endif %}

{% assign associates = site.members | where: "role", "associate" | where_exp: "member", "member.group != 'alum'" %}
{% if associates.size > 0 %}

## PhD Students

{% include list.html data="members" component="portrait" filter="role == 'phd' and group != 'alum'" %}
{% endif %}

{% assign master_students = site.members | where: "role", "master" | where_exp: "member", "member.group != 'alum'" %}
{% if master_students.size > 0 %}
## Master Students

{% include list.html data="members" component="portrait" filter="role == 'master' and group != 'alum'" %}
{% endif %}

{% assign profmaster_students = site.members | where: "role", "profmaster" | where_exp: "member", "member.group != 'alum'" %}
{% if profmaster_students.size > 0 %}
## Professional Master Students

{% include list.html data="members" component="portrait" filter="role == 'profmaster' and group != 'alum'" %}
{% endif %}

{% assign undergrad_students = site.members | where: "role", "undergrad" | where_exp: "member", "member.group != 'alum'" %}
{% if undergrad_students.size > 0 %}
## Undergrad Students

{% include list.html data="members" component="portrait" filter="role == 'undergrad' and group != 'alum'" %}
{% endif %}

{% assign interns = site.members | where: "role", "intern" | where_exp: "member", "member.group != 'alum'" %}
{% if interns.size > 0 %}
## Intern Students

{% include list.html data="members" component="portrait" filter="role == 'intern' and group != 'alum'" %}
{% endif %}

{% assign collaborators = site.members | where: "role", "collaborator" | where_exp: "member", "member.group != 'alum'" %}
{% if collaborators.size > 0 %}
## Collaborators

{% include list.html data="members" component="alumni-card" filter="role == 'collaborator' and group != 'alum'" %}
{% endif %}

## Alumni

{% assign fullprof_alumni = site.members | where: "role", "fullprof" | where: "group", "alum" %}
{% if fullprof_alumni.size > 0 %}
### Professors

{% include list.html data="members" component="alumni-card" filter="role == 'fullprof' and group == 'alum'" %}
{% endif %}

{% assign postdoc_alumni = site.members | where: "role", "postdoc" | where: "group", "alum" %}
{% if postdoc_alumni.size > 0 %}
### Postdocs

{% include list.html data="members" component="alumni-card" filter="role == 'postdoc' and group == 'alum'" %}
{% endif %}

{% assign phd_alumni = site.members | where: "role", "phd" | where: "group", "alum" %}
{% if phd_alumni.size > 0 %}

### Research Associates

{% include list.html data="members" component="alumni-card" filter="role == 'associate' and group == 'alum'" %}
{% endif %}

{% assign associate_alumni = site.members | where: "role", "associate" | where: "group", "alum" %}
{% if associate_alumni.size > 0 %}

### PhD Students

{% include list.html data="members" component="alumni-card" filter="role == 'phd' and group == 'alum'" %}
{% endif %}

{% assign master_alumni = site.members | where: "role", "master" | where: "group", "alum" %}
{% if master_alumni.size > 0 %}
### Master Students

{% include list.html data="members" component="alumni-card" filter="role == 'master' and group == 'alum'" %}
{% endif %}

{% assign profmaster_alumni = site.members | where: "role", "profmaster" | where: "group", "alum" %}
{% if profmaster_alumni.size > 0 %}
### Professional Master Students

{% include list.html data="members" component="alumni-card" filter="role == 'profmaster' and group == 'alum'" %}
{% endif %}

{% assign undergrad_alumni = site.members | where: "role", "undergrad" | where: "group", "alum" %}
{% if undergrad_alumni.size > 0 %}
### Undergrad Students

{% include list.html data="members" component="alumni-card" filter="role == 'undergrad' and group == 'alum'" %}
{% endif %}

{% assign intern_alumni = site.members | where: "role", "intern" | where: "group", "alum" %}
{% if intern_alumni.size > 0 %}
### Intern Students

{% include list.html data="members" component="alumni-card" filter="role == 'intern' and group == 'alum'" %}
{% endif %}

{% assign collaborator_alumni = site.members | where: "role", "collaborator" | where: "group", "alum" %}
{% if collaborator_alumni.size > 0 %}
### Collaborators

{% include list.html data="members" component="alumni-card" filter="role == 'collaborator' and group == 'alum'" %}
{% endif %}



