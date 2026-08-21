---
type: spec
project: HACCP Digitale
status: draft
tags: [funnel, ghl, lead-gen, questionario]
---

# Funnel Questionario + Prenotazione Consulenza (GHL)

Infrastruttura collegata al video di [drafts/script-video-presentazione.md](../drafts/script-video-presentazione.md). Chi risponde "scrivici" al video riceve in chat il link a questa pagina. Da configurare dentro l'account [[GHL]] di [[Antonio Malatesta]] (nessun accesso diretto disponibile in questa sessione: setup manuale guidato).

> [!info] Flusso completo
> 1. Prospect vede il video, commenta/scrive in DM "scrivici"
> 2. Riceve il link alla pagina GHL
> 3. Compila 4 domande di qualificazione + nome, email, telefono
> 4. Il dato si salva come Contact in GHL (fonte di verità sempre aggiornata, sostituisce l'Excel manuale)
> 5. [[Antonio Malatesta]] riceve una notifica immediata (email o SMS) a ogni invio
> 6. Richiama il lead per fissare la consulenza gratuita dal vivo

## Copy Pagina

**Headline:** "Raccontaci del tuo locale, ti richiamiamo per la consulenza gratuita"

**Sottotitolo:** "Due minuti di domande, così arriviamo preparati e non ti facciamo perdere tempo."

Coerente con [[brand]]: diretto, niente giri di parole, tono da collega non da azienda.

## Le 4 Domande di Qualificazione

Costruite sui pain point e i trigger d'acquisto mappati in [[icp]].

**1. Che tipo di attività gestisci?**
- Bar
- Ristorante / Pizzeria
- Entrambi (bar e cucina)
- Altra attività di somministrazione

**2. Oggi come gestisci l'HACCP?**
- Tutto su carta
- Un mix di carta e file sparsi (Excel, Word, foto sul telefono)
- Sinceramente non lo gestisco come dovrei
- Ho già un sistema digitale

**3. Quante persone lavorano nel locale, te compreso?**
- Solo io
- 2-5
- 6-10
- Più di 10

**4. Cosa ti spinge di più a cercarci proprio adesso?**
- Ho un controllo NAS in arrivo
- Ho avuto un problema o rischiato una multa di recente
- Voglio semplicemente riprendermi il tempo che perdo ogni giorno
- Curiosità, voglio vedere come funziona

> [!tip] Perché queste domande
> La 2 e la 4 sono le più importanti per priorizzare le chiamate: chi risponde "controllo NAS in arrivo" o "rischiato una multa" va richiamato per primo. La 3 aiuta a capire se serve la gestione multi-utente (vedi [[services]]). Chi risponde "ho già un sistema digitale" alla 2 va comunque contattato ma con approccio diverso (comparativo, non educativo).

## Campi di Contatto

- Nome e cognome
- Comune (per verificare che sia Potenza città o provincia, coerente col targeting geografico della campagna)
- Email
- Telefono (obbligatorio, è il canale su cui poi si richiama)

## Setup in GHL (da fare manualmente nell'account)

1. **Form/Survey Builder** → crea un nuovo Survey con le 4 domande sopra (tipo "scelta singola") + i 4 campi contatto. Salva ogni domanda come Custom Field sul Contact (es. `tipo_attivita`, `gestione_haccp_attuale`, `num_persone`, `motivazione`), così restano visibili e filtrabili su ogni scheda cliente.
2. **Funnel/Website → Pagina** → pubblica il survey come landing page singola con la copy sopra. Questo genera il link pubblico da mandare in chat.
3. **Pipeline** → crea (o riusa) una pipeline "HACCP Digitale . Lead" con stage "Nuovo Lead da Video" come destinazione automatica di ogni submission.
4. **Automation/Workflow** → trigger "Survey Submitted" su questo form →
   - Azione 1: crea/aggiorna Contact con i custom field
   - Azione 2: sposta il Contact nello stage "Nuovo Lead da Video"
   - Azione 3: **notifica interna** a [[Antonio Malatesta]] (scegli uno o entrambi):
     - Email immediata (nessun setup aggiuntivo, disponibile su ogni account GHL)
     - SMS al proprio numero (richiede numero GHL/Twilio già attivo sull'account)
   - Testo notifica suggerito: `Nuovo lead HACCP Digitale: {{contact.first_name}} {{contact.last_name}} - {{contact.phone}}. Attività: {{contact.tipo_attivita}}. Gestione HACCP oggi: {{contact.gestione_haccp_attuale}}. Motivazione: {{contact.motivazione}}. Comune: {{contact.comune}}.`

> [!warning] Notifica su WhatsApp
> [[operator|Antonio]] lavora principalmente su WhatsApp, ma una notifica push su WhatsApp personale richiede l'integrazione WhatsApp Business API dentro GHL (setup separato, non immediato). Per partire subito: email o SMS, che GHL supporta nativamente senza configurazione aggiuntiva. Da valutare come step 2 se il volume di lead cresce.

## Perché non l'ho costruito direttamente io

Non ho un connettore GHL attivo in questa sessione, quindi non posso creare form/automation dentro il tuo account. Ho preparato qui tutto il contenuto pronto da incollare (domande, copy, testo notifica, struttura workflow) per rendere il setup manuale il più veloce possibile.
