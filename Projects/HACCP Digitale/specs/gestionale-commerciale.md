---
type: spec
project: HACCP Digitale
status: in-build
tags: [spec, gestionale, crm, commerciale]
---

# Spec — Gestionale Commerciale HACCP Digitale

Webapp che digitalizza il funnel di vendita, oggi tracciato nel file `ATTIVITÀ COMMERCIALE (nuova).xlsx` (Desktop/HACCP DIGITALE/COMMERCIALE), un mini-CRM Excel con formule già in uso da tre commerciali: [[Antonio Smaldini]], [[Vito Romano]], [[Antonio Malatesta]]. Resta dentro il progetto [[HACCP Digitale]], non è un progetto a parte.

> [!info] Stato
> MVP scaffoldato e buildato con successo. Codice in repo separato, fuori dal vault: `~/Desktop/haccp-digitale-crm`. Stack: Next.js (App Router, TypeScript, Tailwind) + Supabase (Postgres, Auth, RLS), stesso pattern di [[Essenza Latina]]. Dominio previsto: **www.haccpcommerciale.it**, in registrazione su Aruba — deploy e collegamento dominio non ancora fatti, in attesa che dominio e account (Supabase, Vercel) siano pronti.

## Le 5 aree dell'Excel → moduli della webapp

1. **Registro** (una riga per contatto/visita) → tabella `contatti` + `/admin/registro`: data, tipo (`Chiamata / WhatsApp` / `Visita in loco`), locale, telefono, commerciale, esito contatto, data/ora appuntamento, esito appuntamento, note, prossimo richiamo. Aggiornabile in tempo reale riga per riga.
2. **Liste** (valori a tendina) → tabella `liste_valori` + `/admin/liste`, editabile da UI senza toccare codice. Seed iniziale identico al file: 2 tipi attività, 5 esiti contatto, 5 esiti appuntamento, 3 commerciali.
3. **Dashboard** → `/admin`, stesse formule del foglio Excel: funnel a 6 fasi con % sulla fase precedente, tasso di chiusura complessivo, fatturato stimato (vendite × 300€, stesso moltiplicatore della formula `B11*300`), richiami da fare oggi o scaduti, performance per commerciale, breakdown esiti contatto/appuntamento. Tutto calcolato live dal Registro.
4. **Guida obiezioni** → tabella `guida_obiezioni` + `/admin/obiezioni`, le 7 obiezioni del file con risposta suggerita.
5. **Funnel e script** → tabella `contenuti_riferimento` + `/admin/script`, sintesi delle fasi 0-6 di `Workflow_Commerciale_HACCP_Digitale.docx` con gli script pronti per WhatsApp/telefono.

## Modello dati

Vedi `supabase/migrations/0001_init.sql` (schema + RLS, tutte le tabelle richiedono utente Supabase Auth autenticato, nessuna pagina pubblica) e `0002_seed.sql` (contenuti iniziali identici al file Excel) nel repo.

## Prossimi passi

- Registrazione dominio **www.haccpcommerciale.it** su Aruba (in corso, azione dell'utente).
- Creare progetto Supabase dedicato (separato da quello di Essenza Latina) ed eseguire le migration.
- Creare gli utenti Auth per [[Antonio Smaldini]], [[Vito Romano]], [[Antonio Malatesta]].
- Deploy su Vercel e collegamento del dominio via DNS Aruba.
- Import delle righe già presenti nel vecchio file Excel, se presenti al momento del passaggio.
