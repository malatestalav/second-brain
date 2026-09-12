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
  - Nota: [[riunione-commerciale-2026-08-20]] (`Projects/HACCP Digitale/notes/`), punti chiave, argomentazioni dal playbook, strategia di commercializzazione, esportata anche in PDF
  - Spec: [[sop-processo-vendita]] (`Projects/HACCP Digitale/specs/`), procedura in 9 fasi, trigger/responsabile/output per ciascuna
  - Tracking: `appuntamenti-log.md`, `obiezioni-log.md`, `metriche-settimanali.md` (`Projects/HACCP Digitale/tracking/`), tabelle da compilare in tempo reale da [[Antonio Smaldini]]
  - Aggiornati: README del progetto HACCP Digitale, profilo di [[Antonio Smaldini]], task-list di [[Antonio Malatesta]]
  - Origine: sessione chat sulla preparazione della riunione commerciale del 20/08, non un ingest da fonte esterna

- **build** | workflow telefonate/WhatsApp per il commerciale | 3 file creati/aggiornati
  - Spec: [[workflow-commerciale-telefono-whatsapp]] (`Projects/HACCP Digitale/specs/`), giornata a blocchi orari, regola di canale per fase, script chiamata/messaggio, regole chiamate a freddo e no-show
  - Aggiornati: `appuntamenti-log.md` (nuova colonna "Ultimo Canale"), README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | gestione obiezioni per il commerciale | 3 file creati/aggiornati
  - Draft: [[gestione-obiezioni]] (`Projects/HACCP Digitale/drafts/`), struttura obiezione/risposta per prezzo, tempo/setup, scetticismo prodotto, non decide da solo, timing; collegato al playbook completo e al tracker obiezioni
  - Aggiornati: README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | workflow contatti caldi per il commerciale | 3 file creati/aggiornati
  - Spec: [[workflow-contatti-caldi]] (`Projects/HACCP Digitale/specs/`), percorso più corto per conoscenti personali di [[Antonio Smaldini]]: niente permission-to-sell formale, demo anche in videochiamata, referral chiesto subito alla chiusura, nessun retry aggressivo sul rifiuto
  - Aggiornati: `appuntamenti-log.md` (nuova colonna "Tipo Contatto": Caldo/Freddo), README progetto, profilo [[Antonio Smaldini]]
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **build** | export PDF dei documenti commerciali | 4 PDF creati
  - [[sop-processo-vendita]], [[workflow-commerciale-telefono-whatsapp]], [[workflow-contatti-caldi]], [[gestione-obiezioni]] esportati in PDF nelle rispettive cartelle, con link aggiunti nel README del progetto
  - Origine: richiesta diretta in chat, non un ingest da fonte esterna

- **[2026-08-31 14:20] ingest** | pdf | chiara-dosio-personal-brand-secrets-manuale | 3 pagine wiki toccate
  - Creato [[personal-brand-secrets-manuale]] (framework), [[chiara-dosio]] (hub autrice), [[unconventional]] (stub azienda)
  - Manuale preparatorio all'evento live "Personal Brand Secrets" (7-11 settembre 2026): framework TI VEDO → TI ASSOCIO → TI VALIDO, strategia contenuti, funnel di acquisizione organica su Instagram

## 2026-09-12

