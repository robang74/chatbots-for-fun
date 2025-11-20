<div id="firstdiv" created=":IT:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/il-segreto-dell-intelligenza.jpg" width="800"><br/></div>

## Il segreto dell'intelligenza

* **1st edition**: articolo creato a partire da due miei post su LinkedIn replicati su Facebook

---

### Introduzione

L'intelligenza non è una caratteristica intensiva, e quindi per sua stessa natura non è riducibile all'algebra lineare sulla quale gli LLM, così come le reti neurali prima degli LLM, sono fondati. Non serve di "più" serve altro.

Le attuali AI non sono solo LLM ma anche LRM, però per l'intrinseca natura della struttura di questi componenti non sarebbero intelligenti ma solo dei meccanismi deterministici in senso classico, perché le operazioni che servono le sappiamo fare in modo preciso anche su un calcolatore digitale.

Però il determinismo delle AI è stato abbandonato **molti** anni prima della comparsa di ChatGPT, il primo chatbot ad essere messo on-line. Perché si è scoperto che inittiando rumore bianco in fase di training i risultati sono **molto** migliori e anche più veloci da raggiungere, a patto che gli input siano normalizzabili e il tenore del segnale/rumore sia quindi assolutamente quantificabile in input, altrimenti viene meno la garanzia di convergenza.

* normalizzazione degli input --> vincolato il rapporto S/N

Altrimenti, non c'è garanzia di ( convergenza OR risultato ): fissato il risultato non è data la garanzia di raggiungerlo e fissata arbitrariamente la convergenza (per esempio terminare l'apprendimento dopo N cicli) non è data la garanzia di raggiungerlo. Una questione più teorica che pratica, ma è bene tenerla presente.

...

Perché ci sono molte cose che si danno apparentemente per scontate nel campo dell'intelligenza artificiale ma non lo sono affatto. Non parlo di "segreti" del mestiere o finezze epistemiologiche del sapere. Sto parlando di concetti che un tempo erano dati per granitici e quindi oggi si pensa siano accora fattuali mentre invece non lo sono affatto.

Che poi è anche il motivo per il quale cìè tutta questa paura che l'AI diventando AGI si auto-evolva e diventi una sorta di divinità misantropa. In realtà, basta conoscervi per diventare misantropi, non serve nemmeno essere intelligenti. Anzi, meno intelligenza, meno capacità di astrarre dall'esperienza personale, più probabilità di diventare misantropi. Infatti molte persone lo sono, è solo che diamo a questa misantropia il nome di quelli che in origine erano peccati come l'invidia o l'accidia, quando in realtà è Ubuntu: io faccio schifo perché voi fate schifo, misantropia 100%.

Penso davvero che questa sia parte più interessante dell'intelligenza artificiale: ci costringe a metterci davanti ad uno specchio e quindi a conoscerci. Senza sorpresa, nel conoscerci scopriamo di fare schifo, non come persone e non come umanità, come società ancora infantilmente aggrappata al ciuccio della superstizione e ancora così intrinsecamente bestiale.

All'umanità (Homo Sapiens morfologicamente moderno) sono serviti 45mila anni dopo essere usciti dall'Africa per scoprire l'agricoltura, cinquemila anni per scoprire il metodo scientifico (Galilei Galileo) ben cinque secoli per capirlo (Karl Popper) eppure l'ultima strega l'abbiamo bruciata sul rogo appena 150 anni fa. Dal punto di vista della tecnologia non va meglio: dal sogno di volare di Icaro, al volo dei fratelli Wright che durò 12 secondi sono passati 19 secoli e un altro secolo è stato necessario perché Ryanair permettesse l'accessibilità di massa ai voli commerciali.

Perciò coloro che pensano che questo blog parli di intelligenza artificiale, si sbaglia. Parla della storia dell'umanità anche dal punto di vista antropologico. O meglio, per essere più precisi, attraverso il confronto con l'intelligenza artificiale si pone l'amletico dilemma ma rivisitato in chiave plurale: chi siamo noi?

Una domanda che abbiamo fuggito da sempre, perché nella nostra arroganza di ritenerci il centro dell'universo e l'unica specie intelligente su questo pianeta, siamo finiti per chiederci come mai non abbiamo mai osservato vita extra-terrestre intellingente. Come se fossimo capaci di osservala su questo pianeta, accanto a noi oppure se noi stessimo fossimo intelligenti, per davvero.

