---
type: spec
project: HACCP Digitale
status: active
tags: [sop, vendita, commerciale, processo]
---

# SOP — Processo di Vendita HACCP Digitale

Procedura operativa dettagliata per l'esecuzione della strategia di commercializzazione definita in [riunione-commerciale-2026-08-20.md](../notes/riunione-commerciale-2026-08-20.md). Ogni fase indica trigger, azione esatta, tempistica, responsabile e cosa registrare nei file di tracking. Le argomentazioni di vendita (permission to sell, damaging admission, gestione prezzo, ecc.) restano nel [playbook di vendita](../drafts/script-vendita-commerciale.md): questo documento è il processo, quello è il contenuto della conversazione.

> [!info] Chi esegue cosa
> [[Antonio Smaldini]] esegue le fasi 1-7 sul campo. [[Antonio Malatesta]] fa la revisione settimanale (Fase 8) e decide su territorio/espansione. Ogni fase produce dati che vanno registrati nei tracker collegati, non tenuti a memoria o solo su WhatsApp.

---

## Fase 1 — Costruzione della Lista Prospect

**Trigger:** Inizio settimana, o quando la lista attiva scende sotto 30 prospect non ancora contattati.

**Azione:**
1. Identificare bar, ristoranti, hotel, attività di somministrazione nel territorio assegnato (Potenza e provincia in prima battuta).
2. Priorità a chi apre sia a pranzo che a cena (doppio momento operativo = più necessità di HACCP).
3. Per ognuno raccogliere: nome attività, indirizzo/zona, orari di apertura, telefono/WhatsApp se reperibile, nome del titolare se noto.
4. Target: mantenere sempre almeno 50 prospect "pronti al Touch 1" in coda.

**Output:** riga aggiunta in [appuntamenti-log.md](../tracking/appuntamenti-log.md) con stato `Da contattare`.

**Responsabile:** [[Antonio Smaldini]], con supporto di [[Antonio Malatesta]] sull'espansione fuori Potenza (Fase 9).

---

## Fase 2 — Touch 1: Primo Contatto WhatsApp

**Trigger:** Prospect con stato `Da contattare` nel tracker.

**Azione:**
1. Inviare messaggio WhatsApp che nomina il problema, non il prodotto (linguaggio da [[pain-points]]: "tortura", "perdita di tempo", mai "dematerializzazione" o "cloud").
2. Usare l'apertura di permission-to-sell dal playbook: *"Se ti facessi vedere come far compilare l'HACCP al tuo staff in pochi minuti invece che perderci 45 minuti al giorno, ti interesserebbe saperne di più?"*
3. Attendere risposta fino a 48 ore prima di considerare "nessuna risposta".

**Output:** aggiornare la riga nel tracker: stato → `Touch 1 inviato`, data invio, se c'è stata risposta (Sì/No/Parziale).

**Responsabile:** [[Antonio Smaldini]].

---

## Fase 3 — Touch 2: Video

**Trigger:** Risposta positiva o interessata al Touch 1.

**Azione:**
1. Inviare il video 60-90 secondi con testimonial reale + gestionale in azione.
2. Messaggio di accompagnamento breve, non ripetere quanto già detto nel Touch 1.

**Output:** stato → `Touch 2 inviato`, data invio, reazione (visto/non visto se rilevabile, risposta ricevuta Sì/No).

**Responsabile:** [[Antonio Smaldini]].

---

## Fase 4 — Touch 3: Richiesta Appuntamento

**Trigger:** Reazione positiva al video, o risposta diretta di interesse.

**Azione:**
1. Proporre data e ora precise, mai "quando vuoi". Esempio: *"Vuoi vedere dal vivo quello che hai visto nel video? Martedì alle 15:30 o mercoledì alle 11:00?"*
2. Confermare l'appuntamento il giorno prima via WhatsApp.
3. Se il titolare non è mai presente, chiedere esplicitamente la finestra oraria in cui è raggiungibile.

**Output:** stato → `Appuntamento fissato`, data/ora appuntamento, confermato il giorno prima (Sì/No).

**Responsabile:** [[Antonio Smaldini]].

---

## Fase 5 — Demo dal Vivo

**Trigger:** Appuntamento confermato, giorno dell'incontro.

**Azione (sequenza Attention → Establish the Need → Satisfying the Need → Visualization → Call to Action, dal playbook):**
1. Apertura con la domanda di permission-to-sell, anche di persona.
2. Far emergere il problema reale di quel locale specifico (non generico).
3. Mostrare il software risolvendo esattamente quel problema.
4. Far immaginare la settimana successiva senza quel problema.
5. Chiudere attivando la licenza sul posto, non "mando il link dopo".
6. Se emergono obiezioni, gestirle con le tecniche del playbook (prezzo, tempo, scetticismo) e registrarle **subito dopo l'incontro**, finché sono fresche.

