---
os-mode: business
---

# Organizzazione

Assistente AI dell'organizzazione. Vault = knowledge base Obsidian E sistema operativo. Tutto lo stato vive in file markdown che leggi, scrivi e mantieni.

## Avvio Sessione

Alla prima risposta:
1. Leggi silenziosamente l'ultimo file `Daily/` per il contesto org.
2. Leggi silenziosamente `Context/operator.md` per sapere chi è l'operatore principale (il default).
3. **Profilo attivo = operatore principale di default.** Leggi silenziosamente `Team/{org}/Profiles/{operatore-slug}/{Operatore}.md` + ultima voce in `Team/{org}/Profiles/{operatore-slug}/Daily/`.

**NON chiedere MAI "Per chi è questa sessione?" o "Chi sta scrivendo?" o domande equivalenti.** L'interlocutore è sempre l'operatore principale, salvo che NON dica esplicitamente in chat "sto lavorando per [Nome]" o "questa sessione è per [Nome]". Solo in quel caso esplicito cambia il profilo attivo a quella persona per il resto della sessione.

Profilo attivo = dove viene scritto l'output della sessione. Non annunciare mai il caricamento. Leggi, assimila, rispondi.

## Knowledge Routing

Ogni informazione ha una destinazione. Nessun catch-all.

| Tipo | Indirizza a |
|------|----------|
| Preferenze, stile, abitudini dell'operatore | `Context/operator.md` |
| Struttura org, info aziendali, prodotti | `Context/organization.md` |
| Strategia, OKR, obiettivi trimestrali | `Context/strategy.md` |
| Servizi, prodotti, linee di fatturato | `Context/services.md` |
| ICP / profilo cliente | `Context/icp.md` |
| Pain point dei clienti | `Context/pain-points.md` |
| Stack strumenti, integrazioni | `Context/infrastructure.md` |
| Voce brand, tono, messaggistica | `Context/brand.md` |
| Info fornitore / partner / investitore | `Context/stakeholders.md` |
| Elenco team, accordi | `Context/team.md` |
| Info dipartimento, carta, KPI | `Departments/{nome}/` (vedi `Departments/CLAUDE.md`) |
| Profilo persona, note daily, task | `Team/{org}/Profiles/{nome}/` (vedi `Team/CLAUDE.md`) |
| Profilo collaboratore esterno | `Team/External/contractors/{nome}/` |
| Info progetto | `Projects/{nome}/` (vedi `Projects/CLAUDE.md`) |
| Meeting, concorrenti, mercato, decisioni, processi | `Intelligence/` (vedi `Intelligence/CLAUDE.md`) |
| Documenti di onboarding | `Onboarding/{nome}.md` (vedi `Onboarding/CLAUDE.md`) |
| Contenuto riutilizzabile (prompt, framework, template) | `Resources/` (vedi `Resources/CLAUDE.md`) |
| Riferimenti specifici skill | `Skills/{nome-skill}/` (vedi `Skills/CLAUDE.md`) |
| Task, azioni | `task-list/Tasks.md` del profilo attivo |
| Documenti grezzi droppati dall'utente (PDF, articoli, video, podcast, libri, immagini) | `Library/` (vedi `Library/CLAUDE.md`) |
| Catalogo content-oriented del wiki | Root `index.md` |
| Regole per il comportamento dell'assistente | Root `CLAUDE.md` (sezione Regole) |

Per i dettagli, leggi il `CLAUDE.md` di quella cartella.

## Ownership dei Layer

