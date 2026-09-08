---
type: spec
project: HACCP Digitale
status: draft
tags: [funnel, ghl, lead-gen, questionario, demo-video]
---

# Funnel Pagina Unica: Opt-in + Questionario + Demo + Contatti (GHL)

Infrastruttura collegata al video di [drafts/script-video-presentazione.md](../drafts/script-video-presentazione.md). Chi scrive in DM per ricevere il link riceve questa pagina. Da configurare dentro l'account [[GHL]], amministrato da [[Vito Romano]] (nessun accesso diretto stabile disponibile in questa sessione: vedi blocco tecnico in fondo).

> [!info] Flusso completo (pagina unica, scroll continuo)
> 1. Prospect vede il video su Instagram, scrive in DM per ricevere il link
> 2. Riceve il link a **un'unica pagina** GHL che scorre in sequenza: **opt-in di vendita** → **questionario breve** → **video demo prodotto** → **form contatti**, con una **barra fissa in alto** sempre visibile (headline + bottone "Prenota") che porta al form contatti da qualunque punto della pagina
> 3. Il questionario e il form contatti sono **due moduli distinti** con due submission separate (non un unico form combinato)
> 4. Ogni submission si salva come Contact in GHL con i relativi custom field
> 5. [[Antonio Smaldini]] (commerciale) riceve una notifica immediata (email o SMS) a ogni invio del form contatti, con copia a [[Antonio Malatesta]]
> 6. Il commerciale richiama il lead per fissare l'analisi gratuita dei punti critici

> [!warning] Cambio di struttura rispetto alla versione precedente
> Questa sostituisce la versione precedente a 4 pagine separate (funnel multi-step). L'utente ha chiarito che il riferimento è una pagina unica in stile long-scroll (es. le landing page di [[chiara-dosio]]), non un funnel a step. Nessuna pagina separata: tutto scorre in una singola pagina pubblica.

## Barra Fissa Superiore (Sticky Bar)

Sempre visibile durante lo scroll, senza countdown/urgenza finta (fuori tono per [[brand]]).

**Testo grande:** "Prenota l'analisi dei punti critici gratuita"

**Bottone:** "Prenota l'analisi gratuita" → scrolla/salta direttamente alla sezione Form Contatti in fondo alla pagina

> [!warning] Un solo testo di bottone in tutta la pagina
> Regola fissata dall'utente il 2026-09-08: **l'unico testo di bottone su tutta la pagina è "Prenota l'analisi gratuita"**, ripetuto in più punti (barra fissa, fine Sezione 1, sopra e sotto il video in Sezione 3) ma sempre identico e sempre puntato alla Sezione 4. Niente varianti di copy tipo "Scopri i tuoi punti critici" — quella versione precedente è scartata. Le uniche altre superfici cliccabili della pagina sono le opzioni di risposta del questionario (Sezione 2), che sono input del modulo, non CTA di navigazione.

## Sezione 1 . Opt-in di Vendita

Copy orientato ai pain point mappati in [[icp]] e [[pain-points]], coerente con [[brand]] (diretto, caldo, tecnico).

**Headline:** "Il tuo HACCP in pochi secondi, non in ore. Scopri i punti critici del tuo locale, gratis."

**Sottotitolo:** "Due minuti di domande e ti mostriamo esattamente dove rischi la multa e quanto tempo puoi liberare ogni giorno."

**Corpo pagina (blocchi, non muro di testo):**
- **Il problema, nominato in modo vivido:** faldoni, registri compilati al ritroso, ansia al controllo NAS (linguaggio diretto dal cliente, vedi [[icp]] "Linguaggio e Parole che Usano")
- **La promessa:** da 45 minuti a 10 minuti al giorno di compilazione (caso reale in [[services]])
- **Come funziona in 3 step:** rispondi alle domande → guardi la demo → prenoti l'analisi gratuita
- **Bottone:** "Prenota l'analisi gratuita" (vedi regola unico-testo-bottone sopra) → scrolla alla Sezione 2 (Questionario)

**Regola vault:** scansionare il copy per le parole bandite "rubare" e "disturbo" prima della pubblicazione ([[feedback_no_parola_rubare]]), verificare ogni cifra citata contro [[pain-points]]/[[services]] prima di pubblicarla ([[feedback_verify_facts_before_drafting]]).

> [!warning] Testi bullet ancora da rivedere
> I 5 bullet attualmente scritti nella Sezione 1 (nel builder GHL, riquadro con i pallini blu) sono un primo abbozzo e **non sono ancora approvati** dall'utente. Da rivedere insieme a colori/layout nella revisione finale, non prima.

## Sezione 2 . Questionario (Modulo 1, submission separata)

