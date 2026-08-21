---
type: spec
project: HACCP Digitale
status: active
tags: [workflow, commerciale, telefonate, whatsapp]
---

# Workflow Commerciale — Telefonate e WhatsApp

Workflow operativo giorno per giorno per [[Antonio Smaldini]], che integra telefonate e WhatsApp nelle fasi già definite in [sop-processo-vendita.md](sop-processo-vendita.md). Quel documento dice *cosa* fare in ogni fase; questo dice *quando* e *con quale canale*, minuto per minuto. Le argomentazioni di vendita restano nel [playbook](../drafts/script-vendita-commerciale.md).

> [!important] Regola di canale
> WhatsApp per tutto ciò che il titolare deve poter rileggere con calma (problema, video, conferma appuntamento, morning after). Telefono per tutto ciò che richiede una risposta immediata o una decisione sul momento (fissare data/ora, recuperare un no-show, sbloccare un contatto fermo).

---

## Fasce Orarie: Quando Chiamare e Quando No

Basato sulla giornata tipo del titolare in [[icp]]: durante il servizio è irraggiungibile e infastidito da qualsiasi contatto commerciale.

| Fascia | Stato del titolare | Telefonate | WhatsApp |
|---|---|---|---|
| 08:00 . 09:30 | Apertura, preparazione | Evitare | OK (letto con comodo dopo) |
| 09:30 . 11:30 | Finestra migliore, pre-servizio pranzo | **Sì, priorità massima** | OK |
| 11:30 . 14:30 | Servizio pranzo | **Mai** | Evitare invio nuovo, va bene risposta a messaggio suo |
| 14:30 . 18:00 | Pausa pomeridiana, seconda finestra migliore | **Sì** | OK |
| 18:00 . 19:30 | Preparazione servizio cena | Solo se già in contatto attivo | OK |
| 19:30 . 23:00 | Servizio cena | **Mai** | Evitare invio nuovo |
| Dopo 23:00 | Chiusura, titolare stanco | Mai | Mai (rimanda a domattina) |

Le due finestre telefoniche (09:30-11:30 e 14:30-18:00) sono il cuore della giornata di lavoro del commerciale.

---

## Giornata Tipo del Commerciale

| Blocco Orario | Attività | Canale |
|---|---|---|
| 09:00 . 09:15 | Apertura giornata: rivedere [appuntamenti-log.md](../tracking/appuntamenti-log.md), ordinare priorità (chi va richiamato, chi ha appuntamento oggi, chi aspetta risposta da 48h+) | . |
| 09:15 . 11:15 | Blocco chiamate mattutine: richiami a chi non ha risposto al Touch 1 scritto, chiamate per fissare data/ora appuntamento a chi ha reagito bene al video | Telefono |
| 11:15 . 11:45 | Invio Touch 1 scritto ai nuovi prospect della lista, invio Touch 2 (video) a chi ha risposto positivamente al Touch 1 | WhatsApp |
| 11:45 . 14:30 | Appuntamenti/demo in loco se presenti in calendario; se non ci sono demo, pausa e aggiornamento tracker | Presenza / Tracker |
| 14:30 . 17:30 | Blocco chiamate pomeridiane: stesso schema del blocco mattutino, priorità a chi ha appuntamento confermato per il giorno dopo (conferma finale) | Telefono + WhatsApp |
| 17:30 . 18:15 | Aggiornamento completo tracker (stato, ultimo canale, note), invio conferme scritte per gli appuntamenti di domani | WhatsApp + Tracker |
| 18:15 . 18:30 | Costruzione lista priorità per il giorno dopo (chi richiamare, chi contattare per la prima volta) | . |

---

## Fase per Fase: Script e Canale

### Touch 1 — Primo Contatto (WhatsApp, mai telefono)

Il primo contatto resta scritto: un titolare che riceve una chiamata da un numero sconosciuto durante il servizio tende a rifiutare senza ascoltare. Il messaggio scritto puo essere letto quando ha un minuto.

> "Buongiorno, sono [Nome] di Nexvision. Se le facessi vedere come far compilare l'HACCP al suo staff in pochi minuti invece che perderci 45 minuti al giorno, le interesserebbe saperne di più?"

Attendere risposta fino a 48 ore.

### Chiamata di Recupero — Se Nessuna Risposta al Touch 1 dopo 48h

**Trigger:** nessuna risposta al messaggio scritto dopo 48 ore.

**Azione:** una telefonata breve nella finestra 09:30-11:30 o 14:30-18:00.

**Script di apertura:**

> "Buongiorno, parlo con [Nome attività]? Sono [Nome] di Nexvision, le avevo scritto su WhatsApp qualche giorno fa a proposito dell'HACCP digitale. Ha un minuto adesso o preferisce che la richiami in un altro momento?"

- Se risponde di sì: procedere con la domanda di permission-to-sell a voce, poi passare direttamente alla proposta di data/ora (Touch 3).
- Se risponde che non ha tempo ora: chiedere la fascia oraria migliore per richiamare e fissarla, non riprovare a caso.
- Se risponde staff/cameriere e non il titolare: chiedere nome e orario migliore per parlare col titolare, non insistere con chi ha risposto.

