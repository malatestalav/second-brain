Questa cartella è il **wiki layer per entità, framework e ricerca** (parte 1, l'altra è `Intelligence/`). Layer 2 del pattern [LLM Wiki](https://github.com/karpathy/llm-wiki).

> [!important] LLM-owned
> Pagine in questa cartella sono **scritte dall'LLM**, sintetizzando dai documenti in `Library/`. Tu leggi, indirizzi, non modifichi a mano. Eccezione: `templates/` e `brand-assets/` sono curati dall'utente.

## Struttura

| Sottocartella | Cosa va qui | Owner |
|---|---|---|
| `companies/` | Profili azienda (cliente, prospect, partner, fornitore). Una pagina per azienda, aggrega info da articoli, ricerca, meeting | LLM |
| `case-studies/` | Case study (interni o di terzi). Una pagina per case study | LLM |
| `frameworks/` | Framework e metodologie sintetizzate dai paper/articoli ingestati | LLM |
| `products/` | Schede prodotto interno / esterno | LLM |
| `research/` | Sintesi di paper, articoli di ricerca, deep-dive tematici | LLM |
| `design-docs/` | Design doc, decisioni architetturali, spec tecniche | User + LLM |
| `compensation/` | Tabelle e logiche di compensazione team | User |
| `brand-assets/` | Logo, font, color palette, immagini di brand | User |
| `templates/` | Template HTML/markdown per skill (corporate deck, training, ecc.) | User |

## Flow tipico

1. Utente droppa un paper in `Library/pdfs/`
2. `/ingest` estrae, classifica come "research", sintetizza in `Resources/research/{slug}.md`
3. La sintesi linka entità menzionate via `[[wikilink]]`: aziende → `Resources/companies/`, framework → `Resources/frameworks/`, persone → `Team/External/` o `Context/stakeholders.md`
4. Se l'entità non esiste, `/ingest` la crea come pagina stub e segnala all'utente
5. `index.md` viene aggiornato

## Regole

- Una pagina = una entità. Non aggregare entità diverse nello stesso file.
- Usa `[[wikilink]]` per linkare entità dentro la prosa. Mai liste puntate di link.
- Quando una pagina viene aggiornata, append un'entry in `Intelligence/log.md`.
- Pagina orfana = pagina senza inbound link da almeno 1 altra nota. `/os-optimizer` flagga.
- Frontmatter standard: `type`, `date`, `tags` (almeno 2), `status` (`draft` / `active` / `archived`).
