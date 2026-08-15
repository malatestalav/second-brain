I progetti sono directory strutturate e viventi che crescono man mano che le informazioni si accumulano. Non sono cartelle solo README.

## Routing Progetti

Quando l'utente menziona qualcosa su un progetto, analizzalo e instradalo nel posto giusto:

| Tipo di contenuto | Indirizza a |
|---|---|
| Aggiornamento di stato, panoramica, scadenza | `Projects/{nome}/README.md` |
| Risultato di ricerca, analisi della concorrenza | `Projects/{nome}/research/{argomento}.md` |
| Spec, requisito, brief | `Projects/{nome}/specs/{nome}.md` |
| Bozza, script, contenuto scritto | `Projects/{nome}/drafts/{nome}.md` |
| Idea, brainstorm | `Projects/{nome}/ideas/{nome}.md` |
| Note di lavoro, bozze | `Projects/{nome}/notes/{nome}.md` |
| Feedback, commenti di revisione | `Projects/{nome}/feedback/{nome}.md` |

## Regole

- **Sottocartelle al volo**: Non pre-creare directory vuote. Quando arriva contenuto che necessita di una sottocartella, creala e scrivi il file. Aggiorna README.md per fare riferimento al nuovo contenuto.
- **README come indice**: Il README.md è il punto di ingresso con panoramica, stato, passi successivi e link al contenuto delle sottocartelle. Non duplicare il contenuto delle sottocartelle in esso.
- **Ciclo di vita**: Nuovo progetto = solo un README.md. Le sottocartelle appaiono man mano che emergono i tipi di contenuto. I progetti completati si spostano in `Intelligence/archive/{nome}/`.
- Includi `project:` nel frontmatter ogni volta che una nota è relativa a un progetto specifico.

## Cascata degli Obiettivi

Ogni azione dovrebbe ricondursi a un obiettivo organizzativo:

```
OKR Aziendali -> Obiettivi di Dipartimento -> Progetti -> Focus Mensile -> Revisione Settimanale -> Task Giornalieri
```

- Gli OKR aziendali e gli obiettivi di dipartimento vivono in `Context/strategy.md`
- Gli obiettivi specifici del dipartimento vivono in `Departments/{nome}/README.md`
- I progetti in `Projects/` si collegano agli OKR e agli obiettivi di dipartimento
- I task si collegano ai progetti tramite la `task-list/` del profilo attivo
- Durante le revisioni settimanali, controlla quali OKR non hanno nessun progetto attivo (stanno derivando)
- Durante le revisioni trimestrali, valuta il progresso degli OKR e aggiorna la cascata
