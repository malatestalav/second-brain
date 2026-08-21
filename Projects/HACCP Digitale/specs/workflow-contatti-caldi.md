---
type: spec
project: HACCP Digitale
status: active
tags: [workflow, commerciale, contatti-caldi, referral]
---

# Workflow Contatti Caldi

Workflow per i contatti che [[Antonio Smaldini]] conosce personalmente: amici, familiari, ex colleghi, conoscenti diretti nel settore bar/ristorazione, non trovati mappando il territorio. È un percorso separato e più corto rispetto al [workflow telefonate/WhatsApp](workflow-commerciale-telefono-whatsapp.md) e alla [SOP standard](sop-processo-vendita.md), pensato per l'unica cosa che i contatti caldi hanno già e i prospect freddi no: la fiducia.

> [!important] Perché non è la stessa procedura dei contatti freddi
> Il permesso di vendere (Fase 1 del playbook) e la credibilità (Fase 2) sono già garantiti dalla relazione personale. Applicare comunque lo script da sconosciuto a un amico suona artificiale e falso, e rischia di danneggiare la relazione più che aiutare la vendita. Qui si salta la forma, mai la sostanza: si resta comunque professionali, si fa comunque una demo vera, non si vende "sulla fiducia" senza far vedere nulla.

---

## Fase 1 — Mappatura dei Contatti Caldi

**Trigger:** una tantum all'inizio, poi ogni volta che emerge un nuovo nome (anche durante conversazioni non di lavoro).

**Azione:** Antonio Smaldini elenca chiunque conosca personalmente nel settore somministrazione alimentare: amici, parenti, ex colleghi, compagni di scuola, conoscenti di conoscenti già presentati di persona.

**A differenza dei prospect freddi**, non serve un profilo dettagliato (orari apertura, indirizzo): basta nome, locale, tipo di relazione (es. "amico d'infanzia", "ex collega di discoteca", "cugino di un cliente").

**Output:** riga aggiunta in [appuntamenti-log.md](../tracking/appuntamenti-log.md) con **Tipo Contatto = Caldo** e stato `Da contattare`.

---

## Fase 2 — Primo Contatto Diretto

**Trigger:** contatto caldo in lista con stato `Da contattare`.

**Azione:** messaggio o chiamata informale, nel tono naturale con cui Antonio Smaldini parla già con quella persona. Niente apertura da script per sconosciuti.

**Esempio (adattare al proprio modo di parlare, non da leggere parola per parola):**

> "Ciao [Nome], come butta? Ti volevo dire una cosa: ho iniziato a vendere un software per gestire l'HACCP digitalmente invece che a mano, visto che lo fai ancora con i registri cartacei ti va di dargli un'occhiata? Ti fa risparmiare un bel po' di tempo."

**Nessuna domanda di permission-to-sell formale**: la relazione personale è già il permesso implicito. Va comunque lasciato spazio a un vero "sì mi interessa" prima di procedere, non dato per scontato.

**Canale:** quello che già usano abitualmente (WhatsApp, chiamata, di persona). Le fasce orarie rigide del [workflow telefonate/WhatsApp](workflow-commerciale-telefono-whatsapp.md) restano una buona cortesia ma non una regola vincolante: chi conosce bene la persona sa già quando è il momento giusto.

**Output:** stato → `Contattato`, data, canale usato, reazione.

---

## Fase 3 — Demo Semplificata

**Trigger:** interesse confermato.

**Azione:**
1. La demo può avvenire anche in videochiamata o con schermo condiviso, non necessariamente in loco: il rapporto di fiducia lo permette.
2. Va comunque mostrato il prodotto reale, personalizzato sul locale specifico: mai "fidati che funziona" senza far vedere nulla. Saltare questo passaggio è l'errore più comune con i contatti caldi, e mina la credibilità professionale di Antonio Smaldini più che aiutarlo.
3. Sequenza Establish the Need → Satisfying the Need → Visualization resta identica a quella del playbook, solo più breve e meno formale nel tono.

**Output:** stato → `Demo fatta`, esito, note.

---

## Fase 4 — Prezzo e Chiusura

**Trigger:** dopo la demo.

**Azione:**
1. **Nessuno sconto amicale.** Le regole del playbook sul prezzo restano identiche: scontare danneggia la percezione di valore anche (soprattutto) con chi ci conosce. Il prezzo è 300€/anno per tutti.
2. Si può inquadrare il momento come positioning, non come sconto: *"Sei tra i primi a vederlo, prima che lo porti fuori dalla cerchia di persone che conosco direttamente."*
3. La chiusura è spesso più rapida che con un prospect freddo: può avvenire nella stessa conversazione del primo contatto, senza passare per tre touch separati.

**Output:** stato → `Chiuso`, data chiusura.

---

## Fase 5 — Richiesta Referral Immediata

**Trigger:** chiusura avvenuta.

**Differenza chiave rispetto ai contatti freddi:** nel workflow standard il referral si chiede solo dopo che il cliente ha visto un primo beneficio reale (giorni dopo). Con un contatto caldo, la fiducia già esistente permette di chiedere subito, nella stessa conversazione di chiusura.

**Azione:** chiedere esplicitamente 2-3 nomi di altri conoscenti nel settore.

> "Visto che ti è piaciuto, conosci qualcun altro nel giro che potrebbe averne bisogno? Anche solo un nome, ci penso io a contattarlo."

**Output:** ogni nome ricevuto diventa una nuova riga nel tracker con **Tipo Contatto = Caldo**, **Note = "Referral da [Nome]"**.

---

## Fase 6 — Gestione del Rifiuto

**Trigger:** risposta negativa o disinteresse.

**Regola principale:** la relazione personale vale più della singola vendita. Nessun retry aggressivo, nessuna cadenza di ritentativo come per i contatti freddi (3 tentativi in 5 giorni, poi 30 giorni).

**Azione:**
1. Accettare il no senza insistere. Es.: *"Nessun problema, se cambia idea sai dove trovarmi."*
2. Ritentare solo se è la persona stessa a riaprire il discorso in futuro, non su iniziativa di Antonio Smaldini.
3. Restano comunque un buon canale per referral futuri anche se non hanno comprato: chiedere comunque, con leggerezza, se conoscono qualcuno interessato.

**Output:** stato → `Perso (rifiuto)`, **Note = "Contatto caldo, non ritentare salvo apertura sua"**.

---

## Tracking

Nel tracker [appuntamenti-log.md](../tracking/appuntamenti-log.md), colonna **Tipo Contatto** = `Caldo` o `Freddo`. Questo permette, in revisione settimanale (Fase 8 della SOP), di confrontare il tasso di chiusura tra i due canali e capire quanto valore reale sta portando la rete personale di Antonio Smaldini rispetto alla prospezione a freddo sul territorio.
