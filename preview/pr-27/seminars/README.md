# Seminars Guide

Use this guide to add a seminar to the website.

## Steps

1. Create a file in `_seminars` named `YYYY-MM-DD-seminar-title.md`. The date in the file name is the date of the seminar.
2. Fill in the front matter (title, authors, tags).
3. Set `featured: true` if you want the seminar to appear on the homepage.
4. Write the seminar details in markdown below the front matter.
5. Use existing files in `_seminars` as examples.

A seminar is listed under "Upcoming Seminars" until its date has passed, then under "Past Seminars".

## Seminar File Template

```md
---
title: "Your Seminar Title"
authors:
  - member-slug
featured: false
tags:
  - tag1
  - tag2
---

## Your Seminar Title

*Speaker: Firstname Lastname*

*Date: January 1, 2026, 1PM to 2:30PM*
*Room: M-6007*

### Abstract

A few sentences about the seminar.
```

## Front Matter Fields

### Required
- **title**: The title of the seminar
- **authors**: The slugs of the presenters (file names in `_members` without `.md`, e.g. `zacharie-garnier-cuchet`)

### Optional
- **featured**: Set to `true` to show on homepage (default: `false`)
- **tags**: List of tags for categorization
- **reading_paper**, **reading_paper_url**: Title and link of the paper to read before the seminar

## French Version

The site has an English and a French version. To translate a seminar, create a file with the same name in `_seminars/fr`. Write only what changes, usually the title and the text. Everything else (authors, tags, featured) comes from the original file:

```md
---
title: "Titre du séminaire"
---

## Titre du séminaire

*Présentateur : Prénom Nom*

### Résumé

Quelques phrases sur le séminaire.
```

Without a French file, the French site shows the English seminar. Tags are shared by both languages, so do not translate them.

The general text of the Seminars page (schedule, room) is in `seminars/index.md` and `fr/seminars/index.md`. Update both when it changes.
