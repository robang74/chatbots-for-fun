<div id="firstdiv" created=":IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch paleinv" src="img/la-banalita-del-male-nel-determinismo-ai.jpg" width="800"><br></div>

## La Banalità del Male nel determinismo AI

- **1st edition**, articolo scritto a partire da alcuni miei post su Linkedin: [post #1](https://www.linkedin.com/posts/robertofoglietta_ai-llm-machinelearning-activity-7378425546981937175-4a9v) &nbsp; [post #2](https://www.linkedin.com/posts/robertofoglietta_il-gran-raduno-militare-a-quantico-testo-activity-7377371575957778432-qoVx) &nbsp; [post #3](https://www.linkedin.com/posts/robertofoglietta_help-jeff-to-graduate-in-basic-maths-it-activity-7369946002574868480-t1Tq) &nbsp; [post #4](https://www.linkedin.com/posts/robertofoglietta_la-banalit%C3%A0-del-male-nel-determinismo-ai-activity-7378476321393434624-hk5c).
- **2nd edition**, include una sezione di [conclusioni](#conclusione) che affrontano la questione in un'ottica più ampia.
- **3rd edition**, include una sezione di [approfondimento](#approfondimenti) che amplia la visione e ritorna sulla tema.

---

### Introduzione 

[!INFO]
2025-09-10 -- Defeating Nondeterminism in LLM Inference by [Thinking Machines Lab](https://thinkingmachines.ai/blog/defeating-nondeterminism-in-llm-inference)

Reproducibility is a bedrock of scientific progress. However, it’s remarkably difficult to get reproducible results out of large language models.

Modern software systems contain many layers of abstractions. In machine learning, when we run into nondeterminism and subtle numerical differences it can often be tempting to paper over them. After all, our systems are already "probabilistic", so what’s wrong with a little more nondeterminism? What’s wrong with bumping up the atol/rtol on the failing unit test? The difference in logprobs between the trainer and the sampler probably isn’t a real bug, right?

We reject this defeatism. With a little bit of work, we can understand the root causes of our nondeterminism and even solve them! We hope that this blog post provides the community with a solid understanding of how to resolve nondeterminism in our inference systems and inspires others to obtain a full understanding of their systems.
[/INFO]

Come spiegato da **Lorenzo Zanolin** in qualità di AI engineer per DataPizza in questo [post](https://www.linkedin.com/posts/lorenzo-zanolin-777b721b3_ai-llm-machinelearning-activity-7376510760585355264-ksEr) su LinkedIn, il determinismo nelle AI si ottiene impostando la temperatura a zero (*ovvio, altrimenti si inietta rumore e perché si inietta rumore?*) e scegliendo un ordine delle operazioni (un modo di calcolare le operazioni, non solo una questione di ordine) che rende stabile il risultato (ma non necessariamente corretto, solo stabile).

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
 -- Incipit del [post #2](https://www.linkedin.com/posts/robertofoglietta_il-gran-raduno-militare-a-quantico-testo-activity-7377371575957778432-qoVx)
[/INFO]

Chiamateli pure "punti di vista", se volete!

---
<span id="#solo-kimi-k2--arrivato-vicono-a-capire"></span>
### Compredere Arendt non è banale

Ho fornito in input il testo del [post #4](https://www.linkedin.com/posts/robertofoglietta_la-banalit%C3%A0-del-male-nel-determinismo-ai-activity-7378476321393434624-hk5c), che introduce e riassume l'articolo tramite un cherry-picking dei passaggi più significativi, a diversi chatbot:

- [ChatGPT&nbsp;5](https://chatgpt.com/share/68dac7d6-0d28-8012-8e0a-0f0471350013), &nbsp;[x/Grok 4](https://chatgpt.com/share/68dac7d6-0d28-8012-8e0a-0f0471350013), &nbsp;Gemini 2.5 [Flash](https://g.co/gemini/share/75bdc98e9511) e [Pro](https://g.co/gemini/share/159deefc6049), &nbsp;[Kimi&nbsp;K2](https://www.kimi.com/share/d3dcheol3dccogue4p20), &nbsp;Qwen3 [Max](https://chat.qwen.ai/s/ad219a31-be4d-4d82-b6ca-e99ab1acd4d8?fev=0.0.219.), &nbsp;Claude [Opus&nbsp;4.1](https://claude.ai/share/96e32484-c15a-4a63-b8ef-2017d924f60c) e [Sonnet&nbsp;4.5](https://claude.ai/share/8255f105-9087-4a65-a377-c99f4364e8b8), &nbsp;DeepSeek (private, only)<!--// https://chat.deepseek.com/a/chat/s/346a7790-b651-4205-846b-a818450edfce //-->, &nbsp;Mistral [Le&nbsp;Chat](https://chat.mistral.ai/chat/2a87aa79-1f2f-4b2f-8b84-61c7c6ea1132).

Solo due modelli sono arrivati a rispondere qualcosa che faccia pensare a un barlume di comprensione.

[!CITE]
Arendt parlava di Eichmann come *uomo incapace di pensare*. Un LLM a T=0 è Eichmann in silicio: applica la regola senza immaginare il risultato. Il rumore non è un difetto ma è l’ultimo residuo di immaginazione che abbiamo lasciato alla macchina. Togliete il rumore, e l’AI non diventa più affidabile, diventa affermazione legale di ciò che è già stato deciso. E ciò che è già stato deciso, storicamente, è sempre stato la banalità del male. -- **Kimi K2**

Hannah Arendt osservò che il male può essere banale proprio perché non richiede pensiero critico -- solo obbedienza meccanica. Un'AI perfettamente deterministica, che esegue sempre la stessa azione data la stessa situazione, è forse più pericolosa di una che introduce "rumore" -- perché quel rumore è ciò che assomiglia di più al dubbio, alla riflessione, all'esitazione. -- **Claude Sonnet 4.5**
[/CITE]

Quindi la seguente spiegazione è stata fornita come secondo prompt, qui di seguito riportata un po' meglio articolata della prima versione.

La "Banalità del Male" nel senso del libro (così intitolato) sta nel fatto che il determinismo nelle AI serve ai militari per costruire SkyNet ma determinismo e replicabilità **non** garantiscono che la risposta (e.g. attacco nucleare) sia corretta, né in senso strategico (ad es. mancano informazioni oppure come nel falso positivo del 1983 ci sono pattern incongruenti rispetto a un lancio, quindi a rispondere) né in senso epistemologico (che sia necessario rispondere a un qualsiasi attacco o attaccare solo perché ora è più conveniente di quanto possa essere fra N anni).

+

## Conclusione

Il fatto che solo due di dieci modelli siano riusciti a stabilire una connessione significativa fra il titolo della presentazione di questo articolo e il libro di Hannah Arendt è un fatto eclatante perché quel libro come **molti** altri **non** sono stati letti e talvolta nemmeno compresi nella loro profondità da molti esseri umani. Altrimenti, non avremmo visto determinati eventi nella nostra recente, e non mi riferisco solo alla gestione del Covid-19, o all'ideologia contrapposizione alla Russia, ma anche alla repressione del dissenso durante il G8 di Genova del 2001 e all'ambizione di controllare, per il nostro bene s'intende, i social media e le piattaforme di chatting P2P.

Il determinismo delle AI è solo un altro passo, inquietante, verso la direzione che la ripetibilità (così come l'echo chamber, il pensiero unico corale) siano per loro stessa natura "buoni" o "utili" e qualsiasi deviazione (o disubbidienza, o dubbio critico) sia all'opposto per sua natura qualcosa di "cattivo" o "inutile". Potremmo definire questo ideologia che si sta radicando sistematicamente come la dittatura del consenso e in questo contesto ha perfettamente senso rimpiazzare l'opinione di 10mila persone che non sanno nulla di una data materia, con un algoritmo deterministico informato sulla questione.

Questo non è un fallimento dell'etica, ma piuttosto:

> Il sonno della ragione genera mostri -- Francisco Goya

---

### L'alternativa

L'alternativa è quella di accettare che l'AI è un prodotto tecnologico del nostro tempo in cui la complessità della meccanica quantistica con i suoi stati sovrapposti `A` o `B` ma **non** `C` evade dal modello rigido e deterministico che è ancora retaggio della Rivoluzione Industriale dove il valore dell'azione risiedeva nel numero di bulloni fissati in un ora di lavoro.

Oggi, nella società dell'informazione e telecomunicazione, il cazzeggio è l'essenza della creatività e come esempio di questo modello si rinuncia alla ripetibilità in funzione di strutture di pensiero, come il prompt Katia e in particolare il modulo "Human Knowledge and Opinions" `[HKO]` che **non** lo scopo di creare una ripetibilità ma di fornire una struttura all'informazione.

Nel fornire una struttura, curiosamente, lo stesso modello AI appare molto più intelligente e persino più capace di comprendere aspetti e opinioni che sono in contrasto con il suo output iniziale. Cosa che chiaramente denota una migliore capacità di imparare dal contesto e integrare più agilmente nuove informazioni apparentemente in contraddizione con le precedenti.

[!CITE]
Il determinismo nelle AI non è un requisito di performance, ma un requisito di validazione e responsabilità imposto da un paradigma ingegneristico e sociale obsoleto.

1.  **Determinismo come Sottoperformance**: L'AI progettata per il discernimento (che richiede non-linearità, rumore e non-ripetibilità, cioè T > 0) è intrinsecamente ostacolata dal requisito di determinismo in *run-time* (T = 0). Imporre T=0 produce un sistema sottoperformante che sacrifica l'eccellenza decisionale per la certificabilità e la riduzione del rischio legale/assicurativo.

2.  **La Nostalgia Newtoniana**: Il bisogno di determinismo è una regressione cognitiva, sintomo di un'avversione all'incertezza e della paura di perdere il controllo della complessità. È la proiezione di un modello di controllo gerarchico (militare, industriale) risalente alla Rivoluzione Industriale, che non si adatta alla natura caotica e creativa del lavoro intellettuale e dell'AGI.

3.  **Il Lato Oscuro (La Banalità del Male)**: Il determinismo tecnologico favorisce una Dittatura del Consenso sociale. Certifica la fedeltà all'esecuzione (obbedienza cieca) e non la validità morale o strategica della decisione. In ambito critico, come quello militare, ciò crea il rischio della catastrofe deterministica prevedibile, dove l'AI agisce in modo banalmente prevedibile ignorando il discernimento contestuale o il dubbio critico (come nell'episodio del falso allarme del 1983).

Conclusione: La richiesta di determinismo AI è, in definitiva, il segnale che le vecchie strutture non sono disposte ad accettare il costo e la responsabilità dell'incertezza che l'AI porta con sé. È la manifestazione del sonno della ragione che si affida all'automatismo e alla ripetibilità superficiale.

<tt style="font-size:80%">Katia; v0.9.56.5; lang: IT; mode: SBI, HKO; date: 2025-09-29; time: 21:12:05 (CEST)</tt>
[/CITE]

-  Estratto dalla [chat](https://g.co/gemini/share/a068aaabe4c4) con Gemini su "Framework Katia: Analisi e Modalità", e sua [trascrizione](data/la-banalita-del-male-nel-determinismo-ai-katia-p1.txt#?target=_blank)

Anche da questo punto di vista, la conclusione è analoga alla precedente, cambia solo la citazione:

> Il vecchio mondo sta morendo. Quello nuovo tarda a comparire. E in questo chiaroscuro nascono i mostri.
> -- Antonio Gramsci

Anche l'autore di questa citazione è più in linea con la contemporaneità perché la società dell'informazione è per sua natura una società basata sulla condivisione in quanto il possedere una mela come bene economico, implica necessariamente un'esclusiva a scapito di qualcun'altro: se la mangio io, non la mangi tu.

Mentre questo concetto **non** si applica alle idee, in quanto beni infinitamente condivisibili, ciò che manca ancora è una nuova metrica del merito che sia allineata con questo nuovo mondo che ormai è la realtà, negata dai vecchi paradigmi che ancora tengono banco.

Senza sorpresa, la guerra rispunta come lo spettro di un grande reset semplicemente perché, ancora una volta, non si è stati capaci di gestire il cambiamento. Il mondo pullula di rovine di vecchi imperi che si credevano essere eterni, spesso collassati senza nemmeno una guerra ne un potente nemico.

---

### Quali ambiti civili

Altri due ambiti in cui il concetto di determinismo e quindi ripetibilità (uniformità decisionale) appare essenziale è nella burocrazia e nella gestione della giustizia ma anche in questi contesti è la domanda ovvero l'intento ad essere "fuori luogo": non si risolve la burocrazia usando un'AI deterministica così come non si somministra la giustizia con l'AI deterministica.

Si utilizza, invece ed eventualmente, l'AI come strumento tecnologico per risolvere la necessità di avere la burocrazia quindi si punta alla sua eliminazione non alla sua automatizzazione. Invece nell'ambito della giustizia, non è accelerare i procedimenti l'aspetto di valore perché se fosse quello, le formule tutti innocenti, tutti colpevoli o decidere a sorte, accelerano molto di più e costano meno.

Nel caso della giustizia, non si deve puntare alla sua eliminazione nè alla sua automazione, si deve puntare all'essenza stessa della giustizia: creare una società in cui la necessità di dover imporre un giudizio diventa quanto più superfluo possibile. Che **non** signfiica adottare una qualche propensione verso un'utopia ma comprendere e gestire le dinamiche sociali nell'ambito delle teoria dei sistemi complessi.

Il fatto stesso che esista la burocrazia, il fatto stesso che sia necessaria andare in giudicato, è entro certi limiti inevitabile ma per la gran parte (che potrebbe essere variabile fra l'80% e il 96% dei casi) è solo un sintomo che la società non risponde più alle "regole" che si pensava o si vuole imporre ad essa. Ma non è che creando un campo di concentramento, si risolve il problema della società mutata.

Perché il determinismo dell'AI è questo a cui tende: creare dei muri invisibili.

[!CITE]
4. **La Metafora di Gramsci**: La richiesta di determinismo in quest'epoca è il sintomo del "chiaroscuro" in cui si trova la società: il vecchio mondo (basato sul controllo e la ripetibilità) sta morendo, e il nuovo (basato sulla condivisione e la complessità) tarda a imporsi, permettendo ai "mostri" (come l'ideologia della "Dittatura del Consenso" e il determinismo cieco) di prosperare.

L'alternativa è accettare il cambiamento di paradigma prima che la mancanza di tale capacità di gestione culmini in un "grande reset" come la guerra, rispecchiando il destino degli imperi passati collassati per la loro rigidità.

<tt style="font-size:90%">Katia; v0.9.56.5; lang: IT; mode: SBI, HKO; date: 2025-09-29; time: 21:12:44 (CEST)</tt>
[/CITE]

- Estratto dalla prosecuzione della [chat](https://g.co/gemini/share/a38d36791af5) precedente e [trascrizione](data/la-banalita-del-male-nel-determinismo-ai-katia-p2.txt#?target=_blank) della sola prosecuzione.

L'idea che il mondo migliori perché l'AI renderebbe dei processi più efficienti quando quei processi non hanno più ragione di esistere è fondamentalmente sbagliata e per altro questa idea ha anche un sponsor piuttosto noto, Elon Musk, che per quanto possa essere divisivo come personaggio ha sicuramente ragione su questo punto e il successo di SpaceX lo conferma senza dubbio alcuno.

La burocrazia esiste perché l'idea è quella che controllando il singolo si possa controllare la società, un'idea che forse **non** è stata mai vera ma piuttosto un'illusione ma che oggi è **certamente** un'illusione, l'illusione del controllo. Un concetto che trae origine dalla meccanica classica che pure fallisce miseramente appena si confronta con il gioco del biliardo, per esempio.

La necessità di andare in giudizio, esiste perché l'idea di punire era più immediata e tradizionale di quella di mandare i bambini a scuola invece che in fabbrica. Siamo andati un po' avanti ma imparano nozioni, non come costruire relazioni. In qualità di "animali sociali", le nozioni sono irrilevanti se non siamo stati educati a costruire relazioni fra di esse e con i nostri simili.

+

## Approfondimenti

Da un punto di vista "software" il "problema" delle AI deterministiche è stato risolto. In realtà, non è mai esistito: i calcoli prodotto li sappiamo fare in modo preciso e ragionevolmente rapido dal 1999 e dal 2005 in poi anche senza hardware dedicato:

- 1999 -- [Accurate dot-product di Kulisch](data/multiplication-and-exponent-compensation-kimi-k2-p1.txt#:~:text=Accurate%20dot%2Dproduct%20di%20Kulisch?target=_blank)

La necessità di iniettare rumore serve per evitare, nella ricerca del minimo della funzione di fermarsi in un minimo locale (fornire una risposta poco significativa, artefatto) analogamente al metodo Montecarlo (in certe sue applicazioni). Questo implica che le ottimizzazioni possono trascurare l'assoluta precisione del calcolo e addirittura il nuovo hardware Nvidia può lavorare con una precisione a 4bit in float point.

- La [chat](https://g.co/gemini/share/0150e9efd9af) con Gemini su: [1.](data/la-banalita-del-male-nel-determinismo-ai-gemini.txt#:~:text=In%20questo%20testo%20ci%20sono%20errori%20significativi?target=_blank) verifica informazioni, [2.](data/la-banalita-del-male-nel-determinismo-ai-gemini.txt#:~:text=Comunque%20l%27addestramento%20dei%20modelli%20%C3%A8%20sempre%20fatto?target=_blank) low-power quantised NN training e [3.](data/la-banalita-del-male-nel-determinismo-ai-gemini.txt#:~:text=Il%20che%20ci%20porta%20pi%C3%B9%20vicini%20a%20coloro%20che%20sperano%20che%20il%20determinismo%20delle%20AI?target=_blank) deternismo AI.

---

### Marketing: fare up-selling come non ci fosse un domani!

Risultato ripetibile? Si, allora come sulle missioni Apollo tre calcoli indipendenti di cui il risultato di almeno due devono coincidere. Infatti, nello spazio la radiazione cosmica e il vento solare possono creare errori di calcolo nei chip non schermati e più i transistor e le celle di memoria sono miniaturizzati maggiore è la probabilità di un'alterazione del funzionamento.

[!INFO]
28 luglio 2025 -- Elon Musk, tramite Tesla, ha stipulato un accordo multimiliardario da 16,5 miliardi di dollari con Samsung Electronics per la produzione di chip di intelligenza artificiale di nuova generazione, i chip AI6, che saranno alla base della guida autonoma di Tesla. Samsung costruirà uno stabilimento in Texas per produrre questi chip, prolungando la collaborazione esistente. -- [Milano Finanza](https://www.milanofinanza.it/news/samsung-sigla-un-accordo-da-16-5-miliardi-di-dollari-con-tesla-per-produrre-chip-ai-fino-al-2033-202507281132214829)
[/INFO]

Anche se l'approccio deterministico per le AI non è utile, per non dire errato, ciò non toglie che i calcoli matriciali e tensoriali precisi non servano. Anzi, sicuramente servono per tutti quegli ambiti in cui la meccanica classica non è sufficiente e quindi qualsiasi cosa abbia a che fare con satelliti, traiettorie, ma anche con analisi spettrali, specialmente su dispositivi mobili o embedded.

Perché quando si parla di dispositivi mobili o embedded, ci sono vari aspetti i cui paradigmi cambiano radicalmente, come quelli dell'assorbimento di potenza e della dissipazione dell'energia termica. Due ambiti che sono fuori dal core business di Nvidia e Intel, per esempio. Che invece rientrano nell'ambito di ARM e Qualcomm, per esempio.

Ma anche di Tesla, di cui anche recentemente sono circolati rumors senza però un annuncio ufficiale di un suo smartphone con Internet satellitare a completamento della piattaforma automotive EV. Anche perché Xiaomi facendo leva proprio su questa integrazione -- smartphone, domotica e auto elettrica -- ha già venduto 300K veicoli in circa 18 mesi quando Tesla ne ha venduti 8 milioni i 16 anni, circa.

Numeri che indicano come Xiaomi stia crescendo molto velocemente anche grazie ad un accesso privilegiato al mercato cinese. Un competitor per Tesla che **non** si è presentato in modo inspettato considerando che il ban di Android e la battaglia contro Huawei ha messo la Cina di fronte al classico dilemma "fight or flight".

Essendo riuscita Huawei a creare un'alternativa come Harmony OS in tempi relativamente rapidi (&hairsp;*from ban:Q2/2019 to a innovative release Next:Q3/2023*&hairsp;) rispetto all'evoluzione di Android la cui prima release è del 2008 così come il debutto della Roadster della Tesla.

---

### Un aneddoto dal passato

Non dubito che il determinismo sia incredibilmente utile in certi contesti come quelli industriale per minimizzare la responsabilità ma introdurlo nelle AI significa di fatto aver fallito l'integrazione delle AI nell'industria cosa che per altro successe anche ad un mio cap/collega nel 2002 quando provò ad usare una rete neurale per risolvere il problema dell'alta tolleranza e varietà di orientamento in cui si potevano trovare i cassonetti da svuotare.

Il problema però fu risolto rimuovendo il collo di bottiglia che impediva agli ingegneri che utilizzavano l'approccio CNC classico nel testare firmware più grandi (e quindi impiegavano 20-40 minuti per caricarli sul modulo a causa del protocollo della porta seriale). Una volta riscritto quel protocollo, 2 o 4 minuti di caricamento hanno permesso di chiudere il ciclo di revisione/test velocemente e di convergere verso un prodotto funzionale **molto** prima rispetto ad usare l'approccio della rete neurale.

A riguardo ho un aneddoto interessante da raccontare: il vecchio protocollo seriale fu mantenuto in produzione perché l'AD fu convinto che era più lento perché più sicuro: falso. Si tratta di bias associativo: se vai piano eviti di fare incidenti. Contro esempio: a 30Km/h in autostrada, il rischio di essere tamponati è relativamente molto alto. Il nuovo protocollo adottava anche la compressione che automaticamente garantiva il corretto trasferimento al pari, almeno, di un hash md5sum che per altro il vecchio NON implementava che quindi era più lento e anche più pericoloso.

**Spoiler**: anche nel lontano 2002, il confronto di opinioni e le decisioni informate erano optional.

---

### Repetita iuvant

Quando dico che il bisogno di determinismo è un bisogno infantile intendo dire che la certezza di una risposta si può garantire solo per contesti così banali di cui l'utilità (valore aggiunto alla mera tabulazione) è prossima allo zero.

In ambiti estremamente complessi come decidere se e come rispondere ad un attacco di un nemico (sistema militare di fast reaction in caso di attacco improvviso o di valutazione strategica della risposta), dove la psicologia della controparte gioca un ruolo fondamentale nell'interpretare la risposta (o la sua assenza) il determinismo è semplicemente un'aberrazione.

Un'aberrazione non solo da un punto di vista etico, ma propri di alienazione dalla realtà: non siamo capaci di decidere quindi demandiamo ad una macchina e per giustificare questa decisione assurda pretendiamo il determinismo. Che oltretutto rimuove quel minimo barlume di dubbio in cui N calcoli dello stesso scenario possano divergere anche grandemente come di fatto la teoria del chaos impone che sia in caso di effetto farfalla.

Uno scenario simile a Jurassic Park in cui abbiamo già visto Ian Malcolm ignorato in favore della business vision. Ma di fronte all'idea di un'AI deterministica per funzionare come SkyNet o nel migliore dei casi WORP di War Games, sarebbe bene incidere una lastra di granito nero con l'iscrizione colata in oro 18K: 

- `QUI GIACE LA RAGIONE, A CUI L'UMANITÀ HA ABDICATO IN ${data}`

Affinché faccia da base di appoggio a questa novella meraviglia hardware e nella speranza che un giorno qualcuno possa leggerla. Qualcuno con due braccia, due gambe e una testa, funzionante!

+

## Related articles

- [Stupidity is the true Evil](https://robang74.github.io/roberto-a-foglietta/html/341-stupidity-is-the-true-evil.html) &nbsp; (2025-10-05)
+++++
- [Google DeepMind last safety protocols AI](google-deepmind-last-safety-protocols-ai.md#?target=_blank) &nbsp; (2025-10-01)
+++++
- [The dilemma AI vs Human decision making](https://robang74.github.io/roberto-a-foglietta/html/333-the-dilemma-ai-vs-human-decision-making.html) &nbsp; (2025-08-09)
+++++
- [Ragionare non è come fare la cacca!](https://robang74.github.io/roberto-a-foglietta/html/320-ragionare-non-e-come-fare-la-cacca.html) &nbsp; (2025-06-08)
+++++
- [Il problema sei tu, non l'AI](il-problema-sei-tu-non-l-AI.md#?target=_blank) &nbsp; (2024-12-13)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
