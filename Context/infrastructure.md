---
type: context
tags: [stack, tools, infrastructure]
updated: 2026-09-04
status: active
---

# Stack e Infrastruttura

## Stato Attuale

**Risposta breve:** Nessuno stack formale ancora. Tutto deve essere costruito insieme.

## Strumenti per Comunicazione

- **WhatsApp:** Unico canale operativo (commerciale contatta prospect, team comunica internamente)
- **Niente:** Email coordinamento formale, Slack, Teams, ecc.

## Gestione Progetti e CRM

- **CRM:** Il [[gestionale-commerciale|gestionale commerciale]] di [[HACCP Digitale]] è live su [haccpcommerciale.it](https://haccpcommerciale.it) (Next.js + Supabase, ruoli master/commerciale via RLS), usato da [[Antonio Malatesta]], [[Vito Romano]] e [[Antonio Smaldini]]. Sostituisce il tracker Excel manuale. Nota operativa: Supabase resta su piano Free, il progetto si mette in pausa dopo 7 giorni di inattività (da riattivare a mano dal dashboard).
- **GHL:** Account [[GHL]] (GoHighLevel, white-label "MX Accelerator", sub-account "MX Consulting LLC" su core.mxaccelerator.com), piattaforma separata per il funnel di acquisizione lead (form di qualificazione + pipeline + notifiche), vedi [[funnel-questionario-ghl]]. **Amministratore dell'account: [[Vito Romano]]**, non Antonio. Non collegato come connettore MCP in sessione: configurazione manuale nell'account.
  - **Automazione commento→DM Instagram, opzione scartata (verificata 2026-09-14):** GHL supporta il trigger "Instagram Comment(s) On A Post" → azione "Instagram DM", ma HighLevel documenta un limite: richiede che il contatto abbia già scritto in DM alla pagina nelle 24 ore precedenti, altrimenti il messaggio non si consegna (vincolo messaging window di Meta), e non è confermato che il commento apra da solo questa finestra. Decisione di [[Antonio Malatesta]] il 2026-09-14: si usa [[ManyChat]] per questo flusso, non GHL. Fonte: [Guide to Facebook & Instagram Comment Automation & AI](https://help.gohighlevel.com/support/solutions/articles/155000002055-guide-to-facebook-instagram-comment-automation-ai).
- **ManyChat:** Non ancora attivo, da configurare. Scelto il 2026-09-14 come strumento per l'automazione commento→DM del [[piano-editoriale-instagram-3-funnel|funnel freddo Instagram]] (consegna della [[lead-magnet-checklist-punti-critici|checklist punti critici]]), al posto di GHL. È Meta Business Partner ufficiale, si collega via API ufficiale Instagram, il commento stesso conta come interazione valida per aprire la finestra DM (nessun vincolo delle 24h precedenti come in GHL). Limite dell'API di Meta, comune a tutti gli strumenti: non può scrivere per primo a chi non ha mai interagito. Fonte: [Manychat, Ultimate Guide Instagram Comment Automation](https://manychat.com/blog/the-ultimate-guide-for-instagram-comment-automation/), [Manychat, Auto-DM links from comments](https://help.manychat.com/hc/en-us/articles/16654065283100-Quick-Automation-Auto-DM-links-from-comments). Resta da: creare account, collegare la pagina Instagram, configurare il workflow con parola chiave "CHECKLIST".
- **CRM precedente:** Lista clienti manuale (spreadsheet Excel), ora sostituita dal gestionale sopra.
- **Progetti:** Non strutturato. Todo list mentale o note sparse
- **Task management:** Niente

## Gestione Contenuti e Marketing

- **Script AI:** Repository locale (Desktop/HACCP DIGITALE/MARKETING AI/)
- **Video:** Prodotti localmente, archiviati su Desktop
- **Post social:** Non pianificati, non schedulati
- **Social media:** Non gestito ancora (opportunità: Instagram, TikTok, LinkedIn)

## Stack Tecnico del Prodotto

Non so l'architettura interna di HACCP Digitale (web app). Da chiedere a Antonio.

## Gestione Finanziaria

- Fatturazione: Manuale (Excel, Stripe se online)
- Contabilità: Gestita da commercialista esterno (presumibilmente)
- Dashboard profitti: Non centralizzato

---

## Fonti di Verità Attuali

| Flusso | Fonte di Verità | Problema |
|-------|---|---|
| **Clienti attivi** | [[gestionale-commerciale|Gestionale commerciale]] (haccpcommerciale.it) | Nessuno noto; attenzione a pausa automatica Supabase Free dopo 7gg inattività |
| **Script/contenuti** | Cartelle Desktop locale | Niente backup centralizzato |
| **Comunicazione team** | WhatsApp | Niente storico, facile perdere context |
| **Metriche commerciali** | Excel o note WhatsApp | Non centralizzato, difficile reporting |
| **Roadmap prodotto** | Testa di Antonio | Niente documento |

---

## Flussi di Lavoro Faticosi e Ripetitivi

### Flusso 1: Acquisizione Nuovo Prospect
**Quando succede:** Commerciale identifica ristorante target
**Facciamo:** WhatsApp manuale con messaggio problem-based
**Ci vuole:** 30 minuti per contattare 10 prospect, attendere risposte (ore)
**Il risultato:** Qualche risposta, qualche no-response, qualche blocco
**Quello che vorremmo:** Messaggi pre-scritti, sequenza automatica, feedback loop chiaro

**Breakdown:**
- Creare lista prospect qualificata (orari, nome, telefono)
- Inviare Touch 1 (il problema)
- Attendere risposta
- Se sì → Inviare Touch 2 (video)
- Se sì → Fissare appuntamento
- Se no-response → Retry in 3 giorni
- Registrare stato

### Flusso 2: Preparazione Demo
**Quando succede:** Appuntamento fissato
**Facciamo:** Preparo manualmente uno script telefonico, organizzo il video da inviare
**Ci vuole:** 1-2 ore di preparazione per appuntamento
**Il risultato:** Demo con qualche scivolone, mancanza di personalizzazione
**Quello che vorremmo:** Template di demo personalizzati in base al tipo di ristorante, slide pronte, video curato

### Flusso 3: Gestione dei 4 Clienti Attuali
**Quando succede:** Quotidiano / su richiesta
**Facciamo:** Support manuale via email/WhatsApp per problemi, onboarding manuale
**Ci vuole:** Ore sparse, context switching
**Il risultato:** Clienti supportati ma inefficientemente
**Quello che vorremmo:** Knowledge base self-serve, onboarding automatizzato, ticketing system

---

## Stakeholder Esterni

**Nessuno registrato formalmente.** Potenziali:
- **Consulenti HACCP:** Partner futuri (vendita crociata)?
- **Associazioni categoria ristoratori:** Canale di reach?
- **Fornitori tech:** Hosting, email, SMS (ancora da selezionare)
- **Banca/investor:** Non implicato al momento

---

## Cosa Costruire Insieme (Priorità)

1. ~~**CRM minimale**: Tracciare prospect → demo → chiusura~~ Fatto: [[gestionale-commerciale|gestionale commerciale]] live
2. **Marketing automation**: Sequenza WhatsApp per Touch 1-2-3
3. **Dashboard metriche**: Visualizzazione real-time flusso acquisizione
4. **Knowledge base**: FAQ clienti, onboarding self-serve
5. **Calendario booking**: Appuntamenti centralizzati e reminders

<span style="background-color:#D2ECD0; color:#020309; padding:2px 8px; border-radius:3px; font-size:0.85em;">🤖 Nexvision Vault Operator, ultima modifica: 2026-09-04T07:02:42Z</span>
