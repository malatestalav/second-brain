Materiale di riferimento modificabile dall'utente per le singole skill. Ogni skill riceve una sottocartella. Le skill leggono da qui a runtime.

## Struttura

```
Skills/{nome-skill}/
  notes.md            -- Note dell'operatore, voce, preferenze di lavoro
  strategy.md         -- Approccio di alto livello per questa skill
  references/
    {argomento}.md    -- Esempi, template, contesto più approfondito
```

## Regole

- Una cartella per skill. Il nome della cartella corrisponde allo slug della skill (kebab-case).
- `notes.md` è per la guida breve, con la voce dell'operatore, che la skill dovrebbe rispettare.
- `references/` è per esempi e materiale di riferimento più lungo che la skill carica su richiesta.
- Non duplicare qui il contenuto del SKILL.md della skill. Questa cartella è per la tua *personalizzazione*.
- Quando costruisci una nuova skill, crea la sua cartella qui allo stesso tempo.