### Touch 2 — Video (WhatsApp, mai telefono)

Il video va sempre inviato per iscritto, mai descritto a voce: deve poterlo guardare quando vuole.

> "Le mando 90 secondi che mostrano esattamente come funziona, con la voce di un locale che lo usa già."

### Touch 3 — Fissare l'Appuntamento (Telefono, non WhatsApp)

**Perché telefono:** fissare data e ora è una decisione, non un'informazione. Al telefono si chiude in 60 secondi; per scritto richiede più giri di messaggi e il rischio di perdere la finestra.

**Script:**

> "Vuole vedere dal vivo quello che ha visto nel video? Posso passare martedì alle 15:30 oppure mercoledì alle 11:00, quale preferisce?"

Sempre due opzioni precise, mai "quando vuole". Appena confermata la data, inviare subito un messaggio WhatsApp di riepilogo (giorno, ora, cosa aspettarsi).

### Conferma il Giorno Prima (WhatsApp, non telefono)

Una chiamata il giorno prima rischia di sembrare un controllo invadente. Il messaggio scritto basta e resta come promemoria visibile.

> "Le confermo per domani alle 15:30 in [locale]. A domani!"

### Gestione del No-Show (Telefono, immediato)

**Trigger:** il titolare non si presenta/non è disponibile all'appuntamento fissato.

**Azione:** chiamare entro 15 minuti dall'orario previsto, non aspettare fino a sera.

> "Buongiorno, sono [Nome] di Nexvision, avevamo l'appuntamento adesso: è successo qualcosa? Vuole che troviamo un altro momento questa settimana?"

Se non risponde alla chiamata: un messaggio WhatsApp breve subito dopo, poi si rientra nella cadenza di ritentativo standard (Fase 7 della SOP).

### Demo (Presenza, non telefono/WhatsApp)

Sequenza già definita in [Fase 5 della SOP](sop-processo-vendita.md#fase-5--demo-dal-vivo). Nessuna variazione di canale: è sempre in presenza.

### Morning After (WhatsApp, mai telefono)

Una chiamata il giorno dopo la chiusura rischia di sembrare un'ulteriore proposta di vendita. Il messaggio scritto è più leggero.

> "Grazie ancora per la fiducia, [Nome]! Da oggi lo staff può iniziare a usarlo. Se qualcosa non è chiaro scriva pure qui."

### Retry — Nessuna Risposta Prolungata

Cadenza già definita nella [Fase 7 della SOP](sop-processo-vendita.md#fase-7--gestione-del-no-e-retry): 3 tentativi in 5 giorni lavorativi (alternare canale: 1 WhatsApp + 2 chiamate, o viceversa in base a dove si era fermato il contatto), poi stop e ritentativo tra 30 giorni con un messaggio nuovo.

---

## Regole per le Chiamate a Freddo

- **Squilli:** massimo 6 squilli, poi riattaccare. Non richiamare subito dopo: aspettare almeno 2 ore prima di un secondo tentativo lo stesso giorno.
- **Segreteria telefonica:** lasciare messaggio solo al primo tentativo del giorno, breve, senza chiedere di essere richiamati (aumenta la sensazione di rincorsa):

  > "Buongiorno, sono [Nome] di Nexvision per [nome attività], la richiamo nei prossimi giorni."

- **Chi risponde non è il titolare:** mai presentare l'offerta a chi risponde se non ha potere decisionale. Chiedere solo nome del titolare e finestra oraria migliore.
- **Massimo 2 chiamate al giorno allo stesso numero.** Oltre due tentativi nello stesso giorno passa da persistenza a pressione, e il playbook di vendita è esplicito sul fatto che rendersi meno disponibili aumenta il valore percepito, non il contrario.

## Errori da Non Fare (Mai, in Nessun Caso)

- Aprire una chiamata con "Le rubo un minuto" o "La disturbo?": sono aperture bandite in ogni script di vendita, suonano come una scusa e non come un'apertura sicura.
- Chiamare durante le fasce di servizio (11:30-14:30 e 19:30-23:00).
- Lasciare messaggi lunghi o con troppi dettagli in segreteria.
- Chiamare per il morning after o per la conferma del giorno prima: quei due momenti restano sempre scritti.
- Superare i 2 tentativi telefonici allo stesso prospect nello stesso giorno.

---

## Cosa Registrare Dopo Ogni Interazione

Ogni telefonata o messaggio va segnato subito in [appuntamenti-log.md](../tracking/appuntamenti-log.md), colonna **Ultimo Canale** (Telefono/WhatsApp) e **Note** (esito preciso: risposto, non risposto, segreteria, richiamare alle..., rifiutato). Le obiezioni raccolte per telefono o di persona vanno comunque in [obiezioni-log.md](../tracking/obiezioni-log.md): il canale con cui è emersa l'obiezione non cambia la sua categoria, ma può essere annotato nel campo Note.
