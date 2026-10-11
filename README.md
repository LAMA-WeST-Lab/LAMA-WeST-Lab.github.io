
![on-push](../../actions/workflows/on-push.yaml/badge.svg)
![on-pull-request](../../actions/workflows/on-pull-request.yaml/badge.svg)
![on-schedule](../../actions/workflows/on-schedule.yaml/badge.svg)

# LAMA-WeST-Lab's Website

Visit **[labowest.ca](https://labowest.ca)** 🚀

_Built with [Lab Website Template](https://greene-lab.gitbook.io/lab-website-template-docs)_

## Run Locally

### Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- Docker CLI available in your terminal

### Linux / macOS

From the repository root:

```bash
chmod +x ./.docker/run.sh
./.docker/run.sh
```

### Windows (PowerShell)

From the repository root:

```powershell
.\.docker\run.ps1
```

If script execution is blocked, run once in the same PowerShell session:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\.docker\run.ps1
```

### Optional: Specify Docker Platform

Linux / macOS:

```bash
./.docker/run.sh --platform linux/amd64
```

Windows:

```powershell
.\.docker\run.ps1 -Platform linux/amd64
```

## Languages

The site is built in English (at `/`) and in French (at `/fr/`) with [jekyll-polyglot](https://github.com/untra/polyglot). Visitors switch with the `FR` / `EN` link in the header.

A French version is a file with the same name in a folder named `fr`:

| English | French |
| --- | --- |
| `team/index.md` | `fr/team/index.md` |
| `_news/2026-01-01-some-news.md` | `_news/fr/2026-01-01-some-news.md` |
| `_seminars/2026-01-01-some-seminar.md` | `_seminars/fr/2026-01-01-some-seminar.md` |
| `_members/firstname-lastname.md` | `_members/fr/firstname-lastname.md` |
| `_data/strings.yaml`, `_data/types.yaml` | `_data/fr/strings.yaml`, `_data/fr/types.yaml` |

- A French file only needs the front matter fields that change (usually `title`); the rest comes from the English file.
- Content with no French file is shown in English on the French site, so translating is always optional, but should be done as much as possible. Pull requests get a comment listing what they add without a French version; it is only a reminder.
- Publications are not translated. Tags are shared by both languages.
- Text that belongs to the layout (buttons, tooltips, dates) is in `_data/strings.yaml`, with its French version in `_data/fr/strings.yaml`.
- When running locally, the French site is at `http://localhost:4000/fr/`.

See the guides in [news](news/README.md), [seminars](seminars/README.md), [team](team/README.md) and [research](research/README.md).
