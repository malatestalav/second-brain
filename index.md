# Wiki Index

Catalogo content-oriented del wiki. Layer 2 del pattern [LLM Wiki](https://github.com/karpathy/llm-wiki). Aggiornato dall'AI a ogni `/ingest` o quando una pagina wiki viene creata/modificata.

L'AI legge questo file **prima** di rispondere a una `/query`, per orientarsi senza scansionare tutto il vault.

> [!important] Manutenzione
> Questo file è **LLM-owned**. Non modificarlo a mano: dillo all'AI e l'AI aggiorna le righe corrispondenti. Una riga per pagina, formato `- [Titolo](path) — one-line hook`.

---

## Sources

Documenti grezzi in `Library/`, raggruppati per tipo. Una voce per source ingestato. Linka al `.md` estratto (non al binario).

### PDF
<!-- L'AI aggiunge qui una riga per ogni PDF ingestato -->

### Articoli
<!-- L'AI aggiunge qui una riga per ogni articolo ingestato -->

### Video
<!-- L'AI aggiunge qui una riga per ogni video ingestato -->

### Podcast
<!-- L'AI aggiunge qui una riga per ogni podcast ingestato -->

### Libri
<!-- L'AI aggiunge qui una riga per ogni libro/capitolo ingestato -->

---

## Entità

Pagine che rappresentano entità (aziende, persone, prodotti, framework). Aggregano informazioni da più sources.

### Aziende
<!-- Resources/companies/ -->

### Framework
<!-- Resources/frameworks/ -->

### Prodotti
<!-- Resources/products/ -->

### Competitor
<!-- Intelligence/competitors/ -->

---

## Concetti & Sintesi

Pagine di sintesi, analisi, comparazioni, ricerca tematica. Spesso generate via `/query` con file-back, o tramite ingestione di research papers.

### Ricerca
<!-- Resources/research/ -->

### Case study
<!-- Resources/case-studies/ -->

### Mercato
<!-- Intelligence/market/ -->

### Decisioni
<!-- Intelligence/decisions/ -->

---

## Hub

Pagine con molti backlink (entità/concetti centrali). L'AI le aggiorna man mano che diventano evidenti.

<!-- Esempio:
- [[Ferrari]] — 42 backlink, hub per il progetto regulatory intelligence
- [[Claude Code]] — 31 backlink, hub per il framework di enablement
-->

---

## Note di manutenzione

- Ordinamento: alfabetico dentro ogni sezione
- Quando una pagina viene rinominata, aggiorna sia il link che il path
- Quando una pagina viene archiviata in `Intelligence/archive/`, sposta la voce nella sezione **Archiviate** in fondo
- Se l'index supera 200 voci per sezione, considera lo split in sub-index per categoria

## Archiviate

<!-- Pagine spostate in Intelligence/archive/ ma ancora referenziabili -->
