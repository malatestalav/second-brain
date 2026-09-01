---
type: spec
project: HACCP Digitale
status: draft
tags: [spec, gestionale, crm, commerciale]
---

# Spec — Gestionale Commerciale HACCP Digitale

Brief per una futura webapp che digitalizza il funnel di vendita oggi tracciato a mano nei tre file di [tracking](../tracking/): [appuntamenti-log.md](../tracking/appuntamenti-log.md), [obiezioni-log.md](../tracking/obiezioni-log.md), [metriche-settimanali.md](../tracking/metriche-settimanali.md). Il processo che il gestionale deve rispecchiare è quello della [SOP processo di vendita](sop-processo-vendita.md): [[Antonio Smaldini]] aggiorna il funnel in tempo reale sul campo, [[Antonio Malatesta]] lo consulta nella revisione settimanale (Fase 8). Questo documento resta nel progetto [[HACCP Digitale]], non diventa un progetto a parte: a differenza di [[Essenza Latina]] (business separato, repo e cartella vault dedicati), questo è uno strumento interno dello stesso progetto.

> [!info] Stato
> Solo specifica, nessuna riga di codice scritta. Da eseguire in una sessione di build dedicata, quando l'utente decide di procedere.

## Perché

I tre file di tracking funzionano ma richiedono disciplina manuale (SOP: "va aggiornato in tempo reale, non a fine giornata a memoria") e un rollup manuale in Fase 8 che duplica dati già presenti nelle righe. Un gestionale toglie il doppio lavoro: i numeri settimanali si calcolano da soli dai dati già inseriti per gestire il funnel.

## Stack proposto

Stesso pattern già usato in [[Essenza Latina]] (letto per intero come riferimento): Next.js (App Router, TypeScript) + Tailwind + Supabase (Postgres, Auth, RLS), server actions per le mutazioni. Repo separato fuori dal vault (`~/Desktop/haccp-digitale-crm` o simile), perché il codice non è materiale da wiki/vault. Differenza dal precedente: qui non serve nessuna pagina pubblica, tutto lo strumento è **interno** (solo [[Antonio Smaldini]] e [[Antonio Malatesta]] come utenti autenticati, accesso pieno senza ruoli differenziati, coerente col precedente di Essenza Latina). Nessuna policy RLS pubblica.

## Modello dati

**`prospects`** — sostituisce le righe di [appuntamenti-log.md](../tracking/appuntamenti-log.md):
`nome_attivita`, `localita`, `titolare`, `telefono`, `tipo_contatto` (`Freddo`/`Caldo`), `stato` (i 9 valori esatti del funnel dalla SOP: `Da contattare` → `Touch 1 inviato` / `Contattato` → `Touch 2 inviato` → `Appuntamento fissato` / `Demo fatta` → `Chiuso` / `Da richiamare` / `Perso (no-response)` / `Perso (rifiuto)`), `ultimo_canale` (`WhatsApp`/`Telefono`), `data_ultimo_touch`, `data_appuntamento` (con orario: la SOP fissa data e ora precise, mai "quando vuoi"), `confermato_giorno_prima`, `esito_demo`, `data_chiusura`, `data_prossimo_ritentativo` (Fase 7, +30 giorni dal retry), `referral_richiesto` (Fase 6), `onboarding_staff_verificato` (Fase 6), `note`.

**`objections`** — sostituisce [obiezioni-log.md](../tracking/obiezioni-log.md): collegata a un `prospect_id`, con `data`, `testo`, `categoria` (le 6 categorie esatte della SOP: Prezzo, Tempo/Setup, Scetticismo prodotto, Non decide da solo, Non ora, Altro), `risposta_usata`, `esito`, `note`.

**`weekly_reviews`** — solo la parte qualitativa di [metriche-settimanali.md](../tracking/metriche-settimanali.md) che non è derivabile dai dati: settimana, obiezione più frequente, azione decisa, note della revisione. I numeri (contattati, risposte, tasso risposta, appuntamenti fissati/rispettati, demo, chiusure) **non si inseriscono a mano**: si calcolano live da `prospects`/`objections` raggruppati per settimana, eliminando il rollup manuale di Fase 8.

## Pagine

- **Dashboard** — conteggio prospect per stato (vista funnel), progressione verso l'obiettivo Q3 (5 fine agosto / 30 fine settembre / 50 fine ottobre, da [[strategy]]) calcolata dal count di `stato = 'Chiuso'`.
- **Prospect** — lista filtrabile per stato/tipo contatto/località, form di aggiunta rapida.
- **Dettaglio prospect** — form di modifica completo, pulsanti di avanzamento stato che ricalcano le Fasi 1-7 della SOP, storico obiezioni collegate.
- **Obiezioni** — lista + form di aggiunta (select su prospect esistente), vista sintesi ricorrenze per categoria (per la Fase 8).
- **Metriche** — tabella settimanale calcolata in sola lettura + form per compilare solo le colonne qualitative di `weekly_reviews` + tabella progressione Q3.
- Login/logout: stesso pattern di Essenza Latina (redirect a login se non autenticato).

Uso previsto principalmente sul campo da smartphone: le pagine di inserimento (nuovo prospect, avanzamento stato, nuova obiezione) devono restare utilizzabili da mobile senza friction, non solo da desktop.

## Migrazione dai tracking esistenti

Le righe già presenti (se ce ne sono) in `appuntamenti-log.md` e `obiezioni-log.md` vanno importate come seed iniziale del database al momento del build. I tre file restano nel vault come storico/fallback, non vengono cancellati.

## Prossimi passi

- Decidere quando avviare la sessione di build (repo + migration + pagine, come fatto per [[Essenza Latina]]).
- Creare un progetto Supabase dedicato (separato da quello di Essenza Latina) e gli utenti Auth per [[Antonio Smaldini]] e [[Antonio Malatesta]].
- Deploy (Vercel + dominio) da valutare dopo l'MVP.