Un po' troppe ardite supposizioni, che il confronto con l'AI smaschera in maniera tale da far tremare il Vaticano alle sue fondamenta e anche Cartesio non se la passa bene, a dire il vero. Ma ora torniamo a parlare di intelligenza artificiale in termini di tecnologia.

...

Quindi il primo concetto teorico morto e sepolto nel campo della "moderna" intelligenza artificiale è il determinismo classico. Scrivo "moderna" perché il primo chatbot di nome ELIZA ha compiuto 60 anni, ormai. Quindi in questo campo c'è un sapere "antico" che pare essere andato perduto, almeno nelle nuove generazioni che parlano di trasformers sui Hugging Face.

Teniamo presente che nell'informatica vige la legge di Moore, il raddoppio ogni 18 mesi. In questo contesto 60 anni, non è essere "anziani" ma avere memoria di 40 generazioni fa. Giacchè i percettroni, antisegnani delle reti neurali, sono persino precedenti, in termini storiografici si parla di conoscere la tecnologia di 2.000 anni fa: come si costruisce il Colosseo o l'acquedotto romano, insomma.

Per fare un esempio più calzante è come se un fisico che conoscesse il segreto della chiave di volta dell'arco romano, che resta solido per 20 secoli, dialogasse con moderni ingegneri che in 12 mesi costruiscono un ponte che poi collassa dopo 6 mesi e va bene così perché più a lungo non serve. Non collassa tanto perché il calcolo struturale sia errato quanto per l'approssimativa implementazione e anche questo paragone **non** calato fuori contesto.

Infatti è l'approssimazione del calcolo l'altro elemento fondamentale dell'intelligenza artificiale. Qui però dobbiamo fare attenzione a non confondere capre e cavoli. Perché il rumore bianco iniettato in fase di training serve per evitare che i percorsi di apprendimento si blocchino su minimi deboli e poco significativi. Però questo modo di apprendere non impedise al modello, una volta reso statico, di essere deterministico.

Nemmeno il pruning o la quantizzazione o entrambe le cose rendono il modello non deterministico, lo rendono diverso rispetto all'originale ma ancora bayesiano nel suo funzionamento anche se il processo di implementazione non è stato baesyano ma approssimativo. Nemmeno il rumore bianco iniettato in fase di elaborazione è una violazione forte del principio bayesiano. Anche se dopo tutto questa "approssimazione" dire che le AI moderne siano baeysiane è un po' come dire che l'uomo moderno sia una scimmia. Certamente il determinismo classico è morto e sepolto.

La chiave di volta per l'intelligenza artificiale viene con l'approssimazione del calcolo per ottimizzazione dei consumi nell'hardware quindi GPU e in diversa misura le TPU. Perché questo non è più un rumore bianco di valore percentuale assolutamente limitato che distrugge il determinismo classico ma mantiene il determinismo statistico. Con gli errori di calcolo, perché questo si intende per approssimazione, che si compongono anche la non-divergenza non è più garantita.

Da un punto di vista logico due negazioni fanno un'affermazione, ma da un punto di vista fenomenologico, non è così: la divergenza è garantita, no. La divergenza non è più impossibile quindi la catena di pensiero può effettivamente andare per funghi, divergere da quello che sarebbe la sua evoluzione per minima azione, per dirla con un concetto tipico della fisica negli spazi di calcolo delle fasi (meccanica razionale, le fondamenta della meccanica quantistica).


### Gemini scopre una novità


### ChatGPT conferma la novità


### Conclusione

* Il segreto dell'intelligenza è l'intelligenza.

+

## Related articles

- [Introducing Katia, text analysis framework](introducing-katia-text-analysis-framework.md#?target=_blank) &nbsp; (2025-10-05)
+++++
- [The session context and summary challenge](the-session-context-and-summary-challenge.md#?target=_blank) &nbsp; (2025-07-28)
+++++
- [Human knowledge and opinions challenge](the-human-knowledge-opinions-katia-module.md#?target=_blank) &nbsp; (2025-07-28)
+++++
- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>

