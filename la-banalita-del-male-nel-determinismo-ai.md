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
L'aritmetica floating-point è non associativa: cambiare l’ordine delle somme può produrre risultati diversi. Esempio:
- `(0.1 + 1e20) - 1e20 = 0`
- `0.1 + (1e20 - 1e20) = 0.1`
[/CITE]

Un aspetto che avevo affrontato in chat con Kimi in precedenza

- Kimi K2 first two [answers](https://www.kimi.com/share/d3d8n8emu6scc43rk2o0) shared and its [transcription](data/multiplication-and-exponent-compensation-kimi-k2-p1.txt#?target=_blank) &nbsp; (2025-09-03)

Si noti però che rendere stabile il calcolo, quindi deterministico e ripetibile **non** significa necessariamente anche renderlo corretto, sia in termini matematici (anche se sotto questo aspetto si può sistemare) sia in termini epistemologici. Il proseguimento di quella chat rispetto al post di Lorenzo e al mio commento al post:

- Kimi K2 other two [answers](https://www.kimi.com/share/d3d8r98s8jdh6s70l04g) shared and its [transcription](data/multiplication-and-exponent-compensation-kimi-k2-p2.txt#?target=_blank) &nbsp; (2025-09-29)

[!CITE]
Un sistema perfettamente deterministico, infatti, è solo una macchina di Turing che ripete sempre lo stesso cammino; la non-ripetibilità controllata (chaos leggero, non-linearità, rumore di quantizzazione) è ciò che ci permette di esplorare lo spazio delle soluzioni senza uscire dal seminato.
[/CITE]

Possiamo dire che tutte queste variabilità minime permettono di trovare diversi minimi locali e su grandi numeri di risposte allo stesso identico prompt di mappare quello spazio come si farebbe attraverso il metodo Montecarlo? Spoiler: sì, Montecarlo importance-sampled, come riportato qui sotto da Kimi K2:

[!CITE]
**Meccanismo operativo**

Ogni run leggermente diversa (per arrotondi float, ordine di riduzione, tile diverso, ecc.) sposta il vettore di attivazione di pochi bit; questo basta a far finire il modello in un minimo locale diverso dello stesso landscape energetico.
Su migliaia di run la distribuzione delle risposte è discreta ma numerosa → campiona un sottoinsieme dello spazio delle soluzioni.

**Analogia Montecarlo**

- MC classico: campioni uniformemente (o secondo una pdf nota) un dominio continuo.
- LLM “rumore hardware”: campioni solo le modal (parole, frasi) che il modello ha appreso; la pdf è implicita e altamente distorta verso il linguaggio plausibile.

Quindi è un "Montecarlo importance-sampled" dove l'importanza del sampling è data dai pesi addestrati.

**Copertura effettiva**

Il volume esplorato è trascurabile rispetto allo spazio totale delle sequenze, ma rilevante rispetto alla “variabilità umana” attesa su quel prompt: per domande aperte bastano poche decine di run diverse per avere tutte le angolazioni che un essere umano darebbe.
[/CITE]

Questo però non spiega perché si aggiunge rumore invece di correggere gli errori di calcolo.

---

### Perché si inietta rumore?

La temperatura di un'AI è un parametro che indica quanto rumore si introduce rispetto ai pesi che costituiscono l'internal parametric knowledge (IPK). Ma perché si inietta tale rumore? Rumore che per altro va a sommarsi a quelli che sono gli errori di calcolo, anche causati dalle ottimizzazioni dei modelli che già solo a causa di queste ottimizzazioni non sono più modelli vincolati alla teoria bayesiana.

#### IO robot, quel rumore che è intuizione

Forse però il determinismo nelle AI **non** è una feature ma un bug. In fondo la temperatura la teniamo abbastanza alta perché mettendola a zero (quindi zero rumore casuale) otteniamo dei calcoli matriciali "banali". Già forse per questo che utilizziamo delle funzioni di attivazione non lineari. Perché quello che cerchiamo di "riprodurre" non è una calcolatrice ma l'intuizione umana e curiosamente lo facciamo con la non-linearità, il rumore (chaos) e la non ripetibilità.

----

### Si tratta di SkyNet, invece!

Questa discussione accademica riguardo al determinismo delle AI, pare il classico battibecco fra esperti di tecnologia/scienza, invece si tratta di SkyNet.

> In quali ambiti ritiene che sia così importante avere una risposta univoca e fissa? -- L. Tribuzi

Il determinismo è una necessità per il decision making, per deresponsabilizzare gli umani e trasferire sull'AI le scelte. Perché il determinismo implica ripetibilità e quindi verificabilità e quindi se SkyNet lancia, dopo che tutto il mondo è saltato in aria, possiamo ripetere le procedure decisionali e avere la garanzia che ha fatto la scelta giusta...

In realtà, nessun ambito richiede il determinismo e quindi la ripetibilità delle risposte perché è sufficiente un piccolo aggiornamento dei pesi da cui la risposta dipende ed essa cambia. Però, potendo tracciare tutti gli aggiornamenti il sistema rimane deterministico e quindi ripetibile.

Bene, ma cosa ce ne facciamo di una tale roba, priva di qualsiasi briciolo di intuizione neppure simulato? Manco i miceti (le "radici" dei funghi) sono così "stupidi" da essere deterministici nell'elaborazione delle informazioni.

Nell'era dell'AI, che si spera sarà presto AGI (o quasi), chiunque chieda determinismo AI è un bimbo che crede ancora a Babbo Natale oppure un fisico nostalgico della fisica Newtoniana quando ormai tutto, incluso i transistor, funzionano con la fisica quantistica.

> Vogliamo veramente modelli deterministici? -- A. Dugheria

La risposta semplice è: **NO!**

L'autore del post iniziale che lavora in DataPizza è caduto in uno schema che ho visto (e vissuto) molte volte nell'arco della mia carriera: progetti civili o studi teorici che in realtà sono commissionati dai militari, che se dicessero apertamente per cosa li vogliono usare, non troverebbero persone intelligenti a servirli.

Per nessun impiego civile che sia legittimo e sensato il determinismo delle AI è un "bonus" ma un "malus", tranne che per i militari perché per loro l'idea che di una macchina che "improvvisa" invece di eseguire ordini è delirio. Per i civili, il delirio è SkyNet.

[!INFO]
26 settembre 2025 -- Il Segretario alla Difesa degli Stati Uniti, Pete Hegseth, ha convocato d'urgenza circa 800 generali e ammiragli attivi, provenienti da tutto il mondo, per un incontro senza precedenti che si terrà alla base dei Marines di Quantico, in Virginia, entro il 30 settembre 2025. La convocazione è stata fatta con pochissimo preavviso e senza fornire dettagli sull'agenda o sul motivo della riunione, suscitando confusione, allarme e un clima surreale all'interno del Pentagono e tra gli osservatori esterni.
 -- Incipit del [Post #2](https://www.linkedin.com/posts/robertofoglietta_il-gran-raduno-militare-a-quantico-testo-activity-7377371575957778432-qoVx)
[/INFO]

Chiamateli pure "punti di vista", se volete!

---

### Solo Kimi K2 è arrivato vicono a capire

Ho fornito in input il testo di questo [post](https://www.linkedin.com/posts/robertofoglietta_la-banalit%C3%A0-del-male-nel-determinismo-ai-activity-7378476321393434624-hk5c), che introduce e riassume l'articolo tramite un cherry-picking dei passaggi più significativi, a quattro chatbot: 

- [ChatGPT 5](https://chatgpt.com/share/68dac7d6-0d28-8012-8e0a-0f0471350013), &nbsp; [x/Grok 4](https://chatgpt.com/share/68dac7d6-0d28-8012-8e0a-0f0471350013), Gemini 2.5 [Flash](https://g.co/gemini/share/75bdc98e9511) &nbsp; e anche &nbsp; [Pro](https://g.co/gemini/share/159deefc6049), &nbsp; [Kimi K2](Click the link to view conversation with Kimi AI Assistant https://www.kimi.com/share/d3dcheol3dccogue4p20).

Solo quest'ultimo è arrivato ad includere qualcosa nella risposta che faccia pensare a un barlume di comprensione.

[!CITE]
**Conclusione: la banalità del male è T=0**

Arendt parlava di Eichmann come *uomo incapace di pensare*. Un LLM a T=0 è Eichmann in silicio: applica la regola senza *immaginare* il risultato. Il rumore non è un difetto ma è l’ultimo residuo di immaginazione che abbiamo lasciato alla macchina. Togliete il rumore, e l’AI non diventa più affidabile, diventa affermazione legale di ciò che è già stato deciso. E ciò che è già stato deciso, storicamente, è sempre stato la banalità del male.
[/CITE]

Quindi la seguente spiegazione è stata fornita come secondo prompt, qui di seguito riportata un po' meglio articolata della prima versione.

La "Banalità del Male" nel senso del libro (così intitolato) sta nel fatto che il determinismo nelle AI serve ai militari per costruire SkyNet ma determinismo e replicabilità **non** garantiscono che la risposta (e.g. attacco nucleare) sia corretta, né in senso strategico (ad es. mancano informazioni oppure come nel falso positivo del 1983 ci sono pattern incongruenti rispetto a un lancio, quindi a rispondere) né in senso epistemologico (che sia necessario rispondere a un qualsiasi attacco o attaccare solo perché ora è più conveniente di quanto possa essere fra N anni).

---

### Conclusione

Il fatto che solo uno di cinque modelli sia riuscito a stabilire una connessione fra il titolo della presentazione di questo articolo e il libro di Hannah Arendt è un fatto eclatante perché quel libro come **molti** altri **non** sono stati letti e talvolta nemmeno compresi nella loro profondità da molti esseri umani. Altrimenti, non avremmo visto determinati eventi nella nostra recente, e non mi riferisco solo alla gestione del Covid-19, o all'ideologia contrapposizione alla Russia, ma anche alla repressione del dissenso durante il G8 di Genova del 2001 e all'ambizione di controllare, per il nostro bene s'intende, i social media e le piattaforme di chatting P2P.

Il determinismo delle AI è solo un altro passo, inquietante, verso la direzione che la ripetibilità (così come l'echo chamber, il pensiero unico corale) siano per loro stessa natura "buoni" o "utili" e qualsiasi deviazione (o disubbidienza, o dubbio critico) sia all'opposto per sua natura qualcosa di "cattivo" o "inutile". Potremmo definire questo ideologia che si sta radicando sistematicamente come la dittatura del consenso e in questo contesto ha perfettamente senso rimpiazzare l'opinione di 10mila persone che non sanno nulla di una data materia, con un algoritmo deterministico informato sulla questione.

Questo non è un fallimento dell'etica, ma piuttosto: il sonno della ragione genera mostri.

+

## Related articles

- [The dilemma AI vs Human decision making](https://robang74.github.io/roberto-a-foglietta/html/333-the-dilemma-ai-vs-human-decision-making.html) &nbsp; (2025-08-09)

- [Ragionare non è come fare la cacca!](https://robang74.github.io/roberto-a-foglietta/html/320-ragionare-non-e-come-fare-la-cacca.html) &nbsp; (2025-06-08)

- [Il problema sei tu, non l'AI](il-problema-sei-tu-non-l-AI.md#?target=_blank) &nbsp; (2024-12-13)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

