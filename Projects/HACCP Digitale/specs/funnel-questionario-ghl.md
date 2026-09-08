---
type: spec
project: HACCP Digitale
status: draft
tags: [funnel, ghl, lead-gen, questionario, demo-video]
---

# Funnel Opt-in + Questionario + Demo + Prenotazione Analisi (GHL)

Infrastruttura collegata al video di [drafts/script-video-presentazione.md](../drafts/script-video-presentazione.md). Chi scrive in DM per ricevere il link riceve questa pagina. Da configurare dentro l'account [[GHL]] di [[Antonio Malatesta]] (nessun accesso diretto disponibile in questa sessione: setup manuale guidato).

> [!info] Flusso completo (pagina a 4 step)
> 1. Prospect vede il video su Instagram, scrive in DM per ricevere il link
> 2. Riceve il link alla pagina GHL: **Step 1 opt-in di vendita** → **Step 2 questionario breve** → **Step 3 video demo prodotto** → **Step 4 form contatti**
> 3. Il dato si salva come Contact in GHL (fonte di verità sempre aggiornata, sostituisce l'Excel manuale) con i custom field del questionario
> 4. [[Antonio Smaldini]] (commerciale) riceve una notifica immediata (email o SMS) a ogni invio completo, con copia a [[Antonio Malatesta]]
> 5. Il commerciale richiama il lead per fissare l'analisi gratuita dei punti critici dal vivo

> [!tip] Perché 4 step e non una pagina unica
> Un multi-step funnel (nativo in GHL: "Funnel" con più pagine in sequenza, non un long-scroll) fa vedere solo un impegno alla volta: prima la promessa di vendita, poi 4 domande veloci, poi la prova concreta (demo), infine la richiesta di contatti. Ogni step passato aumenta l'impegno psicologico a completare (sunk cost) e il tasso di completamento è più alto che con un form lungo tutto insieme.

## Step 1 . Opt-in di Vendita (Landing Page)

Non è più solo un invito a compilare un form: è la pagina che deve vendere la richiesta di analisi gratuita. Copy orientato ai pain point mappati in [[icp]] e [[pain-points]], coerente con [[brand]] (diretto, caldo, tecnico).

**Headline:** "Il tuo HACCP in pochi secondi, non in ore. Scopri i punti critici del tuo locale, gratis."

**Sottotitolo:** "Due minuti di domande e ti mostriamo esattamente dove rischi la multa e quanto tempo puoi liberare ogni giorno."

**Corpo pagina (blocchi, non muro di testo):**
- **Il problema, nominato in modo vivido:** faldoni, registri compilati al ritroso, ansia al controllo NAS (linguaggio diretto dal cliente, vedi [[icp]] "Linguaggio e Parole che Usano")
- **La promessa:** da 45 minuti a 10 minuti al giorno di compilazione (caso reale in [[services]])
- **Come funziona in 3 step:** rispondi alle domande → guardi la demo di 90 secondi → prenoti l'analisi gratuita
- **Bottone CTA:** "Scopri i tuoi punti critici" (scrolla/avanza allo Step 2)

**Regola vault:** scansionare il copy per le parole bandite "rubare" e "disturbo" prima della pubblicazione ([[feedback_no_parola_rubare]]), verificare ogni cifra citata contro [[pain-points]]/[[services]] prima di pubblicarla ([[feedback_verify_facts_before_drafting]]).

## Step 2 . Le 4 Domande del Questionario

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

## Step 3 . Video Demo del Prodotto

Dopo il questionario, prima della richiesta contatti: il prospect ha già investito 2 minuti rispondendo, ora vede la prova che il prodotto funziona davvero.

- **Contenuto:** demo dell'interfaccia di [[HACCP Digitale]] (registro temperature, scheda ricevimento, notifica push, dashboard master), 60-90 secondi, stesso registro diretto/caldo/tecnico di [[brand]]
- **Sopra il video:** micro-headline che lega la risposta appena data alla demo, es. "Ecco esattamente come funziona" (non ripetere la promessa dello Step 1, mostrarla)
- **Sotto il video:** bottone CTA che avanza allo Step 4, es. "Voglio l'analisi gratuita dei punti critici del mio locale"

> [!info] Asset già pronto
> Il video demo è già disponibile ([[Antonio Malatesta]] lo tiene già registrato). Da caricare nel Media Storage di GHL (o via embed YouTube/Vimeo non listato) nella Pagina 3 del Funnel Builder. Nessun blocco residuo su questo step: verificare solo che durata e contenuto restino coerenti con le indicazioni sopra (60-90 secondi, interfaccia in azione) prima di pubblicarlo.

## Step 4 . Contatti per l'Analisi Gratuita dei Punti Critici

Rinominato rispetto alla "consulenza gratuita" generica: l'offerta finale è specificamente un'**analisi dei punti critici del locale**, coerente con il pain point #1 in [[pain-points]] (sicurezza ai controlli NAS). Mantiene il framing come diagnosi concreta, non come chiamata commerciale generica.

**Headline dello step:** "Prenota la tua analisi gratuita dei punti critici"

**Sottotitolo:** "Un commerciale ti richiama, guarda le tue risposte, e ti dice esattamente dove rischi e quanto tempo puoi liberare. Zero impegno."

**Campi:**
- Nome e cognome
- Comune (per verificare che sia Potenza città o provincia, coerente col targeting geografico della campagna)
- Email
- Telefono (obbligatorio, è il canale su cui poi si richiama)

## Setup in GHL (da fare manualmente nell'account)

1. **Funnel Builder** → crea un nuovo Funnel a 4 pagine (non un Survey singolo): Pagina 1 opt-in di vendita (copy Step 1) → Pagina 2 Survey con le 4 domande (tipo "scelta singola", salvate come Custom Field sul Contact: `tipo_attivita`, `gestione_haccp_attuale`, `num_persone`, `motivazione`) → Pagina 3 con embed video (carica il file mp4 nel Media Storage di GHL o incolla un embed YouTube/Vimeo non listato) → Pagina 4 form contatti (nome, comune, email, telefono). Ogni pagina avanza alla successiva col bottone CTA, nessun redirect esterno.
2. **Pubblicazione** → il Funnel genera un unico link pubblico (dominio GHL o CNAME personalizzato) da mandare in chat dopo il primo scambio di messaggi in DM.
3. **Pipeline** → crea (o riusa) una pipeline "HACCP Digitale . Lead" con stage "Nuovo Lead da Video" come destinazione automatica di ogni submission completa (Pagina 4).
4. **Automation/Workflow** → trigger "Form Submitted" sulla Pagina 4 →
   - Azione 1: crea/aggiorna Contact con i custom field raccolti in Pagina 2 e 4
   - Azione 2: sposta il Contact nello stage "Nuovo Lead da Video"
   - Azione 3: **notifica interna** ad [[Antonio Smaldini]] (commerciale, è lui che richiama per fissare l'analisi), con copia a [[Antonio Malatesta]]:
     - Email immediata (nessun setup aggiuntivo, disponibile su ogni account GHL)
     - SMS al numero del commerciale (richiede numero GHL/Twilio già attivo sull'account)
   - Testo notifica suggerito: `Nuovo lead HACCP Digitale: {{contact.first_name}} {{contact.last_name}} - {{contact.phone}}. Attività: {{contact.tipo_attivita}}. Gestione HACCP oggi: {{contact.gestione_haccp_attuale}}. Motivazione: {{contact.motivazione}}. Comune: {{contact.comune}}. Richiamare per fissare l'analisi gratuita dei punti critici.`
5. **Tracciamento abbandono step:** GHL registra i Contact parziali che completano lo Step 2 ma abbandonano prima dello Step 4 (visibile come submission Survey senza submission Form). Utile per capire se il collo di bottiglia è la demo o la richiesta contatti finale.

> [!warning] Notifica su WhatsApp
> Il commerciale e [[operator|Antonio]] lavorano principalmente su WhatsApp, ma una notifica push su WhatsApp personale richiede l'integrazione WhatsApp Business API dentro GHL (setup separato, non immediato). Per partire subito: email o SMS, che GHL supporta nativamente senza configurazione aggiuntiva. Da valutare come step successivo se il volume di lead cresce.

## Perché non l'ho costruito direttamente io

Non ho un connettore GHL attivo in questa sessione, quindi non posso creare funnel/automation dentro il tuo account. Ho preparato qui tutto il contenuto pronto da incollare (copy di vendita, domande, testo demo, copy contatti, testo notifica, struttura funnel a 4 step) per rendere il setup manuale il più veloce possibile.
