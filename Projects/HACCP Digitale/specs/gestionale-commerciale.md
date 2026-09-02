---
type: spec
project: HACCP Digitale
status: live
tags: [spec, gestionale, crm, commerciale]
---

# Spec — Gestionale Commerciale HACCP Digitale

Webapp che digitalizza il funnel di vendita, prima tracciato nel file `ATTIVITÀ COMMERCIALE (nuova).xlsx` (Desktop/HACCP DIGITALE/COMMERCIALE), un mini-CRM Excel con formule usato da tre commerciali: [[Antonio Smaldini]], [[Vito Romano]], [[Antonio Malatesta]]. Resta dentro il progetto [[HACCP Digitale]], non è un progetto a parte.

> [!info] Stato
> **Live in produzione**: [haccpcommerciale.it](https://haccpcommerciale.it) (anche `www.`), dominio registrato su Aruba e collegato via DNS a Vercel (record A `@` → `76.76.21.21`, CNAME `www` → `cname.vercel-dns.com`). Deploy su Vercel (progetto `essenza-latina/haccp-digitale-crm`). Codice in repo separato, fuori dal vault: `~/Desktop/haccp-digitale-crm`. Stack: Next.js (App Router, TypeScript, Tailwind) + Supabase (Postgres, Auth, RLS), stesso pattern di [[Essenza Latina]]. Logo e palette bianco/verde (`#169149`) del brand HACCP Digitale. Responsive con menu mobile. Ruoli attivi: [[Antonio Malatesta]] e [[Vito Romano]] master, [[Antonio Smaldini]] commerciale.

## Moduli della webapp

1. **Clienti** (`contatti` + `/admin/clienti`) — una riga per contatto/visita: data, tipo (`Chiamata` / `Visita in loco`), locale, telefono, commerciale, esito contatto, data/ora appuntamento, esito appuntamento, pacchetto venduto, data attivazione licenza, prossimo richiamo, note. Aggiornabile in tempo reale riga per riga. Card impilate su mobile, tabella su desktop. Un commerciale vede e carica solo i propri contatti (il campo "commerciale" non è selezionabile, è sempre il proprio nome).
2. **Appuntamenti** (`/admin/appuntamenti`) — agenda con ogni appuntamento fissato, raggruppato per giorno in ordine cronologico (oggi evidenziato, passati in grigio). Widget "Prossimi appuntamenti" anche in dashboard.
3. **Liste** (`liste_valori` + `/admin/liste`, solo master) — valori a tendina editabili da UI senza toccare codice. Seed iniziale: 2 tipi attività, 5 esiti contatto, 5 esiti appuntamento, 3 commerciali.
4. **Pacchetti** (`pacchetti` + `/admin/pacchetti`, solo master) — prezzi di vendita configurabili (nome + importo), non un prezzo fisso: ogni vendita in Clienti si assegna a un pacchetto, e la dashboard calcola il fatturato reale sommando i pacchetti venduti (segnala in rosso le vendite senza pacchetto assegnato).
5. **Licenze** (`/admin/licenze`) — durata 12 mesi dalla data di attivazione (auto-compilata a oggi quando un contatto passa a "Venduto", modificabile a mano). Calcola scadenza = attivazione + 12 mesi, stato Attiva / In scadenza (≤30gg, avviso arancione) / Scaduta (rosso). Dashboard mostra contatori di licenze in scadenza/scadute con link diretto.
6. **Dashboard** (`/admin`) — stesse formule del foglio Excel originale: funnel a 6 fasi con % sulla fase precedente, tasso di chiusura complessivo, fatturato reale da pacchetti, richiami da fare oggi o scaduti, licenze in scadenza/scadute, prossimi appuntamenti, breakdown esiti contatto/appuntamento. "Performance per commerciale" e le sezioni Pacchetti/Liste visibili solo ai master; per un commerciale, tutte le statistiche mostrate sono già filtrate alle proprie sole grazie a RLS.

Le pagine statiche "Guida obiezioni" e "Funnel e script" (presenti nel primo MVP) sono state rimosse su richiesta dell'utente: il contenuto resta comunque nei documenti del progetto ([sop-processo-vendita.md](sop-processo-vendita.md), `Workflow_Commerciale_HACCP_Digitale.docx`).

## Ruoli (master / commerciale)

Tabella `profili` (una riga per utente Supabase Auth, collegata via `id`), ruolo `master` o `commerciale`. Un master vede e gestisce tutto; un commerciale vede solo i propri clienti/appuntamenti/licenze/statistiche, applicato via RLS su Postgres (non solo lato UI). Due funzioni SQL `security definer`, `is_master()` e `mio_nome_commerciale()`, leggono `profili` bypassando RLS per evitare un bug di ricorsione infinita incontrato durante il primo deploy (una policy su `profili` che interrogava `profili` da dentro se stessa — vedi `0006_fix_recursione_ruoli.sql`).

Per aggiungere un nuovo commerciale: creare l'utente in Supabase Auth, poi collegarlo con un insert in `profili` (procedura documentata nel README del repo).

## Modello dati

Migration in `supabase/migrations/` nel repo, in ordine: `0001_init.sql` (schema base + RLS), `0002_seed.sql` (liste iniziali), `0003_pacchetti.sql`, `0004_licenze.sql`, `0005_ruoli.sql` (tabella `profili` + policy per ruolo — versione con il bug di ricorsione), `0006_fix_recursione_ruoli.sql` (fix con funzioni security definer). Tutte le tabelle richiedono un utente Supabase Auth autenticato con un profilo assegnato in `profili`, nessuna pagina pubblica.

## Prossimi passi possibili

- Import di dati storici nel vecchio file Excel, se servisse.
- Notifiche (email/WhatsApp) automatiche per richiami e licenze in scadenza, oggi solo visibili in dashboard.
- Export dati per l'analisi trimestrale.
