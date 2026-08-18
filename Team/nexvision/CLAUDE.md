---
type: routing-index
organization: nexvision
updated: 2026-08-15
---

# Nexvision Team Routing

## Struttura

```
Team/nexvision/Profiles/
 antonio-malatesta/
 Antonio Malatesta.md
 Daily/
 YYYY-MM-DD.md
 task-list/
 Tasks.md
 vito-romano/
 Vito Romano.md
 Daily/
 YYYY-MM-DD.md
 task-list/
 Tasks.md
```

## Profili Attivi

| Nome | Ruolo | Riporta a | Link |
|------|------|---|---|
| [[Antonio Malatesta]] | Founder | Nessuno (CEO) | `./Profiles/antonio-malatesta/` |
| [[Vito Romano]] | Co-founder | Condiviso con Antonio | `./Profiles/vito-romano/` |

## Collaboratori Esterni

| Nome | Tipo | Ruolo | Link |
|------|------|---|---|
| [[Antonio Smaldini]] | Contractor (Partita IVA) | Commerciale | `../External/contractors/antonio-smaldini/` |

## Profili di Sistema

`Vault-Operator` non è una persona: è l'agente di manutenzione giornaliero automatizzato del vault (housekeeping, aggregazione daily, lint). Vive in `Profiles/Vault-Operator/` con lo stesso layout dei profili umani (`Daily/`, `task-list/`) per riuso della meccanica di scrittura, ma non compare tra i "Profili Attivi" e non è mai il profilo attivo di una sessione utente. Il suo comportamento è definito in `Profiles/Vault-Operator/operator-prompt.md`.

## Routing

- **Profilo attivo di default:** [[Antonio Malatesta]] (founder)
- **Sessioni di profilo:** Scrivere in `Team/nexvision/Profiles/{nome}/Daily/YYYY-MM-DD.md`
- **Task personali:** Ogni persona ha `task-list/Tasks.md`
- **Vito (contractor):** Non ha giorno fisso . contattato via WhatsApp per support

## Note

- Azienda appena nata (20 giorni). Team piccolo e agile.
- Nessun dipartimento formale . ruoli definiti ma flessibili.
