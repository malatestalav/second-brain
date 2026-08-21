---
type: tracking
project: HACCP Digitale
status: active
tags: [tracking, vendita, appuntamenti]
---

# Log Appuntamenti e Prospect

Registro operativo di ogni prospect nel funnel, dalla lista iniziale alla chiusura o alla perdita. Compilato da [[Antonio Smaldini]] in tempo reale, secondo la [SOP processo di vendita](../specs/sop-processo-vendita.md) e il [workflow telefonate/WhatsApp](../specs/workflow-commerciale-telefono-whatsapp.md). Fonte dati per la revisione settimanale in [metriche-settimanali.md](metriche-settimanali.md).

> [!info] Stati possibili
> `Da contattare` → `Touch 1 inviato` → `Touch 2 inviato` → `Appuntamento fissato` → `Chiuso` / `Da richiamare` / `Perso (no-response)` / `Perso (rifiuto)`

> [!info] Ultimo Canale
> `WhatsApp` o `Telefono`, secondo la regola di canale del workflow: WhatsApp per Touch 1/2, conferma e morning after; Telefono per fissare appuntamento, recuperare non-risposte e gestire no-show.

## Righe

| Data Inserimento | Nome Attività | Località | Titolare | Stato | Ultimo Canale | Data Ultimo Touch | Data Appuntamento | Confermato Giorno Prima | Esito Demo | Data Chiusura | Note |
|---|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | | |

<!--
Esempio riga compilata (cancellare quando iniziano i dati reali):
| 2026-08-20 | Bar Centrale | Potenza | Mario Rossi | Touch 2 inviato | WhatsApp | 2026-08-21 | | | | | Interessato, in attesa di risposta al video |
-->
