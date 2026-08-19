---
type: process
date: 2026-08-19
source_path: Library/pdfs/procedure-haccp-digitale.md
status: active
tags: [process, haccp, food-safety, gmp, sicurezza-alimentare]
---

> [!info] Source
> Manuale Aziendale di Autocontrollo dell'Igiene (M.A.A.I.), "Procedure AUTOCONTROLLO" del software [[HACCP Digitale]] di [[NeXvision]]. File raw: `Library/pdfs/procedure-haccp-digitale.md` (63 pagine, 89.355 caratteri).

## Scopo

Insieme di 13 procedure GMP (Good Manufacturing Practice) che un'attività alimentare deve seguire per l'autocontrollo igienico secondo il metodo HACCP, con registrazione digitale tramite il software HACCP Digitale invece che su schede cartacee.

## Punti critici di controllo (CCP)

Questi sono i limiti numerici su cui si gioca la conformità, quelli da verificare per primi in un audit o in caso di ispezione.

| Fase | Parametro critico | Limite | Azione se fuori limite |
|---|---|---|---|
| Ricevimento merce deperibile | Temperatura di consegna | Vedi tabella limiti per categoria (es. carni rosse +4°C, max +7°C alla consegna; surgelati -18°C, max -15°C) | Tolleranza fino a 3°C oltre il limite solo per parametri non a rischio elevato (igiene mezzo, esterno contenitori); oltre, rifiuto del prodotto |
| Cottura | Temperatura al cuore | Minimo 65°C per 5 min, target operativo 70°C per 2 min | Prolungare cottura, non somministrare se non raggiunta |
| Abbattimento rapido | Temperatura al cuore post cottura | ≤ +10°C entro 1 ora dalla fine cottura | Se non raggiunto, il prodotto non è più idoneo alla conservazione prolungata |
| Conservazione a freddo | Temperatura di esercizio | +1°C ≤ T ≤ +7°C, controllo 2 volte al giorno | Fuori range: verifica cause, eventuale eliminazione prodotto |
| Conservazione a caldo | Temperatura di esercizio | ≥ +65°C; se T < +60°C per più di 2 ore, il prodotto va eliminato | Eliminazione immediata oltre soglia tempo/temperatura |
| Stoccaggio frigo/freezer | Temperatura impianto | Registrata 2 volte al giorno (inizio e fine attività) su HACCP Digitale | Abuso termico oltre 10°C: eliminazione prodotti che superano il limite, altrimenti lavorazione/vendita immediata |
| Igiene mani | Riduzione carica microbica | Doppio lavaggio con spazzolino unghie, riduce da 10^6-10^7 a circa 100/1 unità | Lavaggio obbligatorio prima di entrare in lavorazione, dopo servizi igienici, dopo ogni sospensione lavoro |
| Infestanti (pest control) | Gravità del Rischio (GR = Gravità Danno × Probabilità) | 1-6 modesta (controllo visivo), 6-12 media (esche + controllo mensile), 12-16 elevata (ditta specializzata obbligatoria) | Scalare l'intervento in base alla fascia di rischio |
| Non conformità fornitore | Numero di non conformità annue | 0 = accettabile, 1-2 = accettabile con riserva, >3 = non accettabile (esclusione automatica) | Sospensione fornitura oltre soglia |

## Le 13 procedure GMP

1. **GMP 01, Gestione attività di lavorazione**: controlli in arrivo su prodotto (integrità confezioni, etichettatura, temperatura, assenza infestazioni) e condizioni di trasporto. Foto obbligatoria dei prodotti ricevuti nel software.
2. **GMP 02, Pulizia e disinfezione locali**: piano di pulizia, tecniche per pavimenti (scopatura, lavaggio, asciugatura), pareti, vetri, frigoriferi.
3. **GMP 03, Pulizia e disinfezione attrezzature**: sequenza obbligata asportazione materiale grossolano, lavaggio, detersione, disinfezione. Acqua fredda per residui carnei (l'acqua calda coagula le proteine e le fissa sulle superfici).
4. **GMP 04, Rintracciabilità dei prodotti alimentari**: obblighi ex Reg. CE 178/2002 art. 18 e Reg. CE 852/2004, un passo indietro (fornitore) e un passo avanti (cliente impresa) nella filiera. Registro fornitori e archiviazione documenti di consegna nel software.
5. **GMP 05, Controllo degli allergeni**: elenco dei 14 allergeni ex Reg. UE 1169/2011 Allegato II (glutine, crostacei, uova, pesce, arachidi, soia, latte, frutta a guscio, sedano, senape, sesamo, solfiti, lupini, molluschi).
6. **GMP 06, Derattizzazione e deblattizzazione**: matrice di rischio GR = GD × P per dimensionare l'intervento pest control (vedi tabella punti critici sopra).
7. **GMP 07, Formazione del personale**: attestato alimentarista obbligatorio, programma su 8 aree tematiche (pericoli, malattie da alimenti, contaminazione, HACCP, GMP, sanificazione, manutenzione, pest control).
8. **GMP 08, Igiene e salute del personale**: abbigliamento, gestione ferite/infezioni, procedura di lavaggio mani in 8 step con riduzione quantificata della carica microbica a ogni fase.
9. **GMP 09, Controllo delle temperature**: verifica metrologica periodica degli strumenti di misura, non solo delle temperature stesse.
10. **GMP 10, Ritiro e richiamo del prodotto**: segregazione immediata dei lotti non conformi in area o frigo dedicato e contrassegnato.
11. **GMP 11, Manutenzione locali e attrezzature**: manutenzione programmata, non solo reattiva a guasto.
12. **GMP 12, Gestione non conformità**: registro NC/AC con esito C (conforme) o N (non conforme).
13. **GMP 13, Valutazione dei fornitori**: classificazione annuale in accettabile, accettabile con riserva, non accettabile in base al numero di non conformità riscontrate.

## Ruolo del software HACCP Digitale

Il manuale è in gran parte una guida operativa alla piattaforma stessa: quasi ogni GMP ha una sezione "Come operare con il software" con screenshot passo-passo. La sostituzione del cartaceo con il digitale riguarda in particolare:
- Foto etichette e documenti di trasporto al ricevimento merce
- Registrazione temperature frigoriferi (2 volte al giorno)
- Registrazione pulizia e sanificazione locali/attrezzature
- Archivio etichette (ricette realizzate, prodotti abbattuti, prodotti acquistati) consultabile fino a 3 anni
- Caricamento attestati di formazione e risultati analisi/tamponi

## Edge case

- Cotture "al sangue" per tradizione (es. alcune carni) possono non raggiungere i 65°C: la sicurezza si sposta sulla freschezza e conservazione della materia prima, non sulla temperatura di cottura.
- Se non è possibile separare fisicamente aree o piani di lavoro per diverse categorie di alimenti, si deve garantire separazione temporale con sanificazione tra una lavorazione e l'altra (principio della marcia in avanti).
- Materiale non alimentare (vaschette, pellicola, ecc.) va verificato per il simbolo "forchetta e bicchiere" o la dicitura "per alimenti"; in assenza, richiedere certificazione al fornitore.

## Sources

- [[procedure-haccp-digitale]] (2026-08-19), manuale completo delle 13 procedure GMP e dei relativi punti critici di controllo
