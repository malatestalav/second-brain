Questa cartella contiene la conoscenza organizzativa: meeting, concorrenti, intelligence di mercato, decisioni, processi, archivio. Insieme a `Resources/`, costituisce il **wiki layer** (Layer 2 LLM Wiki) — LLM-owned per le sotto-cartelle di conoscenza pura.

> [!important] Ownership
> - `meetings/` → user-owned (sono note operative, scritte durante/dopo i meeting)
> - `competitors/`, `market/`, `decisions/`, `processes/` → **LLM-owned** quando alimentate da `/ingest` di paper/articoli; user-owned quando l'utente le crea direttamente. In entrambi i casi: pagine autonome, una entità = una pagina.
> - `log.md` (alla root di Intelligence/) → append-only, scritto dall'AI dopo ogni `/ingest`, decisione, build significativa.
> - `archive/` → file mossi qui quando obsoleti.

## Routing

| Categoria | Tipo | Indirizza a |
|---|---|---|
| Meeting | Stand-up di team / daily huddle | `meetings/team-standups/` |
| Meeting | Chiamata cliente | `meetings/client-calls/` |
| Meeting | One-on-one | `meetings/one-on-ones/` |
| Meeting | Revisione board | `meetings/board-reviews/` |
| Meeting | All-hands | `meetings/all-hands/` |
| Meeting | Sync cross-team | `meetings/cross-team/` |
| Meeting | Qualsiasi altro | `meetings/general/` |
| Conoscenza | Insight competitivo | `competitors/{nome}.md` |
| Conoscenza | Insight di mercato | `market/{argomento}.md` |
| Conoscenza | Decisione con ragionamento | `decisions/YYYY-MM-DD-{titolo}.md` |
| Conoscenza | Processo / SOP a livello org | `processes/{nome}.md` |
| Archivio | Contenuto completato / archiviato | `archive/{nome}/` |

## Record di Decisione

Ogni record di decisione dovrebbe includere il *perché* con contesto specifico: chi era coinvolto, quale tensione lo ha provocato, quale trade-off è stato fatto. Usa `> [!important]` per l'enunciato della decisione principale e `> [!warning]` per rischi noti o trade-off.

## Profili Concorrenti

Usa `> [!important]` per le implicazioni strategiche e `> [!tip]` per le opportunità identificate.

## Regole

- Le SOP specifiche del dipartimento vanno in `Departments/{nome}/sops/`, non in `processes/`. `processes/` è solo per SOP a livello org.
- Sposta i progetti completati, i concorrenti dismessi e la ricerca superata in `archive/`.
