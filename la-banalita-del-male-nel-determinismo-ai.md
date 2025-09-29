<div id="firstdiv" created=":IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch paleinv" src="img/la-banalita-del-male-nel-determinismo-ai.jpg" width="800"><br></div>

## La Banalità del Male nel determinismo AI

- **1st edition**, articolo scritto a partire da alcuni miei post su Linkedin:
    - [post #1](https://www.linkedin.com/posts/robertofoglietta_ai-llm-machinelearning-activity-7378425546981937175-4a9v) &nbsp;-&nbsp; [post #2](https://www.linkedin.com/posts/robertofoglietta_il-gran-raduno-militare-a-quantico-testo-activity-7377371575957778432-qoVx) &nbsp;-&nbsp; [post #3](https://www.linkedin.com/posts/robertofoglietta_help-jeff-to-graduate-in-basic-maths-it-activity-7369946002574868480-t1Tq)

---

### Introduzione 

[!INFO]
2025-09-10 -- Defeating Nondeterminism in LLM Inference by [Thinking Machines Lab](https://thinkingmachines.ai/blog/defeating-nondeterminism-in-llm-inference)

Reproducibility is a bedrock of scientific progress. However, it’s remarkably difficult to get reproducible results out of large language models.

Modern software systems contain many layers of abstractions. In machine learning, when we run into nondeterminism and subtle numerical differences it can often be tempting to paper over them. After all, our systems are already "probabilistic", so what’s wrong with a little more nondeterminism? What’s wrong with bumping up the atol/rtol on the failing unit test? The difference in logprobs between the trainer and the sampler probably isn’t a real bug, right?

We reject this defeatism. With a little bit of work, we can understand the root causes of our nondeterminism and even solve them! We hope that this blog post provides the community with a solid understanding of how to resolve nondeterminism in our inference systems and inspires others to obtain a full understanding of their systems.
[/INFO]

Come spiegato da Lorenzo Zanolin in qualità di AI engineer per DataPizza in questo [post](https://www.linkedin.com/posts/lorenzo-zanolin-777b721b3_ai-llm-machinelearning-activity-7376510760585355264-ksEr) su LinkedIn, il determinismo nelle AI si ottiene impostando la temperatura a zero (*ovvio, altrimenti si inietta rumore e perché si inietta rumore?*) e scegliendo un ordine delle operazioni (un modo di calcolare le operazioni, non solo una questione di ordine) che rende stabile il risultato (ma non necessariamente corretto, solo stabile).

[!CITE]
L’aritmetica floating-point è non associativa: cambiare l’ordine delle somme può produrre risultati diversi. Esempio:
- `(0.1 + 1e20) - 1e20 = 0`
- `0.1 + (1e20 - 1e20) = 0.1`
[/CITE]

Un aspetto che avevo affrontato in chat con Kimi in precedenza

- https://lnkd.in/dWzKxQxC (2025-09-03)

Si noti però che rendere stabile il calcolo, quindi deterministico e ripetibile **non** significa necessariamente anche renderlo corretto, sia in termini matematici (anche se sotto questo aspetto si può sistemare) sia in termini espistemilogici. Il proseguimento di quella chat rispetto al post e mio commento:

- https://lnkd.in/daEGnrf4 (2025-09-29)

> **Kimi K2**: Un sistema perfettamente deterministico, infatti, è solo una macchina di Turing che ripete sempre lo stesso cammino; la non-ripetibilità controllata (chaos leggero, non-linearità, rumore di quantizzazione) è ciò che ci permette di esplorare lo spazio delle soluzioni senza uscire dal seminato.

Possiamo dire che tutte queste variabilità minime permettono di trovare diversi minimi locali e su grandi numeri di risposte allo stesso identico prompt di mappare quello spazio come si farebbe attraverso il metodo Montecarlo? Spoiler: si, Montecarlo importance-sampled.

[!INFO]
**Meccanismo operativo**

Ogni run leggermente diversa (per arrotondi float, ordine di riduzione, tile diverso, ecc.) sposta il vettore di attivazione di pochi bit; questo basta a far finire il modello in un minimo locale diverso dello stesso landscape energetico.
Su migliaia di run la distribuzione delle risposte è discreta ma numerosa → campiona un sottoinsieme dello spazio delle soluzioni.

**Analogia Montecarlo**

- MC classico: campioni uniformemente (o secondo una pdf nota) un dominio continuo.
- LLM “rumore hardware”: campioni solo le modal (parole, frasi) che il modello ha appreso; la pdf è implicita e altamente distorta verso il linguaggio plausibile.

Quindi è un "Montecarlo importance-sampled" dove l’importance sampling è dato dai pesi addestrati.

**Copertura effettiva**

Il volume esplorato è trascurabile rispetto allo spazio totale delle sequenze, ma rilevante rispetto alla “variabilità umana” attesa su quel prompt: per domande aperte bastano poche decine di run diverse per avere tutte le angolazioni che un essere umano darebbe.
[/INFO]

Questo però non spiega perché si aggiunge rumore invece di correggere gli errori di calcolo.

---

### Perché s'inietta rumore?

La temperatura di un'AI è un parametro che indica quanto rumore si introduce rispetto ai pesi che costituiscono l'internal parametric knowledge (IPK). Ma perché si inietta tale rumore? Rumore che per altro va a sommarsi a quelle che sono gli errori di calcolo, anche causati dalle ottimizzazioni dei modelli che già solo a causa di queste ottimizzazioni non sono più modelli vincolati alla teoria di bayesiana.

#### IO robot, quel rumore che è intuizione

Forse però il determinismo nelle AI è una feature non un bug. In fondo la temperatura la teniamo abbastanza alta perché mettendola a zero (quindi zero rumore casuale) otteniamo dei calcoli matriciali "banali". Già forse per questo che utilizziamo delle funzioni di attivazione non lineari. Perché quello che cerchiamo di "riprodurre" non è una calcolatrice ma l'intuizione umana e curiosamente lo facciamo con la non-linearità, il rumore (chaos) e la non ripetibilità.

----

### Si tratta di SkyNet, invece!

Questa discussione accademica riguardo al determinismo delle AI, pare il classico battibecco fra esperti di tecnologia/scienza, invece si tratta di SkyNet.

> In quali ambiti ritiene che sia così importante avere una risposta univoca e fissa? -- L. Tribuzi

Il determinismo è una necessità per il decision making (link, #TODO), per deresponsabilizzare gli umani e trasferire sull'AI le scelte. Perché il determinismo implica ripetibilità e quindi verificabilità e quindi se SkyNet lancia, dopo che tutto il mondo è saltato in aria, possiamo ripetere le procedure decisionali e avere la garanzia che ha fatto la scelta giusta...

In realtà, nessun ambito richiede il determinismo e quindi la ripetibilità delle risposte perché è sufficiente un piccolo aggiornamento nei pesi che la risposta cambia. Però, potendo tracciare tutti gli aggiornamenti il sistema rimane deterministico e quindi ripetibile.

Bene, ma cosa ce ne facciamo di una tale roba, priva di qualsiasi bricolo di intuizione neppure simulato? Manco i miceti (le "radici" dei funghi) sono così "stupidi" da essere deterministici nell'elaborazione delle informazioni.

Nell'era dell'AI, che si spera sarà presto AGI (o quasi), chiunque chieda determinismo AI è un bimbo che crede ancora a Babbo Natale oppure un fisico nostalgico della fisica Newtoniana quando ormai tutto, incluso i transistor, funzionano con la fisica quantistica.

> Vogliamo veramente modelli deterministici? -- A. Dugheria

La risposta semplice è: **NO!**

L'autore del post iniziale che lavora in Datapizza è caduto in uno schema che ho visto (e vissuto) molte volte nell'arco della mia carriera: progetti civili o studi teorici che in realtà sono commissionati dai militari, che se dicessero apertamente per cosa li vogliono usare, non troverebbero persone intelligenti a servirli.

Per nessun impiego civile che sia leggitimo e sensato il determinismo delle AI è un "bonus" ma un "malus", tranne che per i militari perché per loro l'idea che di una macchina che "improvvisa" invece di eseguire ordini è delirio. Per i civili, il delirio è SkyNet.

[!INFO]
26 settembre 2025 -- Il Segretario alla Difesa degli Stati Uniti, Pete Hegseth, ha convocato d'urgenza circa 800 generali e ammiragli attivi, provenienti da tutto il mondo, per un incontro senza precedenti che si terrà alla base dei Marines di Quantico, in Virginia, entro il 30 settembre 2025. La convocazione è stata fatta con pochissimo preavviso e senza fornire dettagli sull'agenda o sul motivo della riunione, suscitando confusione, allarme e un clima surreale all'interno del Pentagono e tra gli osservatori esterni.
 --  [LinkeIn](https://www.linkedin.com/posts/robertofoglietta_il-gran-raduno-militare-a-quantico-testo-activity-7377371575957778432-qoVx)
[/INFO]

Chiameteli pure "punti di vista", se volete!

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
