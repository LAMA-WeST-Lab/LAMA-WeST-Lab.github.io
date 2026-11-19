# News Guide

Use this guide to add a new news item to the website.

## Steps

1. Create a file in `_news` named `YYYY-MM-DD-post-title.md` (follow the date format).
2. Add a cover image in `images/` if desired.
3. Fill in the front matter with required fields (title, author, tags).
4. Set `featured: true` if you want the news to appear on the homepage.
5. Add tags to categorize your news.
6. Write the news content in markdown below the front matter.
7. Use existing files in `_news` as examples.

## News File Template

```md
---
title: Your News Title
author: member-slug
image: images/news-image.jpg
featured: true
tags:
  - tag1
  - tag2
---

Your news content here. You can use **bold**, _italic_, and other markdown formatting.

You can also add an excerpt between these tags:
<!-- excerpt start -->
This is the excerpt shown in the news list.
<!-- excerpt end -->

The rest of the content will only appear on the full news page.
```

## Front Matter Fields

### Required
- **title**: The headline of your news item
- **author**: The slug of the author (member name in lowercase with hyphens, e.g., `zacharie-garnier-cuchet`. Should match the one in _members)

### Optional
- **image**: Path to a cover image (displayed in news list)
- **featured**: Set to `true` to show on homepage (default: `false`)
- **tags**: List of tags for categorization (helps with filtering and organization)
- **last_modified_at**: Update date if the news was revised

## Featured News

To display a news item on the homepage:
1. Add `featured: true` to the front matter
2. Featured news appears in the "News" section before the link to all news

## Example News File

```md
---
title: Lab Receives Major Grant
author: zacharie-garnier-cuchet
image: images/lab-team.jpg
featured: true
tags:
  - funding
  - achievement
---

We are excited to announce that our lab has received a major research grant...

<!-- excerpt start -->
Lab receives $500,000 research grant for groundbreaking study.
<!-- excerpt end -->

The full story and details about our project can be found...
```

## Tips

- **File naming**: Use descriptive titles in filenames (e.g., `2026-03-14-major-grant-received.md`)
- **Author slug**: Must match a member file in `_members/` (e.g., if you have `_members/john-doe.md`, use `john-doe` as the author)
- **Images**: Place images in `images/` directory or subdirectories like `images/news/`
- **Excerpts**: Optional but recommended for better news list display
- **Tags**: Keep them consistent across news items for better organization
