# Personal Academic Homepage

A clean, static academic homepage for public health, epidemiology, and biomedical research profiles.

Public site:

https://RayeRuixinZhang.github.io/Personal-academic-homepage/

Repository:

https://github.com/RayeRuixinZhang/Personal-academic-homepage

This repository works in two ways:

1. It hosts Ruixin Zhang's public academic homepage.
2. It provides a reusable plain HTML/CSS template for other researchers.

No build system is required.

## Project Structure

```text
.
|-- index.html
|-- styles.css
|-- README.md
|-- TEMPLATE_GUIDE.md
|-- PRIVATE_MATERIALS.md
|-- assets/
|   |-- headshot.png
|   `-- publication-images/
|       |-- fatty-liver-index-mortality.png
|       |-- hepatitis-b-incidence-xiamen.png
|       |-- intranasal-covid-vaccine.png
|       |-- masld-global-burden.png
|       |-- notifiable-diseases-covid.png
|       `-- pertussis-adults-burden.png
|-- encrypted-materials/
|   `-- personal-materials.zip.aes
`-- scripts/
    `-- decrypt-personal-materials.ps1
```

## Local Preview

Open `index.html` directly in a browser.

## Reuse This Template

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

See `TEMPLATE_GUIDE.md` for step-by-step customization notes.

## Private Materials

The original private materials are not stored as plain files in this repository.

They are stored only as an encrypted archive:

```text
encrypted-materials/personal-materials.zip.aes
```

See `PRIVATE_MATERIALS.md` for decryption instructions.

The archive password is intentionally not written into the repository.
