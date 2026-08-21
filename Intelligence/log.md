---
type: log
tags: [ingest, history]
status: active
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
 - Raw: `Library/pdfs/` . 23 PDF estratti via pypdf (poppler non disponibile, no Homebrew), copia originale + `.md` + `.meta.yml` per ciascuno
 - Wiki: [[dan-kennedy]] (hub) + 23 pagine framework in `Resources/frameworks/`, elenco completo in `index.md`
 - Skippati (richiedono OCR, testo non estraibile da PDF scansionato): `million-dollar-swipe-file-dan-kennedy` (270 pag., ~22 char/pag.), `no-b-s-wealth-attraction-in-the-new` (278 pag., ~34 char/pag.) . status `needs-ocr` nel `.meta.yml`, da riprendere con `/ingest resume` quando disponibile un tool OCR (tesseract/ocrmypdf)
 - Nota qualità: `no-b-s-trust-based-marketing-the-ult` aveva font offuscato nel PDF sorgente (estrazione testo garbled); sintesi recuperata leggendo pagine renderizzate come immagini, flag lasciato nella pagina wiki

**Totale ingestato:** 23 libri (+ 2 in attesa di OCR) | 24 pagine wiki create | ~7.6M caratteri estratti

- **00:35** | ingest | pdf | procedure-haccp-digitale | 3 wiki pages created
  - Raw: `Library/pdfs/procedure-haccp-digitale.md` (63 pag., 89k caratteri)
  - Wiki: [[procedure-haccp-digitale]] (Processo: 13 GMP e punti critici di controllo HACCP)
  - Stub creati: [[haccp-digitale]] (prodotto software), [[nexvision]] (azienda produttrice)

**Totale ingestato:** 1 documento | 3 pagine wiki create | ~89k caratteri estratti

## 2026-08-21

- **build** | processo di vendita HACCP Digitale | 6 file creati/aggiornati, 0 pagine wiki (contenuto OS-layer, non da Library/)
  - Nota: [[riunione-commerciale-2026-08-20]] (`Projects/HACCP Digitale/notes/`) — punti chiave, argomentazioni dal playbook, strategia di commercializzazione, esportata anche in PDF
  - Spec: [[sop-processo-vendita]] (`Projects/HACCP Digitale/specs/`) — procedura in 9 fasi, trigger/responsabile/output per ciascuna
  - Tracking: `appuntamenti-log.md`, `obiezioni-log.md`, `metriche-settimanali.md` (`Projects/HACCP Digitale/tracking/`) — tabelle da compilare in tempo reale da [[Antonio Smaldini]]
  - Aggiornati: README del progetto HACCP Digitale, profilo di [[Antonio Smaldini]], task-list di [[Antonio Malatesta]]
  - Origine: sessione chat sulla preparazione della riunione commerciale del 20/08, non un ingest da fonte esterna

- **build** | workflow telefonate/WhatsApp per il commerciale | 3 file creati/aggiornati
  - Spec: [[workflow-commerciale-telefono-whatsapp]] (`Projects/HACCP Digitale/specs/`) — giornata a blocchi orari, regola di canale per fase, script chiamata/messaggio, regole chiamate a freddo e no-show
  - Aggiornati: `appuntamenti-log.md` (nuova colonna "Ultimo Canale"), README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | gestione obiezioni per il commerciale | 3 file creati/aggiornati
  - Draft: [[gestione-obiezioni]] (`Projects/HACCP Digitale/drafts/`) — struttura obiezione/risposta per prezzo, tempo/setup, scetticismo prodotto, non decide da solo, timing; collegato al playbook completo e al tracker obiezioni
  - Aggiornati: README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | workflow contatti caldi per il commerciale | 3 file creati/aggiornati
  - Spec: [[workflow-contatti-caldi]] (`Projects/HACCP Digitale/specs/`) — percorso più corto per conoscenti personali di [[Antonio Smaldini]]: niente permission-to-sell formale, demo anche in videochiamata, referral chiesto subito alla chiusura, nessun retry aggressivo sul rifiuto
  - Aggiornati: `appuntamenti-log.md` (nuova colonna "Tipo Contatto": Caldo/Freddo), README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | export PDF dei documenti commerciali | 4 PDF creati
  - [[sop-processo-vendita]], [[workflow-commerciale-telefono-whatsapp]], [[workflow-contatti-caldi]], [[gestione-obiezioni]] esportati in PDF nelle rispettive cartelle, con link aggiunti nel README del progetto
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna
