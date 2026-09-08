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

## Fase 2 . Landing Funnel a 4 Step (Interest . Qualificazione)

Non una single-page, ma un Funnel GHL a 4 pagine in sequenza, mobile-first, un impegno alla volta (dettaglio completo in [[funnel-questionario-ghl]]):

1. **Opt-in di vendita**: headline = la promessa del video ("HACCP in pochi minuti, non in ore"), pain point da [[icp]] (carta, dipendenti, controllo NAS) a bullet, come funziona in 3 step, bottone CTA che avanza
2. **Questionario**: le 4 domande di qualificazione, una per schermata (vedi [[funnel-questionario-ghl]])
3. **Video demo prodotto**: 6 minuti dell'interfaccia HACCP Digitale in azione, bottone CTA visibile subito all'apertura della pagina (non solo a fine video, vedi [[funnel-questionario-ghl]]) e ripetuto sotto il player (asset già pronto)
4. **Form contatti**: nome, comune, email, telefono, con rassicurazione "analisi gratuita dei punti critici, zero impegno" sopra il bottone finale

Costruzione: opzione A) Funnel GHL nativo collegato al dominio via CNAME (zero codice extra, resta unito a pipeline/notifiche già speccate); opzione B) pagina custom fuori GHL, richiede hosting e servizio esterno per salvare risposte e notifiche. Decisione ancora aperta con [[Antonio Malatesta]].

## Fase 3 . Lead Capture & Notifica

- Submission Pagina 4 → Contact GHL con custom field, entra in pipeline "Nuovo Lead da Video"
- Notifica immediata (email/SMS) ad [[Antonio Smaldini]] (commerciale, richiama per fissare l'analisi), copia a [[Antonio Malatesta]]
- Priorità di richiamo: chi risponde "controllo NAS in arrivo" o "rischiato una multa" (domanda 4) va chiamato per primo

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
