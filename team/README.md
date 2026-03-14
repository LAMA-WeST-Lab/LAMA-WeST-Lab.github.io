# Team Profile Guide

Use this guide to add a new member profile to the website.

## Steps

1. Create a file in `_members` named `firstname-lastname.md`.
2. Add the member photo in `images/team`.
3. In the profile front matter, choose a `role` from the list below.
4. In `links:`, choose link keys from the list below.
5. Use existing files in `_members` as examples (`john-doe.md`, `zacharie-garnier-cuchet.md`).

## Member File Template

```md
---
name: Firstname Lastname
image: images/team/firstname-last-name.jpg
role: phd
affiliation: Your Institution
aliases:
  - F. Lastname
links:
  home-page: https://example.com
  email: name@example.com
  github: your-github-handle
---

Short bio text.
```

## Allowed `role` Values

- `principal-investigator`
- `postdoc`
- `phd`
- `undergrad`
- `programmer`
- `mascot`
- `master`

## Allowed `group` Values (Optional)

Use the `group` field to organize members by status:

- `alum` - For alumni/former members who have left the lab

If no `group` is specified, the member is considered a current member.

## Allowed `links` Keys (General + Social Media)

- `link`
- `website`
- `external`
- `home-page`
- `email`
- `phone`
- `address`
- `search`
- `orcid`
- `google-scholar`
- `github`
- `twitter`
- `bluesky`
- `facebook`
- `instagram`
- `youtube`
- `linkedin`

## Notes

- Keep the image path relative, for example: `images/team/your-photo.jpg`.
- Use web URLs in links (for example `https://...`).
- To change available roles, links, or social media keys, edit `_data/types.yaml`.
