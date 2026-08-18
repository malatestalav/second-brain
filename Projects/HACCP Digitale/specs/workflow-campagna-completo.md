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

## Fase 2 . Landing Page (Interest . Qualificazione)

Struttura single-page, mobile-first, un solo obiettivo: far compilare il form.

- **Hero**: headline = la promessa del video ("HACCP in pochi minuti, non in ore"), sottotitolo, bottone che scrolla al form
- **Problema**: 3-4 bullet con i pain point da [[icp]] (carta, dipendenti, controllo ASL), con icone, niente muro di testo
- **Come funziona**: 3 step illustrati (compili da telefono, notifiche automatiche, sempre in regola)
- **Prova sociale**: "già scelto da locali a Potenza" + eventuale citazione di un cliente reale
- **Form questionario**: le 4 domande + contatti (vedi [[funnel-questionario-ghl]]), meglio a step singoli (una domanda per schermata) per aumentare il completamento
- **Rassicurazione**: "consulenza gratuita, zero impegno" subito sopra il bottone finale
- **Footer**: nome attività/P.IVA, contatti diretti

Costruzione: opzione A) pagina GHL nativa collegata al dominio via CNAME (zero codice extra, resta unita a pipeline/notifiche già speccate); opzione B) pagina custom fuori GHL, richiede hosting e servizio esterno per salvare risposte e notifiche. Decisione ancora aperta con [[Antonio Malatesta]].

## Fase 3 . Lead Capture & Notifica

- Submission → Contact GHL con custom field, entra in pipeline "Nuovo Lead da Video"
- Notifica immediata (email/SMS)
- Priorità di richiamo: chi risponde "controllo ASL in arrivo" o "rischiato una multa" (domanda 4) va chiamato per primo

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

- Pagina landing: GHL nativa vs custom fuori GHL (vedi Fase 2)
- Canale notifica: email/SMS nativi GHL vs integrazione WhatsApp Business (vedi [[funnel-questionario-ghl]])
