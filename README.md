# SFI Wiki

Browsable knowledge base powered by MkDocs Material.

## Quick Start

```bash
# Install dependencies
pip install -r requirements.txt

# Serve locally
mkdocs serve

# Build site
mkdocs build
```

## Deploy to GitHub Pages

1. Create a new repo on GitHub named **SFI**
2. Push this code to the `main` branch
3. Go to **Settings → Pages** in your repo
4. Set **Source** to "GitHub Actions"
5. The site will auto-deploy on every push

## Adding Content

1. Create markdown files in `docs/` subdirectories
2. Use YAML frontmatter for metadata
3. Link pages with relative links: `[Link](entities/example.md)`
4. Push to main → auto-deployed

## Structure

```
docs/
├── index.md          # Homepage
├── entities/         # People, orgs, products
├── concepts/         # Topics, ideas
├── comparisons/      # Side-by-side analyses
├── queries/          # Research results
└── raw/              # Source materials
```

## Features

- Full-text search
- Dark/light mode toggle
- Mobile responsive
- Auto-generated navigation
- Syntax highlighting
- Admonitions (callout boxes)