- **[2026-09-12] ingest bulk** | pdf + video + article | corso live completo "Personal Brand Secrets" (5 serate) | 11 pagine wiki create + 2 aggiornate
  - Raw: `Library/pdfs/chiara-dosio-pbs-*` (10 PDF slide/workbook, estrazione testo saltata perché coperta da trascrizioni e schede tematiche, + 1 zip "cervello AI" archiviato integro), `Library/videos/chiara-dosio-pbs-serata-{1..5}-trascrizione.{md,srt}` (5 trascrizioni integrali, ~88.353 parole, 10h12m di registrazione), `Library/articles/chiara-dosio-pbs-bonus-*` (2 HTML + 1 txt di materiale bonus)
  - Wiki creato: [[il-loop-di-distribuzione]], [[profile-funnel]], [[story-funnel]], [[il-framework-della-fiducia]], [[le-cinque-fasi-dell-acquisizione]], [[livelli-di-consapevolezza]], [[content-bank]], [[strutture-narrative-per-le-stories]], [[come-instagram-distribuisce-nel-2026]], [[casi-studio-chiara-dosio]], [[checklist-ottimizzazione-profilo-instagram]] (11 pagine framework, tutte in `Resources/frameworks/`)
  - Wiki aggiornato: [[chiara-dosio]] (hub, ora con sezione "il corso live completo" e elenco backlink), [[personal-brand-secrets-manuale]] (sezione "dal manuale al corso live" con rimando alle 11 pagine, nessuna duplicazione di contenuto)
  - Non creato per decisione esplicita: nessuna pagina dedicata al metodo "cervello AI" a 3 file della serata 5 (l'architettura `Context/` del vault lo supera già), citato solo di sfuggita nell'hub [[chiara-dosio]]
  - Contenuto scartato: un paragrafo nella scheda tematica sorgente "Il cervello AI" citava un presunto confronto con un file `.claude/skills/no-ai-slop/SKILL.md` e una "regola 27" mai esistiti in questo vault (materiale di un altro partecipante al corso, finito per errore nel pacchetto condiviso). Non riprodotto in nessuna pagina.
  - `index.md` aggiornato: 5 righe in sezione Video, 11 righe in sezione Framework, [[chiara-dosio]] aggiunto in sezione Hub
  - Totale ingestato: 18 file raw (10 pdf, 5 video, 3 bonus) | 11 pagine wiki create + 2 aggiornate | ~88k parole di trascrizione ingestate

- **[2026-09-12] build** | anti-slop-checklist | 1 pagina wiki creata
  - Creato [[anti-slop-checklist]] (`Resources/frameworks/`), a partire dalla skill anti-slop nello zip "cervello AI" (raw non estratto singolarmente, cfr. entry sopra)
  - Riprende solo le parti non coperte da regole esistenti: pattern strutturali da AI (bold-colon-bullet, staccato a tre frasi, negazione forzata, fiocchetto finale, preamboli da assistant) e riempitivi vuoti generici (davvero, concreto, utile, magico, potente...)
  - Esplicitamente non duplica: la regola 14 del `CLAUDE.md` root sull'em dash (già più rigida) e l'elenco parole bandite in [[brand]] (specifico HACCP Digitale), citati in cross-reference
  - Origine: richiesta diretta in chat, decisione utente di tenerla come sola pagina di riferimento, senza promuoverla a regola permanente in `CLAUDE.md`

- **[2026-09-12] ingest** | meeting-transcript | consulenza-mario-olivelli-funnel-lead-gen | 2 pagine wiki toccate
  - Raw: `Library/articles/consulenza-mario-olivelli-funnel-lead-gen.txt` (trascrizione Pocket AI) + `-pocket-summary.txt`, `.meta.yml` con data stimata 2026-09-08 (non presente nel file, confermata dall'utente come antecedente al build del 9/9)
  - Wiki creato: [[2026-09-08-consulenza-mario-olivelli-funnel-lead-gen]] (`Intelligence/meetings/general/`), pivot da call diretta a lead magnet a bassa frizione, regola above-the-fold sul bottone CTA, automazione DM Instagram via GHL
  - Wiki aggiornato: [[stakeholders]] (sezione Mario Olivelli, link alla trascrizione)
  - Nota: contenuto della call (lead magnet a report scaricabile) diverso dal funnel poi effettivamente costruito in [[funnel-questionario-ghl]] (questionario rimosso per bug di contatti duplicati), segnalato esplicitamente nella pagina meeting, nessuna riscrittura dello spec esistente
  - `index.md` aggiornato: 1 riga in sezione Articoli

- **[2026-09-12] ingest** | video (webinar) | mario-olivelli-info-business-arena-webinar | 2 pagine wiki toccate
  - Raw: `Library/videos/mario-olivelli-info-business-arena-webinar.txt` (trascrizione Pocket AI) + `-pocket-summary.txt` + `-mind-map.pdf` (mappa mentale allegata), `.meta.yml`
  - Wiki creato: [[offerta-irresistibile-mario-olivelli]] (`Resources/frameworks/`), 4 leve dell'offerta irresistibile, 4 fonti di traffico governabili, catena di convinzioni pre-vendita, vendita consulenziale vs push; cross-reference a [[livelli-di-consapevolezza]] (framework analogo di [[chiara-dosio]])
  - Wiki aggiornato: [[stakeholders]] (sezione Mario Olivelli, aggiunto il percorso a pagamento "Info Business Arena")
  - Contenuto scartato: il pitch commerciale del webinar (prezzo, bonus, scarcity, garanzia 90+90) non riprodotto come framework riusabile, solo menzionato come contesto, esplicitamente incompatibile con il posizionamento no-hype di [[brand]] di HACCP Digitale
  - `index.md` aggiornato: 1 riga in sezione Video, 1 riga in sezione Framework

- **[2026-09-12] audit** | os-optimizer | 46 file corretti, 2 pagine nuove
  - Em dash: 167 occorrenze rimosse in 24 file fuori da `Library/` (violavano la regola 14 di `CLAUDE.md`), incluso il lavoro della sessione stessa (`offerta-irresistibile-mario-olivelli.md`, meeting note Mario Olivelli)
  - H1 duplicati: rimossa l'intestazione `# Titolo` che ripeteva il nome del file in 20 pagine (`Context/brand.md`, `Context/team.md`, 15 pagine in `Resources/frameworks/`, `Resources/products/haccp-digitale.md`, `Resources/companies/unconventional.md`, `workflow-contatti-caldi.md`)
  - Wikilink orfani risolti: aggiunto `aliases: [HACCP Digitale]` a [[haccp-digitale]] (17 wikilink `[[HACCP Digitale]]` nel vault non risolvevano a nessuna nota); creata [[Mario Olivelli]] (`Team/External/contractors/mario-olivelli/`), mancante nonostante la tabella di routing di `CLAUDE.md` preveda un profilo dedicato per ogni collaboratore esterno
  - Corretto un uso improprio di wikilink verso file di memoria Claude (non note del vault) in [[funnel-questionario-ghl]]: `[[feedback_no_parola_rubare]]` e `[[feedback_verify_facts_before_drafting]]` convertiti in riferimento testuale
  - Non applicato: split di [[funnel-questionario-ghl]] (31KB, sopra budget F5) e riduzione di root `CLAUDE.md` (10.3KB, leggermente sopra soglia), segnalati come ottimizzazioni future non urgenti
  - Fuori scope per regola vault: gli em dash in `Library/pdfs/*` (raw layer, immutabile) non sono stati toccati
  - Report completo: `Intelligence/decisions/2026-09-12-vault-audit.html`

- **[2026-09-12] build** | lead-magnet-funnel, quiz-funnel, vendita-diretta-dai-contenuti | 3 pagine wiki create, 2 aggiornate
  - Creato [[lead-magnet-funnel]], [[quiz-funnel]], [[vendita-diretta-dai-contenuti]] (`Resources/frameworks/`): i tre flussi "strutturati" del manuale di [[chiara-dosio]] (sezione "05 · Il Lead Magnet Funnel") rimasti fuori dall'ingest del corso live perché non coperti dalle 5 trascrizioni serata per serata, trovati facendo grep diretto sul raw dopo una richiesta dell'utente sull'elenco completo dei funnel
  - Aggiornato [[chiara-dosio]] (hub, sezione "il corso live completo" ora cita 14 pagine framework invece di 11) e [[casi-studio-chiara-dosio]] (aggiunto il caso quiz funnel della serata 5: 1.700€ spesi, ritorno 12x, CAC 587€)
  - Origine: richiesta diretta in chat ("fammi un elenco dei funnel di cui ha parlato" + conferma di crearne le pagine), non un ingest da fonte nuova, la source (manuale) era già in `Library/pdfs/` dal 2026-08-31
  - `index.md` aggiornato: 3 righe in sezione Framework
