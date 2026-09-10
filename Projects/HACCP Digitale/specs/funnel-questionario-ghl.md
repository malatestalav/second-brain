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

> [!warning] Ordine reale della pagina, aggiornato in build il 2026-09-09 (sostituisce l'ordine descritto nelle sezioni sotto)
> Dopo una consulenza con [[Mario Olivelli]] (vedi [[stakeholders]]), che ha condiviso la struttura della sua opt-in page Codex10 come riferimento, l'ordine reale costruito nell'editor è cambiato rispetto a quanto descritto sezione per sezione più sotto in questo documento:
> 1. Headline + sottotitolo (Sezione 1, invariati)
> 2. "Ecco esattamente come funziona" + **Video demo** (spostato qui, subito dopo il sottotitolo — non più dopo il questionario)
> 3. Bottone "Prenota l'analisi gratuita"
> 4. **Nuovo blocco "In questo video scoprirai"** (6 bullet, vedi sotto)
> 5. **Nuova sezione "Chi c'è dietro HACCP Digitale"** (autorità/credibilità, vedi sotto)
> 6. I 5 bullet originali della Sezione 1 (Basta faldoni di carta, Da 30 minuti a pochi secondi, ecc. — copy già riscritta dall'utente direttamente in build, non più quella abbozzata sotto)
> 7. Bottone "Prenota l'analisi gratuita"
> 8. Headline/sottotitolo/form della Sezione 4 (contatti)
>
> **Il questionario (Sezione 2 sotto) non è più su questa pagina**: si sposta sulla pagina di ringraziamento dopo la submission del form contatti (vedi warning dedicato più sotto). Le sezioni numerate restano nel documento come riferimento per i contenuti (copy, custom field, campi), non per l'ordine fisico sulla pagina.

## Nuovo Blocco . "In Questo Video Scoprirai" (aggiunto 2026-09-09)

Ispirato alla struttura Codex10 di [[Mario Olivelli]] (vedi [[stakeholders]]), adattato a fatti reali del prodotto — niente claim non veritieri (vedi correzioni sotto).

**Titolo:** "In questo video scoprirai:"

1. Come si compilano i registri di sanificazione e temperature in pochi secondi, direttamente da telefono
2. Come funziona la scheda di ricevimento merci, senza più fogli sporchi da riscrivere
3. Come gestire al meglio le tue ricette per avere tracciabilità completa di tutti gli ingredienti
4. Come il titolare vede da un'unica dashboard la conformità di tutta l'attività
5. Cosa mostrare all'ispettore NAS per chiudere il controllo in pochi secondi, non in 30 minuti di ricerca nei faldoni
6. Perché non serve nessuna formazione tecnica per iniziare a usarlo da subito

Posizione: subito dopo il primo bottone "Prenota l'analisi gratuita" (sotto il video), prima della sezione "Chi siamo".

## Nuova Sezione . "Chi c'è Dietro HACCP Digitale" (aggiunta 2026-09-09)

Sezione di autorità/credibilità, posizionata dopo il blocco "In questo video scoprirai" e prima dei bullet originali della Sezione 1. Costruita solo su fatti verificati (vedi correzioni sotto) — niente numeri o claim di esclusività non veri, a differenza del riferimento Codex10.

**Titolo:** "Chi c'è dietro HACCP Digitale"

1. Fondatore di HACCP Digitale dopo 10 anni di gestione diretta di ristoranti e bar
2. Ha vissuto in prima persona la burocrazia HACCP cartacea: registri sporchi, ore perse ogni giorno, ansia ai controlli NAS
3. Le procedure sono state validate da un tecnologo alimentare con oltre 30 anni di esperienza nel settore (vedi [[stakeholders]])

**Sottotitolo:** "Risultati reali, non promesse"

1. Un bar di Potenza: da 45 minuti a pochi secondi al giorno di compilazione
2. Un ristorante con staff: da registri compilati in ritardo e sotto stress a riorganizzazione dei ruoli del personale e tutto sotto controllo
3. Un forno con tante preparazioni: da gestione manuale caotica a tutto organizzato in automatico (vedi Caso 3 in [[services]])

> [!warning] Correzioni fattuali del 2026-09-09 (Antonio Malatesta)
> - **Rimosso** il claim "primo e unico provider digitale di HACCP in Italia": esistono competitor digitali, era un'informazione sbagliata (corretto anche in [[organization]])
> - **Rimosso** ogni riferimento a "notifiche push in tempo reale": il prodotto non le manda (corretto anche in [[services]] e [[pain-points]])
> - **Tempo di compilazione corretto:** da "45 minuti a 10-15 minuti" a "45 minuti a pochi secondi" (corretto anche in [[services]] e [[pain-points]])
> - **Niente numero di licenze pubblicato:** l'azienda ha 8 licenze attive (aggiornato da 4), ma il numero resta troppo basso per essere usato come prova sociale pubblica — non inserirlo nella pagina

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

> [!warning] Spostato sulla pagina di ringraziamento (decisione del 2026-09-09)
> Il questionario **non è più su questa pagina**. Su consiglio di [[Mario Olivelli]] (vedi [[stakeholders]]), le 4 domande si spostano sulla **pagina di ringraziamento** mostrata dopo la submission del Form Contatti (Sezione 4): prima si chiede il contatto (form breve, meno frizione), poi — a impegno già preso — si qualifica con le domande. Il modulo "QUESTIONARIO HACCP" resta lo stesso (già creato in GHL, vedi elenco moduli sotto), va solo spostato di posizione: dalla pagina opt-in alla pagina di ringraziamento del funnel. Pagina di ringraziamento ancora da costruire.

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
- **Sopra il video:** micro-headline "Ecco esattamente come funziona"
- **Sotto il video:** un bottone "Prenota l'analisi gratuita" verso la Sezione 4 (Form Contatti)

> [!warning] Un solo bottone, dopo il video (non prima)
> Decisione dell'utente il 2026-09-08, che sostituisce la versione precedente (due bottoni, uno sopra e uno sotto): **niente bottone prima del video**. L'unico CTA di questa sezione sta sotto il player, dopo la demo.

> [!info] Asset già pronto (6 minuti)
> Il video demo è già disponibile ([[Antonio Malatesta]] lo tiene già registrato), durata 6 minuti, caricato nel Media Storage di GHL come "VIDEO DEMO.mp4". Al momento della build (2026-09-08) la piattaforma stava ancora elaborando/transcodificando il file: il player mostrava un thumbnail placeholder generico. Verificare a inizio prossima sessione che il video reale sia comparso al posto del placeholder.

## Sezione 4 . Form Contatti per l'Analisi Gratuita (Modulo 2, submission separata)

**Headline (aggiornata dall'utente in build, 2026-09-09):** "Prenota la tua analisi gratuita dei punti critici"

**Sottotitolo (aggiornato dall'utente in build, 2026-09-09):** "Un consulente ti chiama, viene nella tua attività e insieme a te capisce esattamente dove rischi e le tue esigenze. Zero impegno."

**Campi (confermati dall'utente, nessun altro dato da raccogliere):**
- Nome
- Nome attività commerciale
- Email
- Telefono (obbligatorio, è il canale su cui poi si richiama)

> [!warning] Niente comune/provincia
> Il campo comune/provincia è stato scartato esplicitamente dall'utente. Il targeting geografico (Potenza e provincia) resta gestito a monte, nella campagna Instagram/DM, non nel form.

> [!info] Flusso post-submission confermato dall'utente (2026-09-09)
> 1. Prospect guarda il video su Instagram → scrive in DM → riceve il link della pagina
> 2. Nella pagina: guarda la demo, lascia i contatti (questo form)
> 3. Il commerciale **chiama** il lead per fissare un appuntamento **in sede** (di persona, non da remoto)
> 4. Il commerciale **va fisicamente nell'attività** e fa l'analisi gratuita dei punti critici
> 5. Chiude la vendita in loco
>
> Questo è specifico alla **campagna organica Instagram, solo Potenza e provincia** — attività raggiungibili fisicamente dal commerciale. Per campagne a livello nazionale (attività non raggiungibili di persona) serve un progetto/funnel separato con un flusso diverso (probabilmente demo/vendita da remoto), non ancora pianificato.

## Copy di Transizione Tra le Sezioni (riscritte 2026-09-10 per l'ordine reale)

Frasi ponte da inserire come piccolo blocco di testo (Sottotitolo o Paragrafo breve, corsivo/centrato come "Ecco esattamente come funziona") nei punti di passaggio reali della pagina costruita. Coerenti con [[brand]] (diretto, caldo, tecnico, niente hype). **Non ancora inserite nel builder** — pronte per essere aggiunte.

**1. Tra il sottotitolo iniziale ("Il sistema che ti fa compilare l'HACCP...") e "Ecco esattamente come funziona" + video:**
> "Non fidarti della parola: guarda il prodotto in azione."

**2. Tra "In questo video scoprirai" (+ bottone) e "Chi c'è dietro HACCP Digitale":**
> "Prima di prenotare, ecco chi ti risponderà al telefono e chi ha validato queste procedure."

**3. Tra "Risultati reali, non promesse" (+ bottone) e la sezione finale "Prenota la tua analisi gratuita dei punti critici":**
> "Hai visto chi siamo e cosa abbiamo già risolto per altri locali. Ora tocca al tuo."

> [!tip] Perché queste frasi e non altre
> Ognuna fa da "cerniera": chiude il beneficio della sezione appena vista (prova, autorità, risultati) e apre l'aspettativa di quella successiva, restando concreta invece che motivazionale generica. Ancora da verificare nella revisione finale insieme a bullet e resto del copy.

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

## Stato Build (fine sessione 2026-09-09, seconda parte: revisione stile)

**Struttura e contenuto (prima parte della sessione):** vedi cronologia sopra — barra fissa, video riposizionato, "in questo video scoprirai", "chi siamo", bullet, form contatti, pipeline via API. Tutto ✅.

**Revisione stile (seconda parte, dopo consultazione con [[Mario Olivelli]]):**
- **Tema scuro stile Codex10** scelto esplicitamente dall'utente (non il verde/bianco originale del brand) ✅
- **Sfondo:** gradiente scuro (nero/verde scurissimo) sulle sezioni principali, gradiente verde-bianco-verde sulla barra fissa (voluto, non un errore) ✅
- **Testo:** headline e bullet in bianco, parole chiave (es. "GRATIS", "ZERO IMPEGNO") evidenziate in verde acceso, in stile Codex10 ✅
- **Sottotitolo headline aggiornato:** "Il sistema che ti fa compilare l'HACCP in pochi secondi e presentarti sempre pronto ai controlli NAS" ✅ (l'utente ha adattato la bozza proposta)
- **Icone bullet:** cambiate da spunta blu a asterisco blu ("✳") — "più simpatico" come richiesto ✅
- **Form contatti:** riorganizzato a 2 colonne (Nome/Nome attività, Telefono/Email), sfondo bianco su sfondo verde/scuro ✅
- **Checkbox consenso:** sostituita con una sola checkbox, testo "Dichiaro di aver letto e accetto la Privacy Policy di NexVision SRL" ✅ — link cliccabile non ancora aggiunto (vedi decisione aperta sotto)
- **Footer aggiunto:** Nexvision S.r.l., indirizzo (Via L. Braille 4, 85100 Potenza PZ), P.IVA IT02233130760, Iscr. Reg. Imprese PZ-0223363, copyright ✅ — più completo di quanto proposto, include dati legali reali dell'azienda

## Pagina di Ringraziamento . "2 - Grazie" (costruita 2026-09-09)

Riusata la vecchia pagina "2 - Questionario" (rinominata "2 - Grazie"), che conteneva già un form generico residuo del primo giorno di build — sostituito con il modulo reale **"QUESTIONARIO HACCP"** (le 4 domande corrette, creato l'8/9).

**Contenuto:**
- Titolo: "GRAZIE!"
- Sottotitolo: "TI CONTATTEREMO IL PRIMA POSSIBILE!"
- Testo: "Nel frattempo rispondi a queste quattro domande — ci permettono di conoscere meglio la tua attività e arrivare preparati alla tua analisi gratuita dei punti critici."
- Modulo "QUESTIONARIO HACCP" (le 4 domande)

**Collegamento dal Form Contatti (Pagina 1):** Builder Modulo del Form Contatti → Impostazioni → "All'invio" → **"Reindirizza all'URL"** → URL della pagina "2 - Grazie" (preview link `link.mxaccelerator.com/preview/...`, da aggiornare se/quando si collega un dominio personalizzato).

**Pagina "3 - Video Demo"**: eliminata, non più necessaria (contenuto già consolidato nella Pagina 1).

## Automation di Notifica . "Notifica Nuovo Lead HACCP" (costruita 2026-09-10)

Workflow GHL creato e **pubblicato/attivo**, sotto Automazione → Flussi di lavoro (era nato con nome di default "HACCP ORG1", rinominato).

- **Trigger:** "Modulo Inviato" → filtro "Il modulo è" → **Form 3** (il Form Contatti della Pagina 1; il rename in "Form Contatti" fatto nel builder pagina non si riflette nel nome tecnico mostrato qui, resta "Form 3")
- **Azione:** "Invia notifica interna" (Internal Notification), tipo Email
- **Destinatario:** "Email personalizzata" → `malatesta.lav@gmail.com` (notifica ad [[Antonio Malatesta]], non al commerciale — decisione esplicita del 2026-09-10, diversa da quanto pianificato inizialmente per Antonio Smaldini)
- **Oggetto:** "Nuovo lead HACCP Digitale"
- **Corpo:** Nome, Attività, Telefono, Email del contatto (merge field inseriti tramite il picker "tag", categoria "Contact") + invito a richiamare per fissare l'analisi gratuita

> [!warning] Solo dati del Form Contatti, non del Questionario
> Questo workflow si attiva sulla submission del **Form Contatti** (Pagina 1). Le risposte del **Questionario** (Pagina 2 "Grazie") arrivano separatamente sullo stesso Contact ma non sono incluse nel corpo dell'email di notifica attuale. Se si vuole includerle, va aggiunto un secondo trigger "Modulo Inviato" su "QUESTIONARIO HACCP" (nello stesso workflow o in uno separato), oppure aggiungere i merge field delle risposte al corpo email esistente (funzionano comunque perché sono sullo stesso Contact).

> [!success] Collegamento a Pipeline aggiunto (2026-09-10)
> La pipeline **"HACCP Digitale - Lead"** esisteva già (3 fasi: Nuovo Lead da Video, Consulenza Fissata, Cliente — 0 lead prima di andare live). Aggiunta al workflow l'azione **"Crea O Aggiorna Opportunità"** (posizionata prima della Internal Notification, ordine non critico): sequenza "HACCP Digitale - Lead", fase "Nuovo Lead da Video", nome opportunità = merge field Nome attività commerciale, fonte "Instagram Organico" (testo libero, per distinguere questa fonte in futuro), valore vuoto, stato "open", nessun toggle attivato. Workflow salvato e confermato su **Pubblica**. Ogni submission del Form Contatti ora crea sia la notifica email sia l'opportunità in pipeline.

> [!tip] Lezione tecnica: come inserire correttamente i merge field
> Le variabili `{{...}}` vanno SEMPRE inserite tramite l'icona "tag/etichetta" nella barra di editing del testo (mai digitate a mano, anche se sintatticamente identiche) — altrimenti GHL le tratta come testo semplice non valido e blocca il salvataggio con l'errore "Ci sono problemi nelle tue variabili personalizzate". I campi standard (Nome, Telefono, Email) si trovano cercando in inglese sotto la categoria "Contact" nel picker (ce ne sono di duplicati sotto "User"/"Account"/"Appointment": va scelto sempre quello sotto "Contact"). I campi custom (es. "Nome attività commerciale") si trovano cercando il nome in italiano nello stesso picker.

> [!warning] Bug/comportamento: font-size Desktop che sovrascrive Mobile (in indagine dal 2026-09-10)
> Nell'editor pagine GHL i valori di stile (dimensione carattere, altezza riga) sono collegati a cascata tra i breakpoint per default: se un dispositivo non ha un override esplicito, eredita dal breakpoint superiore (Desktop → Tablet → Mobile). Modificando il font in vista Desktop, il valore "scende" anche su Mobile anche se lì sembrava già corretto. Soluzione da verificare: in vista Mobile, usare l'icona di override accanto al campo "Dimensione del carattere" per fissare un valore specifico a quel breakpoint prima di toccare Desktop. Da confermare sul campo con [[Vito Romano]] nella prossima sessione di build.

> [!success] Test end-to-end completato (2026-09-10)
> Compilazione reale da smartphone di [[Vito Romano]] (dati fittizi, "prova2"): Form Contatti → pagina Grazie → Questionario, tutto funzionante. Verificato: opportunità creata in pipeline "HACCP Digitale - Lead" fase "Nuovo Lead da Video" con fonte "Instagram Organico" ✅, email di notifica ricevuta su malatesta.lav@gmail.com (finita in spam, non bloccante ma da monitorare — eventualmente sistemare con autenticazione SPF/DKIM in GHL se capita anche ad altri destinatari in futuro) ✅. Due dettagli minori ancora da sistemare, non bloccanti per il funzionamento ma da fare prima del lancio reale:
> - Il redirect del Form Contatti porta ancora alla pagina "2 - Grazie" sul vecchio dominio `link.mxaccelerator.com` invece che su `offerta.haccpdigitale.it` — va aggiornato l'URL in Builder Modulo Form Contatti → Impostazioni → "All'invio"
> - Il messaggio dopo l'invio del Questionario è ancora quello di default di GHL in inglese ("We appreciate your feedback!") — va personalizzato in italiano in Builder → modulo Questionario HACCP → Impostazioni → azione post-submit

> [!bug] Bug trovato e corretto: risposte del Questionario non si salvavano sul Contact (2026-09-10)
> Dal test end-to-end, il Contact "prova2" aveva la sezione "Additional Info" completamente vuota nonostante il Questionario fosse stato compilato e inviato. Causa: nel builder del modulo "QUESTIONARIO HACCP", la **Chiave della query** (field key) della prima domanda era `tipo_di_attività` (con l'accento), diversa dalla chiave reale del custom field già creato in GHL, `tipo_di_attivit` (GHL taglia gli accenti quando genera le chiavi) — la domanda scriveva quindi su un campo diverso da quello collegato alla pipeline/notifiche. Corretta la chiave su tutte e 4 le domande, verificate contro la tabella dei custom field sopra (nota la domanda 3 "Chi compila i registri HACCP" che usa correttamente la chiave storica `numero_persone_nel_locale`, non un errore). Da riconfermare con un nuovo test che i campi si popolino ora.

**Non ancora fatto:**
1. **Link Privacy Policy cliccabile:** la privacy policy di haccpdigitale.it è gestita via popup Iubenda senza URL diretto copiabile dal sito; serve recuperare il link pubblico permanente dal pannello Iubenda (formato tipico `https://www.iubenda.com/privacy-policy/xxxxxxxx`). Fino ad allora la checkbox resta solo testuale, senza link
2. **Copy di transizione tra le sezioni**: da riscrivere per il nuovo ordine (vedi warning sopra), non ancora fatto
3. **Includere le risposte del Questionario nella notifica** (vedi warning sopra) — opzionale, da valutare
4. **Rifinitura stile:** allineamento verticale barra fissa, dimensioni font globali del form (non ancora trovato dove impostarle) — foto aggiunta con successo il 2026-09-10 (screenshot app: dashboard/registri categorie, in colonna affiancata ai bullet "Risultati reali, non promesse")
5. ~~**URL definitivo del redirect**: aggiornare il link di reindirizzamento nel Form Contatti quando si collega un dominio personalizzato al posto del preview link mxaccelerator~~ **Fatto (2026-09-10)**: dominio collegato, pagina live su `https://offerta.haccpdigitale.it/1---opt-in-di-vendita-page`. Sottodominio `offerta` scelto per non toccare i record DNS esistenti (`@`, `gestionale`, `mail`) usati dalla web app su `www.haccpdigitale.it`, record CNAME aggiunto via Aruba (Gestione DNS di haccpdigitale.it) puntando a `sites.ludicrous.cloud`. Da verificare: il redirect del Form Contatti verso la pagina "2 - Grazie" punta ancora al vecchio preview link mxaccelerator, da aggiornare al nuovo dominio se necessario.
6. **WhatsApp Business**: valutato ma non attivato — richiede un abbonamento/integrazione a pagamento separato su GHL/MX Accelerator (costo non noto, da verificare cliccando "Integrate WhatsApp now!" nell'account solo se si decide di procedere)

## Decisione Aperta: Link Privacy Policy

La checkbox di consenso nel form contatti dichiara l'accettazione della Privacy Policy di NexVision SRL ma **non ha ancora un link cliccabile** verso il documento reale (ospitato come popup Iubenda su haccpdigitale.it, senza URL diretto). Recuperare il link pubblico da Iubenda e aggiungerlo come testo/link separato vicino alla checkbox (i campi "etichetta" dei singoli campi modulo in GHL non supportano link inline; serve un elemento di testo della pagina, che invece li supporta).

## Perché non l'ho costruito interamente io

Ho un accesso browser instabile all'account GHL in questa sessione (vedi cronologia: errori 429 persistenti sul mio browser automatizzato, mentre sul browser dell'utente la piattaforma funziona normalmente). La build è quindi stata fatta da [[Vito Romano]] in prima persona, guidato da me passo passo in chat. Il contenuto testuale completo e lo stato preciso di avanzamento sono qui per riprendere senza perdere il filo nella prossima sessione.
