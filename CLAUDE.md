# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Docker image extending `squidfunk/mkdocs-material:latest` (amd64) with 8 pre-installed MkDocs plugins. Used by the parent project `pforret/mkdox`.

## Commands

- **Build:** `docker build -t pforret/mkdox-material-derived .`
- **Build + push + version bump:** `./push_docker.sh`
- **Run locally:** `docker run -p 8000:8000 -v /path/to/docs:/docs pforret/mkdox-material-derived`

No tests or linting — this is purely a Docker build recipe.

## Architecture

- `Dockerfile` — the entire project: extends base image, pip-installs plugins, exposes port 8000
- `push_docker.sh` — build, push to Docker Hub, bump version via `setver auto`
- `VERSION.md` — current version (used by `setver`)

## Versioning

Uses [`setver`](https://github.com/pforret/setver) for version management. Version bumps happen automatically in `push_docker.sh`.
