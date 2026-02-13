# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Hugo static site for [techteapot.com](https://techteapot.com/). All Hugo source files live under `src/`. Deployed to Cloudflare Workers (config: `wrangler.jsonc`, assets served from `src/public/`).

## Build & Dev Commands

```bash
# Dev server (Docker, port 1313, drafts enabled)
docker-compose up

# Build site to src/public/
./scripts/build.sh

# Create new content
cd src
hugo new --kind post-bundle posts/my-post
hugo new --kind article-bundle articles/my-article

# Validation scripts
./scripts/checklinks.sh
./scripts/checkredirects.sh
./scripts/checksitemap.sh
```

Hugo version: 0.121.1 (pinned in docker-compose.yml and scripts/build.sh).

## Architecture

### Config
Modular Hugo config in `src/config/`:
- `_default/` — base config (config.yaml, params.yaml, menu.yaml, markup.yaml)
- `production/` — enables minification
- `development/` — enables drafts, disables minification

### Theme Stack
Four themes loaded in order (defined in config.yaml): `hugo-cloak-email`, `hugo-notice`, `hugo-shortcode-gallery`, `roadster`. All are git submodules under `src/themes/`. **Roadster** is the primary theme; the others add shortcodes.

### Layout Overrides
Project-level overrides in `src/layouts/` take precedence over theme templates. Current overrides:
- `partials/authorbox.html`, `partials/logo.html`, `partials/menu.html`
- `partials/head/seo.html` — SEO meta tags (canonical, Open Graph, Schema, Twitter Cards)
- `partials/widgets/authorbio.html`, `partials/widgets/links.html`
- `_shortcodes/gist.html`
- `robots.txt`

**Do not modify theme files directly** — create or edit project-level overrides in `src/layouts/` instead.

### Content Types
- `src/content/posts/` — blog posts (page bundles with `index.md` + `images/`)
- `src/content/articles/` — long-form guides (same bundle structure)
- `src/content/goals/` — goals
- Root-level pages: about, contact, privacy, terms, subscribe

### Taxonomies
Categories, tags, and series (defined in config.yaml).

### Redirects
`src/static/_redirects` contains 100+ redirect rules mapping old WordPress URLs to Hugo paths (Cloudflare format).

## Key Details
- Language: en-GB
- Markdown: Goldmark with unsafe HTML enabled
- Emoji support enabled
- Custom CSS: `src/static/css/image.css`
