
![on-push](../../actions/workflows/on-push.yaml/badge.svg)
![on-pull-request](../../actions/workflows/on-pull-request.yaml/badge.svg)
![on-schedule](../../actions/workflows/on-schedule.yaml/badge.svg)

# LAMA-WeST-Lab's Website

Visit **[labowest.ca](http://labowest.ca)** 🚀

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
