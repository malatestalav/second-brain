---
type: note
project: HACCP Digitale
status: active
tags: [feedback, copywriting, opt-in-page, conversione]
---

# Revisione Opt-in Page, 12 Settembre 2026

Revisione esterna della pagina `offerta.haccpdigitale.it` ricevuta il 2026-09-12, dopo il lancio tecnico del funnel (vedi [[funnel-questionario-ghl]]). Giudizio netto: struttura tecnica solida, ma copy e prova sociale non convertono. Punti principali, da correggere in ordine di priorità.

> [!warning] Promessa: doppia offerta, paura non quantificata
> Il hero vende due cose insieme ("HACCP in pochi secondi" = software, "punti critici gratis" = visita del consulente) e il lettore non capisce cosa sta chiedendo cliccando. Scelta consigliata: la lead magnet è **l'analisi in loco**, il software è il mezzo per arrivarci. Il "gratis" va sulla CTA, non nel titolo. Inoltre la paura non è quantificata: il vero motore d'acquisto è la multa NAS e il rischio chiusura, non "risparmiare tempo" — la pagina la chiama genericamente "ansia ai controlli" invece di nominare la cifra reale della sanzione. Ordine consigliato: prima la perdita (multa), poi il guadagno (tempo).
>
> **Hero proposto dal revisore:**
> "Il prossimo controllo NAS lo chiudi in 5 minuti, o lo paghi fino a X.000 euro. Un tecnologo alimentare viene nel tuo locale, trova i punti critici che ti espongono alla multa e ti mostra come compilare l'HACCP dal telefono in 30 secondi al giorno. [Prenota la visita gratuita] · sotto: 'Nessun costo, nessun contratto, sei tu a decidere dopo.'"
>
> **Bloccante**: la cifra "X.000 euro" non è verificata nel vault (vedi [[pain-points]], [[services]]) — va confermata (range sanzionatorio reale D.Lgs 193/2007 per non conformità HACCP) prima di pubblicarla.

> [!warning] Prova: sezione vuota, il problema più grave secondo il revisore
> - **Nessun nome**: fondatore e tecnologo alimentare non hanno nome né foto in pagina. "Un bar", "un ristorante", "un forno" non sono case study verificabili — servono nome del locale, città, foto del titolare, una frase sua, un numero.
> - **Nessun numero**: quanti locali usano il sistema, quanti controlli superati, da quanti anni attivi. Un numero dispari e specifico nell'hero vale più di tutti i bullet insieme.
> - **Foto stock**: l'immagine del telefono in mano nella card "VIDEO DEMO" dice "template". Sostituire con screenshot veri dell'app e foto del consulente in un locale reale.

> [!warning] Direct response e form
> - Bottone "Invia" con placeholder telefono in stile USA ("+1 (555) 000-0000") tradisce un builder non localizzato — sistemare placeholder italiano, testo bottone "Prenota la visita gratuita".
> - Manca il "cosa succede dopo" il click: 3 step sotto il form (compili → ti chiama [nome] entro 24 ore → fissate la visita) toglie la paura della chiamata di vendita a freddo.
> - Email obbligatoria per un target che risponde al telefono, non alla mail: renderla facoltativa, tenere solo nome, locale, telefono come obbligatori. Meno campi = più conversione.
> - La sezione "zero impegno" ripete lo stesso concetto tre volte con testo lungo — comprimere in una riga sotto il bottone.
> - Il video apre su una card statica "VIDEO DEMO": il primo frame deve mostrare un volto o un dato reale, non un placeholder. Sotto il video: durata + 3 punti (non 6) di cosa si vedrà.

> [!warning] Visivo
> - **Palette nero/verde neon** legge "SaaS per sviluppatori", non coerente con il target (titolari di bar/ristoranti 40-60 anni): consigliato fondo chiaro, un colore caldo di fiducia, foto di persone e cucine vere invece del tema scuro Codex10 attualmente scelto.
> - **Hero solo testo** su mobile occupa 5 righe di maiuscolo prima di qualsiasi immagine: titolo max 2 righe in sentence case (non tutto maiuscolo), video/immagine subito sotto.
> - **Gerarchia visiva piatta**: ogni sezione ha lo stesso peso — serve enfasi su hero, prova, CTA; il resto è supporto secondario.
> - **Nessun elemento di fiducia**: loghi associazioni di categoria, "validato da tecnologo iscritto all'ordine" con nome reale, sigilli GDPR — costano zero da aggiungere e riducono l'attrito percepito.

> [!tip] Ordine di pagina consigliato dal revisore
> Hero (multa + visita gratis) → video → 3 testimonianze con nome e foto → chi siamo con volti → come funziona la visita in 3 step → form a 3 campi → FAQ (quanto costa dopo la visita, quanto dura, serve formazione).

## Cosa serve da Antonio prima di poter correggere

Per rispettare [[feedback_verify_facts_before_drafting]] (verificare i fatti prima di scrivere), non riscrivo il copy finché non ho questi dati reali:

1. **Cifra reale della sanzione NAS** per non conformità HACCP (range legale, non inventato)
2. **Nome e foto del tecnologo alimentare** che valida le procedure (citato ma mai nominato nel vault, vedi [[stakeholders]])
3. **Nome, città, foto dei 2-3 locali reali** usati come case study (oggi genericizzati come "un bar di Potenza", "un ristorante", "un forno")
4. **Un numero specifico e vero** da usare come prova sociale in hero (locali attivi = 8 secondo [[funnel-questionario-ghl]], ma valutare se comunicarlo o cercarne un altro tipo, es. controlli superati)
5. **Decisione sul tema visivo**: confermare se si abbandona il tema scuro Codex10 per uno più caldo/chiaro, o se si tiene lo stile attuale nonostante il feedback

## Prossimo step

Correggere la pagina in ordine di priorità (Promessa → Prova → Form → Visivo), un blocco alla volta con conferma prima di passare al successivo. Poi, separatamente, costruire un playbook riutilizzabile in `Resources/` per le prossime opt-in page, per non ripetere gli stessi errori strutturali.
