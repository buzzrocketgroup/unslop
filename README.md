# UNSLOP

A one-page sales site, a 6-page PDF, and a Gmail template for people who get LinkedIn-harvested AI slop in their inbox.

Site (after DNS + GitHub Pages): https://unstruct.com/

## What is in this folder

| Path | What it is |
| --- | --- |
| `index.html` | Landing page with the usual pitch tricks |
| `config.js` | Price + Gumroad URL |
| `guide/manual.html` | The manual (print this to PDF) |
| `dist/anti-slop-email-manual.pdf` | Generated download file for Gumroad |
| `email/template.html` | The roast / marketing reply |
| `email/gmail-setup.md` | Template + optional Gmail filter |
| `SETUP.md` | GitHub Pages + Gumroad wiring |
| `gumroad-copy.md` | Product text for Gumroad |

The PDF is gitignored on purpose. Do not host it on the public site.

## Print the PDF

Open `guide/manual.html` in Edge or Chrome → Print → **Save as PDF** → destination `dist/anti-slop-email-manual.pdf`.

Or run `.\generate-pdf.ps1` if Edge is installed.

## Local preview

```powershell
cd C:\Users\buzzh\unslop
python -m http.server 8080
```

Then open http://localhost:8080/
