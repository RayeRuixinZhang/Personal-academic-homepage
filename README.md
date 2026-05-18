# Personal Academic Homepage

A clean, static academic homepage for public health, epidemiology, and biomedical research profiles.

This repository is designed to work in two ways:

1. As Ruixin Zhang's public academic homepage.
2. As a reusable template for other researchers who want a lightweight personal academic website.

No build system is required. The site is plain HTML and CSS.

## Project Structure

```text
.
├── index.html
├── styles.css
├── README.md
├── TEMPLATE_GUIDE.md
└── assets/
    ├── headshot.png
    └── publication-images/
        ├── fatty-liver-index-mortality.png
        ├── hepatitis-b-incidence-xiamen.png
        ├── intranasal-covid-vaccine.png
        ├── masld-global-burden.png
        ├── notifiable-diseases-covid.png
        └── pertussis-adults-burden.png
```

## Local Preview

Open `index.html` directly in a browser.

## Customize

Edit `index.html` to update:

- Name and affiliation
- Contact email
- About section
- Research interests
- Publications and DOI links
- Education
- Honors and awards

Edit `styles.css` to update:

- Colors
- Spacing
- Typography
- Responsive layout behavior

See `TEMPLATE_GUIDE.md` for detailed replacement instructions.

## Privacy Notes

Private source materials are intentionally excluded from Git tracking, including:

- Original CV files
- Original publication PDFs
- Draft source materials
- Files in `个人素材/`
- Large or raw source images that are not directly used by the website

Only the files needed to render the public website are intended to be tracked.
