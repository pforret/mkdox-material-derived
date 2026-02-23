![GitHub Tag](https://img.shields.io/github/v/tag/pforret/mkdox-material-derived)
![Docker Image Version](https://img.shields.io/docker/v/pforret/mkdox-material-derived?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/pforret/mkdox-material-derived)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/pforret/mkdox-material-derived)
![GitHub last commit](https://img.shields.io/github/last-commit/pforret/mkdox-material-derived)

# mkdox-material-derived

Docker image extending [`squidfunk/mkdocs-material`](https://hub.docker.com/r/squidfunk/mkdocs-material) (linux/amd64) with 8 pre-installed MkDocs plugins. Current version: **0.2.2**.

## Base image versions

| Package | Version |
|---------|---------|
| [mkdocs](https://www.mkdocs.org/) | 1.6.1 |
| [mkdocs-material](https://squidfunk.github.io/mkdocs-material/) | 9.7.2 |

## Included plugins

| Plugin | Description |
|--------|-------------|
| [mkdocs-rss-plugin](https://github.com/Guts/mkdocs-rss-plugin) | RSS feed generation |
| [mkdocs-glightbox](https://github.com/blueswen/mkdocs-glightbox) | Image lightbox |
| [mkdocs-minify-plugin](https://github.com/byrnereese/mkdocs-minify-plugin) | HTML/CSS/JS minification |
| [markdown-include](https://github.com/cmacmackin/markdown-include) | Include external Markdown files |
| [mkdocs-awesome-pages-plugin](https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin) | Custom page navigation |
| [mkdocs-include-markdown-plugin](https://github.com/mondeja/mkdocs-include-markdown-plugin) | Advanced Markdown inclusion |
| [mkdocs-git-revision-date-localized-plugin](https://github.com/timvink/mkdocs-git-revision-date-localized-plugin) | Git-based revision dates |
| [mkdocs-autolinks-plugin](https://github.com/zachhannum/mkdocs-autolinks-plugin) | Automatic cross-references |

## Usage

### Pull from Docker Hub

```bash
docker pull pforret/mkdox-material-derived
```

### Run locally

Mount your MkDocs project directory as `/docs`:

```bash
docker run -p 8000:8000 -v /path/to/your/docs:/docs pforret/mkdox-material-derived
```

Then open http://localhost:8000.

### Build from source

```bash
docker build -t pforret/mkdox-material-derived .
```

### Build, push and bump version

```bash
./push_docker.sh
```

This builds the image, pushes to Docker Hub, and auto-bumps the version via [`setver`](https://github.com/pforret/setver).

## Used by

[pforret/mkdox](https://github.com/pforret/mkdox)
