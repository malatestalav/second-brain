---
type: spec
project: HACCP Digitale
status: in-build
tags: [spec, gestionale, crm, commerciale]
---

# Spec — Gestionale Commerciale HACCP Digitale

Webapp che digitalizza il funnel di vendita, oggi tracciato nel file `ATTIVITÀ COMMERCIALE (nuova).xlsx` (Desktop/HACCP DIGITALE/COMMERCIALE), un mini-CRM Excel con formule già in uso da tre commerciali: [[Antonio Smaldini]], [[Vito Romano]], [[Antonio Malatesta]]. Resta dentro il progetto [[HACCP Digitale]], non è un progetto a parte.

> [!info] Stato
> MVP in build, testato in locale con Supabase reale. Codice in repo separato, fuori dal vault: `~/Desktop/haccp-digitale-crm`. Stack: Next.js (App Router, TypeScript, Tailwind) + Supabase (Postgres, Auth, RLS), stesso pattern di [[Essenza Latina]]. Logo e palette bianco/verde (`#169149`) del brand HACCP Digitale. Progetto Supabase "HACCP COMMERCIALE" creato e collegato, 3 utenti Auth creati. Dominio previsto: **www.haccpcommerciale.it**, in registrazione su Aruba — deploy e collegamento dominio non ancora fatti.

## Moduli della webapp

1. **Registro** (`contatti` + `/admin/registro`) — una riga per contatto/visita: data, tipo (`Chiamata / WhatsApp` / `Visita in loco`), locale, telefono, commerciale, esito contatto, data/ora appuntamento, esito appuntamento, pacchetto venduto, data attivazione licenza, prossimo richiamo, note. Aggiornabile in tempo reale riga per riga.
2. **Liste** (`liste_valori` + `/admin/liste`) — valori a tendina editabili da UI senza toccare codice. Seed iniziale identico al vecchio file Excel: 2 tipi attività, 5 esiti contatto, 5 esiti appuntamento, 3 commerciali.
3. **Pacchetti** (`pacchetti` + `/admin/pacchetti`) — prezzi di vendita configurabili (nome + importo), non più un prezzo fisso a 300€: ogni vendita nel Registro si assegna a un pacchetto, e la dashboard calcola il fatturato reale sommando i pacchetti venduti (segnala in rosso le vendite senza pacchetto assegnato).
4. **Licenze** (`/admin/licenze`) — durata 12 mesi dalla data di attivazione (auto-compilata a oggi quando un contatto passa a "Venduto", modificabile a mano). Calcola scadenza = attivazione + 12 mesi, stato Attiva / In scadenza (≤30gg, avviso arancione) / Scaduta (rosso). Dashboard mostra contatori di licenze in scadenza/scadute con link diretto.
5. **Dashboard** (`/admin`) — stesse formule del foglio Excel originale: funnel a 6 fasi con % sulla fase precedente, tasso di chiusura complessivo, fatturato reale da pacchetti, richiami da fare oggi o scaduti, licenze in scadenza/scadute, performance per commerciale, breakdown esiti contatto/appuntamento. Tutto calcolato live dal Registro.

Le pagine statiche "Guida obiezioni" e "Funnel e script" (presenti nel primo MVP) sono state rimosse su richiesta dell'utente: non servivano, il contenuto restava comunque nei documenti del progetto ([sop-processo-vendita.md](sop-processo-vendita.md), `Workflow_Commerciale_HACCP_Digitale.docx`).

## Modello dati

Migration in `supabase/migrations/` nel repo, in ordine: `0001_init.sql` (schema base + RLS), `0002_seed.sql` (liste iniziali), `0003_pacchetti.sql` (tabella pacchetti, colonna `pacchetto_id` su contatti, rimozione tabelle guida/script), `0004_licenze.sql` (colonna `data_attivazione` su contatti). Tutte le tabelle richiedono utente Supabase Auth autenticato, nessuna pagina pubblica.

## Prossimi passi

- Registrazione dominio **www.haccpcommerciale.it** su Aruba (in corso, azione dell'utente).
- Deploy su Vercel e collegamento del dominio via DNS Aruba.
- Import delle righe già presenti nel vecchio file Excel, se presenti al momento del passaggio.