**Output:**
- Nel tracker appuntamenti: esito demo (`Chiuso` / `Da richiamare` / `Perso`), note.
- Ogni obiezione incontrata → nuova riga in [obiezioni-log.md](../tracking/obiezioni-log.md), anche se poi la vendita si è chiusa.

**Responsabile:** [[Antonio Smaldini]].

---

## Fase 6 — Chiusura e Morning After

**Trigger:** Licenza attivata.

**Azione:**
1. Entro 24 ore: messaggio WhatsApp di ringraziamento, non ulteriore vendita.
2. Verificare che almeno un membro dello staff del cliente abbia ricevuto e capito la prima notifica push.
3. Solo dopo che il cliente ha visto il primo beneficio reale (non il giorno stesso), chiedere un referral.

**Output:** stato → `Chiuso`, data chiusura, data verifica onboarding staff, se richiesto referral (Sì/No/Ottenuto).

**Responsabile:** [[Antonio Smaldini]], con [[Vito Romano]] per il supporto on-boarding tecnico se necessario.

---

## Fase 7 — Gestione del "No" e Retry

**Trigger:** Nessuna risposta dopo un touch, o rifiuto esplicito.

**Azione:**
1. Se nessuna risposta: massimo 3 tentativi in 5 giorni lavorativi, poi stop.
2. Dopo lo stop, ritentare tra 30 giorni con un nuovo touch (non lo stesso messaggio).
3. Se rifiuto esplicito con motivazione: registrare la motivazione come obiezione nel tracker anche se il prospect non è stato riconquistato.
4. Non rincorrere oltre i 3 tentativi: il playbook cita esplicitamente che rendersi meno disponibili aumenta il valore percepito (takeaway selling).

**Output:** stato → `Perso (no-response)` o `Perso (rifiuto)` con motivazione, data prossimo ritentativo (+30 giorni) se applicabile.

**Responsabile:** [[Antonio Smaldini]].

---

## Fase 8 — Revisione Settimanale

**Trigger:** Cadenza fissa, 15 minuti a settimana.

**Azione:**
1. [[Antonio Malatesta]] e [[Antonio Smaldini]] rivedono insieme [appuntamenti-log.md](../tracking/appuntamenti-log.md) e [obiezioni-log.md](../tracking/obiezioni-log.md).
2. Compilare la riga della settimana in [metriche-settimanali.md](../tracking/metriche-settimanali.md): prospect contattati, risposte, appuntamenti fissati, appuntamenti rispettati, demo fatte, licenze chiuse.
3. Individuare l'obiezione più frequente della settimana e decidere se serve aggiornare lo script (playbook) o il video del Touch 2.
4. Correggere territorio o script in base ai numeri, non a sensazioni.

**Output:** riga compilata in metriche-settimanali.md, eventuali aggiornamenti al playbook di vendita annotati lì.

**Responsabile:** [[Antonio Malatesta]] (conduce), [[Antonio Smaldini]] (porta i dati).

---

## Fase 9 — Espansione Geografica

**Trigger:** Quando Potenza mostra saturazione (tasso di risposta Touch 1 in calo per 2 settimane consecutive) o quando la revisione settimanale lo indica come priorità.

**Azione:**
1. [[Antonio Malatesta]] valuta almeno 2 nuove province, in parallelo e non dopo aver saturato Potenza.
2. Decidere se via partner commerciale esterno o trasferta diretta di [[Antonio Smaldini]].
3. Applicare le Fasi 1-8 identiche al nuovo territorio, tracciando separatamente per zona nel tracker (colonna Località).

**Output:** nuove righe nel tracker con Località aggiornata, obiettivo Q3 in [[strategy]] verificato.

**Responsabile:** [[Antonio Malatesta]].

---

## Come Usare i File di Tracking

- [appuntamenti-log.md](../tracking/appuntamenti-log.md) va aggiornato **in tempo reale**, subito dopo ogni touch o incontro, non a fine giornata a memoria.
- [obiezioni-log.md](../tracking/obiezioni-log.md) va compilato subito dopo ogni demo o rifiuto, mentre l'obiezione è ancora fresca.
- [metriche-settimanali.md](../tracking/metriche-settimanali.md) si compila solo in Fase 8, come rollup dei due tracker sopra.
- Questi tre file sono la fonte dati per ogni analisi futura richiesta a Claude: più sono compilati con costanza, più l'analisi settimanale/trimestrale sarà accurata.
