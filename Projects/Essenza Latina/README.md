---
type: project
project: Essenza Latina
status: active
tags: [essenza-latina, scuola-ballo, webapp]
---

Webapp per la scuola di ballo di [[Antonio Malatesta]], **Essenza Latina**: iscrizioni ai corsi, gestione presenze, dashboard admin per la segreteria.

> [!info] Repo
> Codice in repo separato, fuori dal vault: `~/Desktop/essenza-latina-app`. Stack: Next.js (App Router, TypeScript, Tailwind) + Supabase (Postgres, Auth, RLS).

## Stato

MVP scaffoldato e buildato con successo (2026-08-31). Non ancora deployato: manca un progetto Supabase reale (oggi solo placeholder in `.env.local.example`) e un dominio.

## Scope MVP (deciso con l'utente)

- Iscrizione corsi online (form pubblico, no autenticazione richiesta)
- Gestione presenze (per corso e data, dalla segreteria)
- Dashboard admin completa (allievi, iscrizioni, pagamenti, corsi)
- **Escluso dall'MVP**: pagamento online. Da valutare in una fase successiva (Stripe).

## Modello dati

`courses`, `students`, `enrollments` (allievo↔corso: stato + stato pagamento), `attendance` (presenza per iscrizione e data lezione), `instructors`. Lettura corsi e creazione iscrizione sono pubbliche via Row Level Security; tutto il resto (gestione allievi, presenze, corsi) richiede un utente Supabase Auth autenticato — oggi senza distinzione di ruoli, chiunque abbia un account ha accesso pieno alla segreteria.

## Prossimi passi

- Creare il progetto Supabase reale, eseguire la migration (`supabase/migrations/0001_init.sql`), creare gli utenti segreteria
- Deploy su Vercel + dominio
- Decidere se e quando aggiungere pagamento online (Stripe)
- Notifiche email di conferma iscrizione
- Eventuali ruoli differenziati admin/istruttore
