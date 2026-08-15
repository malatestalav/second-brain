Ogni dipartimento riceve una cartella strutturata con un README e SOP.

## Struttura

```
Departments/{nome-dept}/
  README.md    -- Team, obiettivi, link alle SOP
  sops/        -- Procedure operative standard specifiche del dipartimento
```

## Regole

- Quando emergono nuove informazioni sul dipartimento, crea o aggiorna `Departments/{nome}/README.md` con team, obiettivi e link alle SOP.
- Quando viene descritto un processo specifico del dipartimento ripetibile, acquisiscilo come SOP in `Departments/{nome}/sops/{nome}.md`.
- I processi a livello org vanno in `Intelligence/processes/` invece, non qui.
- Includi `department:` nel frontmatter ogni volta che una nota è relativa a un dipartimento specifico.
