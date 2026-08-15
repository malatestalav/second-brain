# Library

Raw layer del vault. Documenti grezzi che l'utente droppa: PDF, articoli web, video, podcast, libri, immagini. Layer 1 del pattern [LLM Wiki](https://github.com/karpathy/llm-wiki).

## Regole d'oro

1. **Immutabile.** L'AI non modifica mai i file in `Library/`. Mai. I `.md` estratti dai documenti raw devono restare fedeli alla source.
2. **L'AI non scrive qui spontaneamente.** I file entrano solo via `/ingest` o drop manuale dell'utente.
3. **Naming slug-kebab.** Nome file: `{slug-kebab-case}.{ext}`. Niente spazi, niente caratteri speciali, lowercase. Es. `ferrari-regulatory-2026-q1.pdf`, non `Ferrari Regulatory 2026 Q1.pdf`.
4. **Tripletta per file.** Per ogni source `Library/{tipo}/{slug}.{ext}` esistono fianco a fianco:
   - `{slug}.{ext}` — l'originale immutabile
   - `{slug}.md` — testo estratto (pdftotext, transcript, markdown da web clipper)
   - `{slug}.meta.yml` — metadati: hash, autore, data, source URL, status (`ingested` / `pending`), tags

## Struttura

```
Library/
  pdfs/        documenti PDF (paper, regulatory, manuali, ebook)
  articles/    articoli web (markdown da Obsidian Web Clipper o estratto via defuddle)
  videos/      transcript YouTube/video (markdown)
  podcasts/    transcript podcast (markdown)
  books/       libri o capitoli (markdown)
  images/      immagini standalone (screenshot, diagrammi, infografiche)
  .cache/ocr/  output di ocrmypdf (cache, non toccare)
```

Una source non entra mai in due cartelle. Se non sai dove va, è probabilmente `articles/` o `books/`.

## Flow di ingestione

Il flow è gestito dalla skill `/ingest`. Sintesi:

1. Utente droppa file in `Library/{tipo}/` oppure passa un URL a `/ingest`
2. `/ingest` estrae il raw (`pdftotext`, `defuddle`, transcript YouTube, ecc.) → `.md`
3. Salva metadati → `.meta.yml`
4. Sintetizza summary + classifica → scrive pagina wiki in `Resources/{categoria}/` o `Intelligence/{categoria}/`
5. Aggiorna `index.md` e `Intelligence/log.md`
6. Aggiunge cross-reference alle entità menzionate (companies, frameworks, persone)

## Sharding a scala

Se il vault supera ~5000 file in `Library/pdfs/`, sharding per anno:
```
Library/pdfs/2024/
Library/pdfs/2025/
Library/pdfs/2026/
```

`/ingest` gestisce lo sharding automaticamente quando rileva la soglia.

## Immagini dentro PDF

`/ingest` estrae le figure con `pdfimages` (poppler-utils). Le salva accanto al PDF come `{slug}-img-001.png`, `{slug}-img-002.png`, ecc., e le linka nel `.md` estratto. Le immagini NON vengono descritte automaticamente con vision (sarebbe troppo costoso a scala). La descrizione vision avviene **on-demand** quando una query referenzia esplicitamente la figura, o quando `/os-optimizer` flagga un gap importante e l'utente lo autorizza.

## OCR per PDF scansionati

Se `pdftotext` ritorna meno di 500 caratteri per pagina, `/ingest` rileva PDF scansionato e propone di processarlo con `ocrmypdf`. L'utente conferma. Output cached in `Library/.cache/ocr/{hash}/`.

## Anti-pattern

- NON scrivere file in `Library/` a mano. Usa `/ingest` o drop dal Finder.
- NON modificare un `.md` estratto. Se vuoi correggere qualcosa, lo fai sulla pagina wiki sintetizzata in `Resources/` o `Intelligence/`.
- NON mettere documenti operativi (meeting notes, daily, task) qui. Quelli vanno nel layer OS (`Daily/`, `Intelligence/meetings/`, `task-list/`).
- NON archiviare summary o sintesi in `Library/`. Quelli vivono nel wiki layer (`Resources/`, `Intelligence/`).
