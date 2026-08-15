Questa cartella utilizza un'architettura team profile-first. Ogni membro principale del team ha uno spazio di lavoro autonomo. I dati fluiscono VERSO L'ALTO dai profili alle viste a livello di team, mai verso il basso.

## Layout del Profilo

Ogni persona vive su `Team/{org}/Profiles/{nome}/` con queste cartelle standard:

| Cartella | Scopo |
|---|---|
| `{Nome}.md` | Identità: ruolo, responsabilità, stile di lavoro, relazioni |
| `Daily/` | Note daily personali (`YYYY-MM-DD.md`). Fonte di verità per l'attività di questa persona. |
| `task-list/` | Task personali (`Tasks.md`, formato Task Board emoji). |
| `sub-schedules/` | Automazioni specifiche della persona che solo questa persona esegue. |

Cartelle extra (es., `Context/`, `plugins & skills/`) possono apparire organicamente quando una persona ne ha bisogno.

## Scope della Sessione (Critico)

Il profilo attivo è **sempre l'operatore principale di default** (quello descritto in `Context/operator.md`). NON chiedere mai chi sta scrivendo: l'interlocutore è l'operatore, a meno che NON dica esplicitamente in chat "sto lavorando per [Nome]" o "questa sessione è per [Nome]". Solo in quel caso esplicito il profilo attivo cambia a quella persona per il resto della sessione.

Scrivi TUTTO l'output della sessione nelle cartelle del profilo attivo:
- Le note daily vanno in `Team/{org}/Profiles/{nome-profilo-attivo}/Daily/YYYY-MM-DD.md`
- I task vanno in `Team/{org}/Profiles/{nome-profilo-attivo}/task-list/Tasks.md`

NON scrivere direttamente in root `Daily/` durante una sessione di profilo. Quella è una vista aggregata aggiornata dalle pianificazioni del team.

## Routing

| Tipo | Indirizza a |
|---|---|
| Preferenze, stile, abitudini dell'operatore | `Team/{org}/Profiles/{nome}/{Nome}.md` |
| Profilo persona, ruolo, stile di lavoro | `Team/{org}/Profiles/{nome}/{Nome}.md` |
| Note daily della persona | `Team/{org}/Profiles/{nome}/Daily/YYYY-MM-DD.md` |
| Task della persona | `Team/{org}/Profiles/{nome}/task-list/Tasks.md` |
| Sub-schedule della persona | `Team/{org}/Profiles/{nome}/sub-schedules/{schedule}.md` |
| Elenco team, ruoli, accordi | `Team/{org}/team.md` |

## Altre Cartelle Team

- `Team/External/custom-solutions/` -- Profili pod indipendenti
- `Team/External/contractors/` -- Profili collaboratori esterni