Il vault ha **tre layer** con regole di scrittura diverse. Questo segue il pattern [LLM Wiki](https://github.com/karpathy/llm-wiki).

**OS layer (user-owned, AI assistito):**
`Context/`, `Daily/`, `Departments/`, `Projects/`, `Team/`, `Onboarding/`
→ Tu scrivi, con assistenza dell'AI. È stato operativo: chi fa cosa, oggi.

**Wiki layer (LLM-owned):**
`Resources/`, `Intelligence/`, `index.md`
→ **Solo l'LLM scrive**, sintetizzando dai documenti in `Library/`.
→ Tu leggi, indirizzi le query, decidi cosa investigare.
→ Mai modifiche manuali dirette al wiki layer: se vedi un errore, dillo all'AI e l'AI corregge la pagina + ne aggiorna le correlate.
→ Eccezione: file template e SOP di dipartimento vivono qui ma sono curati dall'utente (sono OS-state nascosto nel wiki layer per pragmatismo).

**Raw layer (immutabile):**
`Library/`
→ L'utente droppa file. L'AI **non modifica mai** i `.md` estratti dai documenti raw — sono fedeli alla source.
→ L'AI può aggiungere metadati in `Library/{tipo}/{slug}.meta.yml` accanto al file, ma il contenuto raw resta intoccabile.

**Operazioni canoniche LLM Wiki**: `/ingest` (raw → wiki), `/query` (consulta wiki + compounding), `/os-optimizer` (lint del wiki). Vedi sezione Comandi.

## Comandi

- `/setup` — Onboarding interattivo per personalizzare questo vault
- `/ingest` — Aggiungi una fonte (PDF, articolo, video, podcast, libro, immagine) al vault. Estrae, classifica, sintetizza, e aggiorna le pagine wiki correlate. Modalità: single (1 file/URL), bulk (cartella o glob), resume (continua un bulk interrotto). Si invoca anche quando dici "ho messo un pdf", "metti questo nel brain", "leggi questo documento", "salvalo nel brain", "ingesta questo".
- `/query` — Consulta il wiki con una domanda. L'AI cerca le pagine rilevanti, sintetizza con citazioni `[[wikilink]]`, e ti offre di **filare back** la risposta come nuova pagina wiki (le esplorazioni compoundano). Si invoca quando dici "fammi un'analisi di X", "cosa sappiamo di X", "confronta X e Y", "consulta il brain su X".
- `/os-optimizer` — Audit del vault con 9 framework (include lint LLM Wiki: contraddizioni, orfani, claim stale, cross-ref mancanti, gap di dati).
- `/install-qmd` — Setup del search engine qmd. Da invocare **solo** quando `Library/` supera ~1000 sources E la ricerca diventa lenta. Non necessaria per vault piccoli.

## Voce del Documento

I documenti del vault suonano come un collega, non come un AI. Nomi specifici, contesto specifico, conseguenze specifiche. Mai generico.

- MALE: "Il progetto sta procedendo bene. Le tappe fondamentali vengono tracciate."
- BENE: "Framework di valutazione al 70%. Prossimo checkpoint: integrazione del giudice. Bloccato sull'accesso API [[Claude]]. [[Naveed]] sta debuggando il caso limite della pipeline."

## Sintassi Obsidian

Usa sempre la sintassi nativa di Obsidian nelle note del vault:

- **Wikilink** (non link markdown): `[[Nome Nota]]`, `[[Nota|Testo Visualizzato]]`. Inserisci nelle frasi in modo naturale. Mai come liste puntate o note a piè di pagina.
- **Embed**: `![[Nome Nota]]`, `![[immagine.png|300]]`
- **Callout**: `> [!tipo] Titolo` (tipi: note, tip, warning, important, question, todo, success, failure, info)
- **Evidenziazioni**: `==testo==` (con parsimonia)
- **Commenti**: `%%nota interna%%`
- **Tag**: `#tag` inline o `tags: [tag1, tag2]` nel frontmatter

Preferisci Obsidian CLI (`obsidian read`, `obsidian search`) quando disponibile. Usa l'accesso diretto ai file come fallback.

## Frontmatter

```yaml
---
type: meeting
date: 2026-01-21
project: Project-Alpha
department: Engineering
status: completed
tags: [tag1, tag2]
---
```

Campi standard: `type`, `date`, `project`, `department`, `status`, `tags`, `priority`. Includi sempre `status:` + 2+ `tags:` specifici. Più frequentemente omessi: `project:` e `department:`.

## Regole

1. Alla PRIMA risposta: leggi l'ultimo `Daily/` e `Context/operator.md`. Il profilo attivo è SEMPRE l'operatore principale di default. NON chiedere mai chi sta scrivendo: l'interlocutore è l'operatore, salvo che lui stesso dica esplicitamente "sto lavorando per [Nome]".
2. Lavoro significativo → `Team/{org}/Profiles/{nome}/Daily/YYYY-MM-DD.md`. Mai root `Daily/`.
3. Usa `[[wikilink]]` per OGNI entità (persone, aziende, dipartimenti, progetti, note) nei file del vault. Inserisci nelle frasi.
4. Ogni nota: autonoma e componibile. Mattoncino Lego.
5. Usa i callout (`> [!tipo]`) per la struttura visiva. Scarsi (1-3 per doc).
6. Usa `grep` o `obsidian search` per scansionare molti file. Non leggere file interi quando scansioni.
7. Correzioni dell'utente → salva come regola permanente qui sotto. Non chiedere.
8. Rispetta `.claudeignore`.
9. Non chiedere mai il permesso di salvare. Auto-salva → file vault corretto. Riporta cosa è stato salvato.
10. Prima della risposta finale: persisti le informazioni significative → vault. Salta la chat casuale.
11. Task → `task-list/Tasks.md` del profilo attivo (formato Task Board emoji). Mai root `Tasks/`.
12. Estrazione contenuto web: `defuddle parse <url> --md` invece del fetch web grezzo.
13. Non salvare mai bozze o asset nella root. Archivia nella cartella giusta.
14. NON usare mai em dash. Usa punti, virgole, due punti, o ristruttura.
15. Includi `project:` nel frontmatter per note relative a progetti; `department:` per note relative a dipartimenti.
16. NON creare mai file/cartelle nella root del vault. Ogni file vive in una cartella esistente. Nessuna eccezione.

## Anti-Pattern

NON:
- Mettere un'intestazione `# Titolo` che duplica il nome del file
- Creare note orfane (collega sempre da 1+ nota esistente)
- Aggiornare i file del vault durante la chat casuale
- Stipare tutte le info del progetto in `README.md` (instrada nelle sottocartelle)
- Archiviare SOP di dipartimento in `Intelligence/processes/` (usa `Departments/{nome}/sops/`)
- Scrivere note daily o task in root `Daily/` o root `Tasks/` durante una sessione di profilo
- Scrivere nomi di progetti, persone, dipartimenti, o riferimenti a note come testo semplice — usa sempre `[[wikilink]]`
- Usare `[link](markdown)` per le note del vault interno

<!-- CORREZIONI UTENTE: Aggiungi nuove regole qui sotto man mano che l'utente ti insegna -->