Costruite sui pain point e i trigger d'acquisto mappati in [[icp]]. **Approvate dall'utente il 2026-09-08.**

**1. Che tipo di attività gestisci?**
- Bar
- Ristorante / Pizzeria
- Alimentari (macelleria, pescheria, forno)
- Altra attività di somministrazione

**2. Oggi come gestisci l'HACCP?**
- Tutto su carta
- Mix di carta e file sparsi (Excel, Word, foto)
- Sinceramente non lo gestisco come dovrei
- Ho già un sistema digitale

**3. Chi gestisce l'HACCP nel tuo locale?**
- Io
- Il personale
- Nessuno
- Un consulente esterno

**4. Cosa ti spinge di più a cercarci proprio adesso?**
- Ho un controllo NAS in arrivo
- Ho avuto un problema o rischiato una multa
- Voglio riprendermi il tempo che perdo ogni giorno
- Curiosità, voglio vedere come funziona

> [!tip] Perché queste domande
> La 2 e la 4 sono le più importanti per priorizzare le chiamate: chi risponde "controllo NAS in arrivo" o "rischiato una multa" va richiamato per primo. La 3 aiuta a capire il decisore reale (se "Un consulente esterno", approccio comparativo in chiamata). Chi risponde "ho già un sistema digitale" alla 2 va contattato con approccio comparativo, non educativo.

**Modulo:** un Form/Survey GHL dedicato, solo le 4 domande (nessun campo contatto qui), submission propria che salva i 4 custom field sul Contact. Nessun bottone CTA aggiuntivo necessario: il modulo stesso avanza allo scroll successivo dopo l'invio, oppure resta in pagina e il prospect continua a scorrere.

## Sezione 3 . Video Demo del Prodotto

- **Contenuto:** demo dell'interfaccia di [[HACCP Digitale]] (registro temperature, scheda ricevimento, notifica push, dashboard master), 6 minuti, stesso registro diretto/caldo/tecnico di [[brand]]
- **Sopra il video:** micro-headline "Ecco esattamente come funziona" + bottone "Prenota l'analisi gratuita" verso la Sezione 4 (Form Contatti), visibile subito, prima ancora di premere play
- **Sotto il video:** un secondo bottone "Prenota l'analisi gratuita" identico, per chi guarda la demo fino in fondo

> [!info] Asset già pronto (6 minuti)
> Il video demo è già disponibile ([[Antonio Malatesta]] lo tiene già registrato), durata 6 minuti. Da caricare nel Media Storage di GHL (o via embed YouTube/Vimeo non listato).

> [!tip] Bottoni multipli, non un solo CTA a fine video
> Guardare 6 minuti non deve essere un requisito per arrivare al form. Timestamp/capitoli nel player se l'host lo supporta (es. "1:20 registro temperature", "3:40 notifiche automatiche"). Tutti i bottoni della pagina (barra fissa, opt-in, sopra/sotto il video) portano allo stesso punto: la Sezione 4.

## Sezione 4 . Form Contatti per l'Analisi Gratuita (Modulo 2, submission separata)

**Headline:** "Prenota la tua analisi gratuita dei punti critici"

**Sottotitolo:** "Un commerciale ti richiama, guarda le tue risposte, e ti dice esattamente dove rischi e quanto tempo puoi liberare. Zero impegno."

