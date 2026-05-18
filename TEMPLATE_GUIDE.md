# Template Guide

Use this guide to adapt the homepage for another researcher.

## 1. Replace Profile Information

In `index.html`, update the hero section:

- `Ruixin Zhang`
- Chinese or local-language name, if needed
- Current title
- Affiliation
- Email address
- Research interests

If you do not want to publish a personal email address, use an institutional contact page instead.

## 2. Replace Images

Place public-facing images in `assets/`.

Recommended image paths:

```text
assets/headshot.png
assets/publication-images/example-publication-image.png
```

Do not commit private source images, identity documents, CV drafts, or raw files that are not needed by the public website.

## 3. Replace Publications

Each publication entry should include:

- Year
- Journal or venue
- Author role, if relevant
- Title
- Author list
- DOI link
- A small representative image

This template uses DOI links instead of hosting publication PDFs directly.

## 4. Replace Awards

In the `Honors & Skills` section, update:

- Academic Awards
- Competition Awards
- Awarding organization
- Date

Use concise names and avoid exposing unnecessary private details.

## 5. Publish on GitHub Pages

After pushing to GitHub:

1. Open the repository on GitHub.
2. Go to `Settings`.
3. Go to `Pages`.
4. Under `Build and deployment`, choose `Deploy from a branch`.
5. Select the `main` branch and `/root`.
6. Save.

GitHub will provide a public URL after deployment.
