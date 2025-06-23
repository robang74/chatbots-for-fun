<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch darkinv" src="img/l-ai-e-un-game-changer-perche-onesta.jpg" width="800"><br></div>

## L'AI è un game-changer perché è onesta

- Articolo scritto a partire da un [post](https://www.linkedin.com/posts/robertofoglietta_quattro-prescrizioni-di-tac-e-risonanze-activity-7342726841666867200-tHqK) pubblicato su LinkedIn lo stesso giorno.

- La [notizia](https://www.ansa.it//canale_saluteebenessere/notizie/ospedali_italiani/2025/06/12/inappropriato-il-40-di-richieste-di-esami-in-sanita-lia-aiuta_2dc989ad-b80d-40a1-a0f6-a4a8a7fabc5b.html) a cui si fa riferimento, recentmente diventata virale, risale al 12 giugno 2025.

---

### Introduzione

La domanda in generale può essere difficile da spiegare ma questo caso lo mostra in modo eclatante il perché l'AI è un game-changer e lo è in modo particolare quando è usata in modo corretto. La risposta è contenuta tutta quanti in questa apparentemente banale frase:

> In una seconda fase, un gruppo di esperti (radiologi e medici clinici) ha validato i risultati dell’algoritmo tramite revisione manuale a campione.

Per comprendere meglio occorre porsi nel caso in cui l'AI non sia inclusa nello scenario (oppure usata da incompetenti) e quindi avremmo certamente i seguenti fattori sistemici:

1. una mole immensa di lavoro che sarebbe anti-economico svolgere
2. anche se fosse svolta sarebbe data da eseguire alla stessa categoria

Quindi radiologi e clinici, avrebbero giudicato inappropriati solo gli outlier, pochi e palesemente inappropriati, mentre avrebbero usato i watermark di categoria per confermare il lavoro dei colleghi: cane non mangia cane.

L'AI è molto veloce, ignora i watermark, però deve essere verificata a campione (#1). Coloro che lo fanno (#2) sanno che l'AI è neutrale e anche loro debbono esserlo. Ergo l'AI passa il test anche in doppio cieco, oppure è stata usata o istruita male.

---

### Alcuni dati dello studio

- 17.000 prescrizioni
- 38,9% appropriate
- 43% inappropriata

Tolleranza massima stimata 3%, se il 40% nel titolo è un dato emergente dallo studio come il minore spreco che è ragionevolmente e cautelativamente possibile ridurre, piuttosto che una un'approssimazione arbitraria di chi ha scritto il titolo.

D'altro canto, poteva essere 60%, visto che meno del 40% risultano "appropriate". Oppure nel titolo doveva essere scritto "utile" (fra apici, indicando una categoria così come emergente dallo studio) ma allora manca la parola "solo" in quella frase.

Ecco, questo invece è ciò che le AI non sanno fare, o lo fanno molto peggio degli umani: fare speculazioni e intuire quale sia la cosa più probabile, conoscendo gli esseri umani ad un livello così profondo che è inaccessibile alle intelligenze artificiali.

+

## La statistica, che bella!

Alcuni tecnici esperti di informatica e statistica hanno fatto uno studio che con una frase e 4 numeri ci dice tanto, anzi moltissimo sulle potenzialità dell'AI e sulle prescrizioni.

Il valore 38.9% è preciso alla prima cifra decimale, senza ulteriori informazioni significherebbe che la precisione riguarda l'ultimo decimale anche perché in questo contesto si tratta di una frazione pura quindi un numero affetto solo dall'errore di arrotondamento ma la tolleranza sulla catalogazione può essere molto diversa: tipo 38.9% ± 0.4%.

Chi ha scritto il titolo, probabilmente ha commesso un errore a trascrivere la citazione che in origine era «il 40% degli esami è inutile» ma il giornalista o il titolista ha deciso che "inutile" era un concetto relativo. Non comprendendo che questo distinguo era già stato risolto nello studio: 

- cautelativamente evitando di considerare "inutili" quel 18% di casi dubbi 
- controverifica a campiono tramite professionisti, sui risultati dell'AI 

Con queste due azioni, gli autori dello studio avevano già riportato l'etichetta "inutile" come categoria dell'AI ad un ragionevole, cautelativo e oggettivo "inutile" come un aggettivo di senso pratico e di concreta validità.

Prendendo per ipotesi «il 40% degli esami è inutile» come citazione da parte degli autori dello studio, implica che essi abbiano stabilito un 3% di tolleranza massima nel sistema di catalogazione dell'AI e quindi abbiano cautelativamente sottratto quel 3% al 43% trovato.

Infatti, secondo una regola generale (1/√N), la tolleranza attesa su un campione di 17.000 elementi è del 2.3%, un valore calcolato usando il tipico moltiplicatore 3x, da cui ho ricavato la tolleranza sulla percentuale del gruppo "inutili" in ±0.4%. 

Inoltre è ragionevole pensare che gli autori dello studio abbiano determinato in un 3% la tolleranza in catalogazione per la quale solo il 42% degli esami clinici richiesti sarebbe stato strettamente necessario, salvo il caso di giovani medici che debbano imparare e quindi siano più propensi a chiedere analisi, mentre il 40% è oggettivamente inutile.

Possa Mr. Spock prendere a schiaffi chi ha scritto il titolo!

---

### Stima della tolleranza

Il fattore `2x` sulla regola `1/√N` è generalmente usato in elettronica quando i componenti hanno tolleranze che non superano il 5% dei valori nominali -- e comunque vengono misurati ma quella tolleranza include anche la deriva termica -- mentre il `3x` viene usato nei laboratori di fisica. Infine il `4x` è ragionevole usarlo in medicina e nell'industria con alto grado di qualità in uscita: 6-sigmas theory, in realtà e 4.5 deviazioni standard.

+

## Conclusione

L'AI in questo studio dimostra l'ipocrisia dell'umana natura per la quale il singolo medico tende a prescrivere almeno un 40% in più di esami diagnostici anche complessi per evitare responsabilità personali ma in questo modo creando un disservizio pari al 40% in più di tempi di attesa o del 40% in più di costi.

In uno scenario di risorse abbondanti l'effetto può anche essere trascurabile qualora le richieste totali siano inferiori al massimo erogabile dal SSN. Mentre in uno scenario di risorse scarse questi due fattori si moltiplicano fra loro (1.40 x 1.140 = 1.96) e l'efficienza complessiva del sistema si dimezza.

#### Responsabilità civile

Senza contare che per il principio di pareto, è ragionevole pensare che l'80% di tutte le diagnosi inutili facciano capo ad un 20% di medici. Se questo fosse riconosciuto come un fatto emergente allora l'introduzione dell'AI anche come agente di analisi delle decisioni a posteriori potrebbe portare ad un profondo dilemma sia etico che giuridico:

- se relativamente pochi medici -- ad esempio il 20%, ma per eccesso potrebbero essere il 5%, anche se improbabile a meno di fenomeni di corruzione-concussione particolarmente accentrati -- dalle prescrizioni cliniche facili, fossero responsabili di dimezzare l'efficienza della sanità, allora quale sarebbe la loro responsabilità personale?

L'AI come agente onesto pone l'uomo di fronte a se stesso alla realtà, come Giordano Bruno e Galileo Galilei in una società in cui gli outsider (2% della popolazione, Land, 1992) sono generalmente considerati un problema.

#### Quei fastidiosi outsider

Anche se apparentemente non vengono trattati come un tempo si era solito fare con le streghe e gli eretici ma solo perché l'odore acre e il fumo di un pubblico rogo non è conforme alle normative sul particolato fine nei centri urbani!

Appare evidente che non ci occorre l'AGI perché si creino le premesse per una rivoluzione, analoga a quella fra il sistema copernicano e quello galileiano che rimosse l'essere umano dal centro della Creazione, sicché dell'AI si dirà peste e corna.

Eppur si muove! {:-D}

...

- Approfondisci leggendo la [conversazione](https://g.co/gemini/share/933f37046ea1) con Gemini o la relativa [tracrizione](not-yet.txt#?target=_blank).

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
