---
type: spec
project: HACCP Digitale
status: draft
tags: [funnel, workflow, campagna, acquisizione]
---

# Workflow Completo Campagna Acquisizione Organica

Scaletta end-to-end della campagna legata a [drafts/script-video-presentazione.md](../drafts/script-video-presentazione.md) e a [specs/funnel-questionario-ghl.md](funnel-questionario-ghl.md): dal video organico alla delivery finale del cliente.

## Fase 1 . Contenuto (Awareness)

1. Pubblicazione video organico (script pronto) su Reels/TikTok, geo-targeting Potenza e provincia via hashtag/caption locali
2. Gestione commenti/DM: chi scrive "scrivici" riceve il link alla landing page (manuale all'inizio, poi automatizzabile con risposta automatica GHL/Meta)

## Fase 2 . Landing Page Unica (Interest . Qualificazione)

Una singola pagina GHL a scroll continuo, mobile-first, con barra fissa in alto sempre visibile (dettaglio completo in [[funnel-questionario-ghl]]):

- **Barra fissa**: "Prenota l'analisi dei punti critici gratuita" + bottone "Prenota" che salta al form contatti, nessun countdown
- **Sezione 1 opt-in di vendita**: headline = la promessa del video ("HACCP in pochi minuti, non in ore"), pain point da [[icp]] (carta, dipendenti, controllo NAS) a bullet, come funziona in 3 step, bottone CTA che scrolla giù
- **Sezione 2 questionario**: le 4 domande di qualificazione approvate, modulo con submission propria (vedi [[funnel-questionario-ghl]])
- **Sezione 3 video demo prodotto**: 6 minuti dell'interfaccia HACCP Digitale in azione, bottone CTA visibile subito all'apertura della sezione (non solo a fine video) e ripetuto sotto il player (asset già pronto)
- **Sezione 4 form contatti**: nome, nome attività commerciale, email, telefono (niente comune/provincia), submission separata dal questionario, con rassicurazione "analisi gratuita dei punti critici, zero impegno" sopra il bottone finale

Costruzione: Funnel GHL nativo, pagina singola (non più multi-step), collegato al dominio via CNAME.

## Fase 3 . Lead Capture & Notifica

- Submission del Form Contatti (Sezione 4) → Contact GHL con custom field, entra in pipeline "Nuovo Lead da Video"
- Notifica immediata (email/SMS) ad [[Antonio Smaldini]] (commerciale, richiama per fissare l'analisi), copia a [[Antonio Malatesta]]
- Priorità di richiamo: chi risponde "controllo NAS in arrivo" o "rischiato una multa" (domanda 4 del questionario) va chiamato per primo

## Fase 4 . Contatto e Appuntamento

- Richiamo entro poche ore dalla submission
- Consulenza gratuita dal vivo fissata, confermata il giorno prima (strategia già in [[icp]])
- Lead si sposta a stage "Consulenza Fissata"

## Fase 5 . Consulenza/Demo (Conversion)

- Demo personalizzata sul tipo di attività (le risposte del questionario indicano cosa mostrare)
- Gestione dell'obiezione prezzo prima che venga sollevata
- Chiusura e firma

## Fase 6 . Delivery (Onboarding)

- Creazione account HACCP Digitale
- Setup manuali/schede personalizzate per l'attività del cliente
- Formazione titolare + eventuale team (chi accede a cosa)
- Attivazione notifiche/promemoria

## Fase 7 . Post-Delivery

- Check-in a 7 e 30 giorni
- Richiesta testimonial/referral (materiale per il prossimo video)
- Lead → stage "Cliente" chiuso

---

## Decisioni Aperte

- Canale notifica: email/SMS nativi GHL vs integrazione WhatsApp Business (vedi [[funnel-questionario-ghl]])
- Building effettivo della pagina in GHL bloccato da un problema tecnico dell'editor (errori 429), vedi [[funnel-questionario-ghl]] per lo stato