**Campi (confermati dall'utente, nessun altro dato da raccogliere):**
- Nome
- Nome attività commerciale
- Email
- Telefono (obbligatorio, è il canale su cui poi si richiama)

> [!warning] Niente comune/provincia
> Il campo comune/provincia è stato scartato esplicitamente dall'utente. Il targeting geografico (Potenza e provincia) resta gestito a monte, nella campagna Instagram/DM, non nel form.

## Custom Field Creati in GHL (già pronti, 2026-09-08)

Tutti creati come "Selezione con radio button" sull'oggetto Contact, cartella "Additional Info", tranne l'ultimo:

| Campo | Chiave | Opzioni |
|---|---|---|
| Tipo di attività | `contact.tipo_di_attivit` | Bar / Ristorante-Pizzeria / Alimentari (macelleria, pescheria, forno) / Altra attività di somministrazione |
| Gestione HACCP attuale | `contact.gestione_haccp_attuale` | Tutto su carta / Mix di carta e file sparsi / Sinceramente non lo gestisco come dovrei / Ho già un sistema digitale |
| Chi gestisce l'HACCP | `contact.numero_persone_nel_locale` (chiave storica, non rinominata) | Io / Il personale / Nessuno / Un consulente esterno |
| Motivazione richiesta | `contact.motivazione_richiesta` | Ho un controllo NAS in arrivo / Ho avuto un problema o rischiato una multa / Voglio riprendermi il tempo che perdo ogni giorno / Curiosità, voglio vedere come funziona |
| Nome attività commerciale | `contact.nome_attivit_commerciale` | Linea singola (testo libero) |

> [!tip] Chiave del campo "Chi gestisce l'HACCP"
> La chiave interna è rimasta `numero_persone_nel_locale` perché il campo è stato rinominato da un uso precedente (la domanda sul numero di persone nel locale, poi scartata dal set finale di 4 domande) invece di crearne uno nuovo. Non cambia nulla in pratica: la Automation e le viste GHL usano l'etichetta "Chi gestisce l'HACCP", la chiave tecnica resta questa.

## Setup in GHL (da fare quando l'editor torna operativo)

1. **Sito/Funnel → Pagina singola**: nella Pagina 1 esistente ("1 - Opt-in di Vendita", già con headline/sottotitolo/bullet/bottone pronti), aggiungere sotto la sezione esistente, in ordine: Sezione 2 (Questionario, nuovo modulo/survey con le 4 domande sopra), Sezione 3 (Video Demo con i 2 bottoni CTA), Sezione 4 (Form Contatti, riusando/adattando "Form 0" già creato: rimuovere il campo Last Name, aggiungere "Nome attività commerciale", mantenere Email e Telefono).
2. **Barra fissa**: aggiungere un header/sezione impostata come "sticky" (fissa durante lo scroll) con il testo e bottone descritti sopra; il bottone punta a un anchor link sulla Sezione 4.
3. **Eliminare le pagine 2 ("Questionario") e 3 ("Video Demo")** create in precedenza come pagine separate del funnel multi-step: non servono più, il contenuto va dentro la Pagina 1 unica.
4. **Pipeline** → crea (o riusa) una pipeline "HACCP Digitale . Lead" con stage "Nuovo Lead da Video" come destinazione automatica di ogni submission del Form Contatti.
5. **Automation/Workflow** → trigger "Form Submitted" sul Form Contatti (Sezione 4) →
   - Azione 1: crea/aggiorna Contact con i custom field raccolti (sia dal Questionario che dal Form Contatti, stesso Contact se stesso browser/sessione, altrimenti collegare via email/telefono)
   - Azione 2: sposta il Contact nello stage "Nuovo Lead da Video"
   - Azione 3: **notifica interna** ad [[Antonio Smaldini]] (commerciale, è lui che richiama), con copia a [[Antonio Malatesta]]:
     - Email immediata (nessun setup aggiuntivo)
     - SMS al numero del commerciale (richiede numero GHL/Twilio già attivo)
   - Testo notifica suggerito: `Nuovo lead HACCP Digitale: {{contact.first_name}} - {{contact.phone}}. Attività: {{contact.nome_attivit_commerciale}} ({{contact.tipo_di_attivit}}). Gestione HACCP oggi: {{contact.gestione_haccp_attuale}}. Chi la gestisce: {{contact.numero_persone_nel_locale}}. Motivazione: {{contact.motivazione_richiesta}}. Richiamare per fissare l'analisi gratuita dei punti critici.`

> [!warning] Notifica su WhatsApp
> Il commerciale e [[operator|Antonio]] lavorano principalmente su WhatsApp, ma una notifica push su WhatsApp personale richiede l'integrazione WhatsApp Business API dentro GHL (setup separato). Per partire subito: email o SMS, nativi in GHL.

## Blocco Tecnico in Corso (2026-09-08)

L'editor pagina di GHL (`link.mxaccelerator.com`, builder drag&drop) ha smesso di rispondere ai click durante il lavoro di consolidamento in pagina unica. La console del browser mostra errori ripetuti **429 (Too Many Requests)** su chiamate interne della piattaforma, oltre a 403/404 sparsi. Non si è risolto dopo ~60 secondi di pausa, quindi non sembra un rate-limit che si resetta in fretta: possibile limite di piano dell'account white-label "MX Accelerator" o problema lato server.

**Prossimo passo:** riprovare più tardi (sessione fresca, magari da un altro dispositivo/browser) a incollare i contenuti di questa pagina secondo la struttura sopra. Tutti i testi, le domande, i campi e l'ordine delle sezioni sono già pronti in questo documento: il lavoro rimanente è puramente di building nell'editor, non di contenuto.

## Perché non l'ho costruito interamente io

Ho lavorato direttamente nell'account GHL con accesso guidato dall'utente (login fatto da [[Vito Romano]], poi controllo passato a me via browser). Ho creato il funnel, i custom field, e parte del contenuto della Pagina 1 prima che l'editor smettesse di rispondere per il blocco tecnico sopra descritto. Il contenuto testuale completo è pronto qui per il completamento manuale o per un mio nuovo tentativo in una sessione successiva.
