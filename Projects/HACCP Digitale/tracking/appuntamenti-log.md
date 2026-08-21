---
type: tracking
project: HACCP Digitale
status: active
tags: [tracking, vendita, appuntamenti]
---

# Log Appuntamenti e Prospect

Registro operativo di ogni prospect nel funnel, dalla lista iniziale alla chiusura o alla perdita. Compilato da [[Antonio Smaldini]] in tempo reale, secondo la [SOP processo di vendita](../specs/sop-processo-vendita.md), il [workflow telefonate/WhatsApp](../specs/workflow-commerciale-telefono-whatsapp.md) e, per i contatti personali, il [workflow contatti caldi](../specs/workflow-contatti-caldi.md). Fonte dati per la revisione settimanale in [metriche-settimanali.md](metriche-settimanali.md).

> [!info] Stati possibili
> `Da contattare` → `Touch 1 inviato` / `Contattato` → `Touch 2 inviato` → `Appuntamento fissato` / `Demo fatta` → `Chiuso` / `Da richiamare` / `Perso (no-response)` / `Perso (rifiuto)`

> [!info] Tipo Contatto
> `Freddo` (trovato mappando il territorio, segue SOP + workflow telefonate/WhatsApp) o `Caldo` (conosciuto personalmente da Antonio Smaldini, segue il workflow contatti caldi, percorso più corto e diretto).

> [!info] Ultimo Canale
> `WhatsApp` o `Telefono`, secondo la regola di canale del workflow: WhatsApp per Touch 1/2, conferma e morning after; Telefono per fissare appuntamento, recuperare non-risposte e gestire no-show. Per i contatti caldi vale il canale già in uso con quella persona.

## Righe

| Data Inserimento | Nome Attività | Località | Titolare | Tipo Contatto | Stato | Ultimo Canale | Data Ultimo Touch | Data Appuntamento | Confermato Giorno Prima | Esito Demo | Data Chiusura | Note |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | | | |

<!--
Esempi riga compilata (cancellare quando iniziano i dati reali):
| 2026-08-20 | Bar Centrale | Potenza | Mario Rossi | Freddo | Touch 2 inviato | WhatsApp | 2026-08-21 | | | | | Interessato, in attesa di risposta al video |
| 2026-08-22 | Trattoria da Peppe | Potenza | Peppe (ex collega) | Caldo | Contattato | WhatsApp | 2026-08-22 | | | | | Interessato, fissare demo in videochiamata |
-->
