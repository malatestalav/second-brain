---
type: log
tags: [ingest, history]
---

# Ingest Log

Cronologia di tutte le fonti aggiunte al vault via `/ingest`.

## 2026-08-15

- **14:57** | ingest | book | serie-sul-management-vol-1 | 2 wiki pages created
  - Raw: `Library/books/serie-sul-management-vol-1.docx` (393k)
  - Wiki: [[management-series-vol-1]] (Framework: PR, Marketing, Admin Know-How)

- **14:57** | ingest | book | serie-sul-management-vol-2 | 2 wiki pages created
  - Raw: `Library/books/serie-sul-management-vol-2.docx` (377k)
  - Wiki: [[management-series-vol-2]] (Framework: Organizzazione e stabilizzazione)

**Totale ingestato:** 2 libri | 2 pagine wiki create | ~2M caratteri estratti

## 2026-08-18

- **23:50** | ingest bulk | pdf | 23 libri Dan Kennedy (marketing/business) | 24 wiki pages created (23 libri + hub [[dan-kennedy]])
  - Raw: `Library/pdfs/` — 23 PDF estratti via pypdf (poppler non disponibile, no Homebrew), copia originale + `.md` + `.meta.yml` per ciascuno
  - Wiki: [[dan-kennedy]] (hub) + 23 pagine framework in `Resources/frameworks/`, elenco completo in `index.md`
  - Skippati (richiedono OCR, testo non estraibile da PDF scansionato): `million-dollar-swipe-file-dan-kennedy` (270 pag., ~22 char/pag.), `no-b-s-wealth-attraction-in-the-new` (278 pag., ~34 char/pag.) — status `needs-ocr` nel `.meta.yml`, da riprendere con `/ingest resume` quando disponibile un tool OCR (tesseract/ocrmypdf)
  - Nota qualità: `no-b-s-trust-based-marketing-the-ult` aveva font offuscato nel PDF sorgente (estrazione testo garbled); sintesi recuperata leggendo pagine renderizzate come immagini, flag lasciato nella pagina wiki

**Totale ingestato:** 23 libri (+ 2 in attesa di OCR) | 24 pagine wiki create | ~7.6M caratteri estratti
