Le procedure operative standard a livello org vivono qui. Le SOP specifiche del dipartimento vanno invece in `Departments/{nome}/sops/`.

## Cosa appartiene qui

- Processi interfunzionali che abbracciano più dipartimenti
- Playbook a livello org (risposta agli incidenti, assunzioni, revisione della sicurezza)
- Procedure di conformità e policy

## Cosa NON appartiene qui

- Flussi di lavoro specifici del dipartimento -> `Departments/{nome}/sops/`
- Processi di progetto una tantum -> `Projects/{nome}/`

## Regole

- Ogni SOP è un file autonomo: proprietà chiara, versione, data dell'ultima revisione nel frontmatter.
- Usa callout (`> [!important]`) per i passaggi non negoziabili e (`> [!warning]`) per le modalità di errore note.
- Fai riferimento alle persone responsabili tramite `[[wikilink]]`.

## Frontmatter

```yaml
---
type: sop
scope: org-wide
owner: [nome]
last_reviewed: YYYY-MM-DD
status: active
---
```
