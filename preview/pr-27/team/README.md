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

- `fullprof`
- `postdoc`
- `associate`
- `phd`
- `master`
- `profmaster`
- `undergrad`
- `intern`
- `collaborator`

## Optional `year` Field

Use `year` to preserve timeline information from the legacy site, for example:

```md
year: "May 2024 - August 2024"
```

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
- To change available roles, links, or social media keys, edit `_data/types.yaml` (and `_data/fr/types.yaml` for the French labels).

## French Version

The site has an English and a French version. The role label is translated automatically, so a profile with no bio text needs nothing more.

To translate a bio, create a file with the same name in `_members/fr` that contains only the French text. Everything else (name, image, role, links) comes from the original file:

```md
---
---

Courte biographie en français.
```

Keep the two `---` lines even when there is nothing between them. To change a field for the French site only, write it between them (for example `affiliation: Polytechnique Montréal`).

Without a French file, the French site shows the English bio.
