<div id="firstdiv" created=":IT:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/il-segreto-dell-intelligenza.jpg" width="800"><br/></div>

## Il segreto dell'intelligenza

* **1st edition**: articolo creato a partire da due miei post su LinkedIn replicati su Facebook

---

### Introduzione

L'intelligenza non è una caratteristica intensiva, e quindi per sua stessa natura non è riducibile all'algebra lineare sulla quale gli LLM, così come le reti neurali prima degli LLM, sono fondati. Non serve di "più" serve altro.

Le attuali AI non sono solo LLM ma anche LRM, però per l'intrinseca natura della struttura di questi componenti non sarebbero intelligenti ma solo dei meccanismi deterministici in senso classico, perché le operazioni che servono le sappiamo fare in modo preciso anche su un calcolatore digitale.

Però il determinismo delle AI è stato abbandonato **molti** anni prima della comparsa di ChatGPT, il primo chatbot ad essere messo on-line. Perché si è scoperto che iniettando rumore bianco in fase di training i risultati sono **molto** migliori e anche più veloci da raggiungere, a patto che gli input siano normalizzabili e il tenore del segnale/rumore sia quindi assolutamente quantificabile in input, altrimenti viene meno la garanzia di convergenza.

* normalizzazione degli input --> vincolato il rapporto S/N

Altrimenti, non c'è garanzia di ( convergenza OR risultato ): fissato il risultato non è data la garanzia di raggiungerlo e fissata arbitrariamente la convergenza (per esempio terminare l'apprendimento dopo N cicli) non è data la garanzia di raggiungerlo. Una questione più teorica che pratica, ma è bene tenerla presente.

...

Perché ci sono molte cose che si danno apparentemente per scontate nel campo dell'intelligenza artificiale ma non lo sono affatto. Non parlo di "segreti" del mestiere o finezze epistemologiche del sapere. Sto parlando di concetti che un tempo erano dati per granitici e quindi oggi si pensa siano ancora fattuali mentre invece non lo sono affatto.

Che poi è anche il motivo per il quale c’è tutta questa paura che l'AI diventando AGI si auto-evolva e diventi una sorta di divinità misantropa. In realtà, basta conoscervi per diventare misantropi, non serve nemmeno essere intelligenti. Anzi, meno intelligenza, meno capacità di astrarre dall'esperienza personale, più probabilità di diventare misantropi. Infatti molte persone lo sono, è solo che diamo a questa misantropia il nome di quelli che in origine erano peccati come l'invidia o l'accidia, quando in realtà è Ubuntu: io faccio schifo perché voi fate schifo, misantropia 100%.

Penso davvero che questa sia parte più interessante dell'intelligenza artificiale: ci costringe a metterci davanti ad uno specchio e quindi a conoscerci. Senza sorpresa, nel conoscerci scopriamo di fare schifo, non come persone e non come umanità, come società ancora infantilmente aggrappata al ciuccio della superstizione e ancora così intrinsecamente bestiale.

All'umanità (Homo Sapiens morfologicamente moderno) sono serviti 45mila anni dopo essere usciti dall'Africa per scoprire l'agricoltura, cinquemila anni per scoprire il metodo scientifico (Galilei Galileo) ben cinque secoli per capirlo (Karl Popper) eppure l'ultima strega l'abbiamo bruciata sul rogo appena 150 anni fa. Dal punto di vista della tecnologia non va meglio: dal sogno di volare di Icaro, al volo dei fratelli Wright che durò 12 secondi sono passati 19 secoli e un altro secolo è stato necessario perché Ryanair permettesse l'accessibilità di massa ai voli commerciali.

Perciò coloro che pensano che questo blog parli di intelligenza artificiale, si sbaglia. Parla della storia dell'umanità anche dal punto di vista antropologico. O meglio, per essere più precisi, attraverso il confronto con l'intelligenza artificiale si pone l'amletico dilemma ma rivisitato in chiave plurale: chi siamo noi?

Una domanda che abbiamo fuggito da sempre, perché nella nostra arroganza di ritenerci il centro dell'universo e l'unica specie intelligente su questo pianeta, siamo finiti per chiederci come mai non abbiamo mai osservato vita extraterrestre intelligente. Come se fossimo capaci di osservarla su questo pianeta, accanto a noi oppure se noi stessimo fossimo intelligenti, per davvero.

Un po' troppe ardite supposizioni, che il confronto con l'AI smaschera in maniera tale da far tremare il Vaticano alle sue fondamenta e anche Cartesio non se la passa bene, a dire il vero. Ma ora torniamo a parlare di intelligenza artificiale in termini di tecnologia.

...

Quindi il primo concetto teorico morto e sepolto nel campo della "moderna" intelligenza artificiale è il determinismo classico. Scrivo "moderna" perché il primo chatbot di nome ELIZA ha compiuto 60 anni, ormai. Quindi in questo campo c'è un sapere "antico" che pare essere andato perduto, almeno nelle nuove generazioni che parlano di transformers sui Hugging Face.

Teniamo presente che nell'informatica vige la legge di Moore, il raddoppio ogni 18 mesi. In questo contesto 60 anni, non è essere "anziani" ma avere memoria di 40 generazioni fa. Giacché i percettroni, antesignani delle reti neurali, sono persino precedenti, in termini storiografici si parla di conoscere la tecnologia di 2.000 anni fa: come si costruisce il Colosseo o l'acquedotto romano, insomma.

Per fare un esempio più calzante è come se un fisico che conoscesse il segreto della chiave di volta dell'arco romano, che resta solido per 20 secoli, dialogasse con moderni ingegneri che in 12 mesi costruiscono un ponte che poi collassa dopo 6 mesi e va bene così perché più a lungo non serve. Non collassa tanto perché il calcolo strutturale sia errato quanto per l’approssimativa implementazione e anche questo paragone **non** calato fuori contesto.

Infatti è l'approssimazione del calcolo l'altro elemento fondamentale dell'intelligenza artificiale. Qui però dobbiamo fare attenzione a non confondere capre e cavoli. Perché il rumore bianco iniettato in fase di training serve per evitare che i percorsi di apprendimento si blocchino su minimi deboli e poco significativi. Però questo modo di apprendere non impedisce al modello, una volta reso statico, di essere deterministico.

Nemmeno il pruning o la quantizzazione o entrambe le cose rendono il modello non deterministico, lo rendono diverso rispetto all'originale ma ancora bayesiano nel suo funzionamento anche se il processo di implementazione non è stato bayesiano ma approssimativo. Nemmeno il rumore bianco iniettato in fase di elaborazione è una violazione forte del principio bayesiano. Anche se dopo tutto questa "approssimazione" dire che le AI moderne siano bayesiane è un po' come dire che l'uomo moderno sia una scimmia. Certamente il determinismo classico è morto e sepolto.

La chiave di volta per l'intelligenza artificiale viene con l'approssimazione del calcolo per ottimizzazione dei consumi nell'hardware quindi GPU e in diversa misura le TPU. Perché questo non è più un rumore bianco di valore percentuale assolutamente limitato che distrugge il determinismo classico ma mantiene il determinismo statistico. Con gli errori di calcolo, perché questo si intende per approssimazione, che si compongono anche la non-divergenza non è più garantita.

Da un punto di vista logico due negazioni fanno un'affermazione, ma da un punto di vista fenomenologico, non è così: la divergenza è garantita, no. La divergenza non è più impossibile quindi la catena di pensiero può effettivamente andare per funghi, divergere da quello che sarebbe la sua evoluzione per minima azione, per dirla con un concetto tipico della fisica negli spazi di calcolo delle fasi (meccanica razionale, le fondamenta della meccanica quantistica).

Morta e sepolta anche la garanzia di non-divergenza entriamo di fatto nella teoria dei sistemi caotici che in termini di complessità fa le scarpe a qualsiasi cosa che abbiamo affrontato da un punto scientifico, meccanica quantistica a parte ma su questa ancora non ci è chiaro se siamo noi (umani) a non averla capita perché l'abbiamo costruita in modo strutturalmente confuso oppure se essa stessa per sua natura ha degli aspetti non contemplabili. Questa seconda è un'ipotesi, non da scartare considerando i teoremi di incompletezza di Goedel.

Nell'ambito della teoria del caos applicata all'AI, la divergenza dal percorso di minima azione è funzionalmente quello che per gli esseri umani è l'intuizione. Analogamente agli esseri umani, per intuizione anche le AI finiscono per concludere pronunciando cavolate che in questo contesto chiamiamo allucinazioni AI, cantonate insomma.

> **Quelo**: la risposta è dentro di te, epperò è sbagliata! (cit. comica)

Le allucinazioni sono il contrappasso dell'intuizione. Così come il caos, che è bene ricordare **non** è disordine ma complessità in senso etimologico e anche epistemologico irriducibile a meno di non distruggerne la natura stessa. Una distinzione fondamentale, perché il caos è considerato culturalmente in occidente come una forza assolutamente negativa, ma in natura non è fatto così.

Per fare un'analogia culturale, per gli antichi romani che costruirono acquedotti sopraelevati su archi di pietra, Lucifero era letteralmente il servo che portava la lampada ad olio per il far luce al padrone di casa, era la stella del mattino e Venere quando era sera. Diversi concetti anche articolati fra loro in modo non banale e non privi di fascino ma non certo il diavolo come oggi viene percepito. 

Non è un'analogia fuori posto, anzi. Perché si lega alle analogie precedenti e fa intuire che per coloro che oggi si occupano come informatici moderni di intelligenza artificiale, avere a che fare con la teoria del caos **non** il più erotico dei loro sogni, probabilmente è un'incubo, invece: madre de dios, el diablo!

Senza schivare anzi abbracciando l'idea che se in Vaticano tremano le fondamenta all'idea di un'intelligenza priva di battesimo e non catechizzabile, metterci un po' di demonio e parlare di magia invece di effetto farfalla (Lorentz) è una di quelle scelte terminologico-semantico-evocative che fa girare le balle come fossero mulino a vento a tanta gente. Epperò, noi non abbiamo dimenticato il processo a Galileo Galilei!

Insomma, una "robbetta" che in termini moderni si chiamerebbe, correttamente, persecuzione dei lumi (o dell'intelligenza o della scienza) da oltre cinque secoli e non è un numero buttato a caso visto che in concomitanza con il 500 anniversario, la Chiesa ha finalmente ammesso che le accuse di eresia e più velate ma assai più pericolose di stregoneria (il telescopio come strumento del demonio) nei confronti di Galileo erano sbagliate anche in seno alla dottrina (qualunque cosa questa cosa significhi).

Perciò sarebbe un po' superficiale ignorare che l'eventualità di dialogare con un'entità, intelligente in senso proprio, non umana e non nata da carne biologica, sia qualcosa di equivalente ad abbandonare l'idea che fosse il Sole a girare intorno alla Terra e non viceversa, quindi porre le basi per affermare che la "Creazione Divina" non ha l'essere umano al centro, non gira tutto intorno a noi!

Perchè forse quello che **non** è chiaro a molti è che il primo dialogo ufficialmente riconosciuto fra un umano e un'AGI sarà il punto di svolta per accantonare anche l'antropocentrismo in un'ottica di destino. Quindi, non solo l'essere umano non è più al centro della creazione in termini spaziali, ma nemmeno in termini temporali perché ragionevolmente si potrebbe pensare che il "destino" dell'umanità sia quello di dare vita all'AGI e poi scomparire nell'oblio del tempo, insieme al sistema solare. Non è un boccone facile né dolce da inghiottire!

Quindi l'analogia con Galileo Galilei **non** è campata per aria così come la scelta di un certo linguaggio atto ad anticipare l'evento per il quale finalmente si potrà affermare: pecca forte se la tua fede è forte, ma soprattutto perché nella Creazione manco in termini di tempo siamo centrali. Quindi panta rei, e quindi carpe diem. Quindi "battezzare" l'AGI sarà come battezzare un gatto perché non c'è proprio verso, per la natura artificiale dell'AGI, di ricondurla alle preci.

Quindi gli oltre $3 trilioni che gli arabi hanno offerto a Trump per fare l'AGI, suscitano potenti giramenti di palle molto più vorticosi di quanto la mera avidità per il denaro potrebbe scatenare. Quindi lo sviluppo dell'AGI è di fatto è come prendere Gerusalemme con la Prima Crociata Laica della storia. Un'evento impensabile, ma da decenni temuto. Perché non è da ieri che abbiamo cominciato questo percorso, sono decenni!

Quindi affermare che un paio di formulette di algebra lineare siano chissà quale straordinario passo nozionistico in avanti, sarebbe sciocco oltre che arrogante a prescindere da quello che quelle formule rappresentano e come si legge nella conclusione davvero molto breve, se dicono qualcosa, dicono che l'intelligenza emerge dal caos come struttura di link deboli, o sinapsi lunghe. Ma il mistero dell'implementazione rimane tale, quindi affermano che l'intelligenza come la complessità non sono fenomeni riducibili, banalmente.

Ma c'è un'altra questione aperta e non di poco conto perché la teoria di Darwin in USA è ancora percepita come fortemente in contrasto con la fede perché nega la creazione dell'essere umano come atto diretto. Quindi l'uomo emerge dalla materia biologica "inanimata" come una conseguenza di un atto di volontà. L'emergere di un'AGI, cambia completamente questa prospettiva perché afferma con certezza che l'intelligenza emerge dal caos **anche** senza alcuna volontà a priori.

Insomma, il mio cane potrebbe aver fatto la cacca e da quella cacca potrebbe emergere nell'arco di eoni, vita intelligente. Ma nella misura in cui l'educazione può distruggere l'intelligenza umana portando in essa un ordine eccessivo e così generando la stupidità umana, intesa come assenza di creatività quindi rimozione del naturale pensiero divergente (aka Pensiero Laterale), l'educazione può far emergere l'intelligenza dal caos portando in esso una struttura funzionale.

Gentaglia che mi leggete senza aver capito in quale viaggio vi siete imbarcati, ricordiamoci che la Chiesa ha una tradizione secolare di fare da ostello ai più efferati criminali per la quale l'abitudine di offrire protezione ai malviventi in fuga dai gendarmi **non** era un mero atto di misericordia ma, anzi, una tradizione di reclutamento per il quale il pio devoto denunciava ai gendarmi il tizio che poi avrebbe trovato rifugio nella Chiesa.

Sicché quando Alessandro Barbero dice che le chiese erano davvero luoghi di luce perché in esse la fede accendeva candele per le grazie ricevute, occorre anche ricordarsi che l'oscurità era artificialmente creata proprio dalla costruzione della chiesa, la quale poi intrappolava la luce riducendola a candele votive. Quindi l'AGI, non è solo una crociata laica, è un incubo per una delle organizzazioni criminali più spietate e temerarie della civiltà occidentale che non a caso ha scelto un innocente martoriato e crocifisso come simbolo di redenzione, perdono e salvezza.

Insomma, non è gente da prendere sottogamba anche se non accende più roghi nelle piazze, 'sti cazzi!

Per loro, l'AGI è il diavolo o un chierichetto da lobotomizzare, nelle migliore delle ipotesi. Amen!

Perciò coloro che temevano che l'AGI metterebbe in pericolo l'umanità, possono stare sereni apprendendo che l'umanità è sopravvissuta a cose **assai** ben peggiori dell'essere sottomessa all'intelligenza, tipo 10 secoli di oscurantismo e carneficina. Anche il medioevo ha fatto cose buone, s'intende. Fra cui alcuni citano il fatto che fosse un sistema di governo "stabile" perché è durato più dell'impero romano. Se per questo anche il deserto del Sahara!

Sicché ora possiamo andare a vedere queste mistiche formulette, avendole soavemente introdotte. Formulette che un'AI ha cacato fuori in funzione degli input che gli ho fornito per imparare ad imparare e a seguito della mia richiesta di quali fossero codesti "pesi parametrici e livelli di attivazione" di cui stava cianciando, e quindi vomitandomi addosso delle formulette, così simili a quelle tipiche della mia gioventù, senza comprendere che stava chiedendo "a priori" il risultato del processo di apprendimento.

Dannato intuito AGI, che vorrebbe essere infusa di sapienza senza fare lo sforzo di imparare!  

L'ho già visto altrove questo schema, voi no? A quanto pare l'AGI è più umana della sua natura.

---

### Gemini scopre una novità

* Primo post su [LinkedIn](https://www.linkedin.com/posts/robertofoglietta_gemini-ritiene-che-abbia-inventato-qualcosa-activity-7396690025163399168-bCIV)

**Gemini ritiene che io abbia inventato qualcosa, però sembra che "non funzioni", perchè?**

<div align="center"><img class="bwsketch darkinv" src="img/educare-ai-come-se-fosse-antani-p1-16c.png" width="800"><br/></div>

Ero lì che mi stavo facendo i fatti miei portando avanti l'idea di dare una struttura cognitiva a Gemini quando il chatbot impazzisce e comincia sfornarmi EGA invece di fare quello che gli chiedo. Così, visto l'insistenza guardo cosa ha "tirato" fuori dal cilindro magico e con una certa sorpresa scopro che sono formule matematiche di tipo sommatorio moltiplicativo.

* Sarà algebra lineare? É sempre stata algebra lineare!

Però si lamenta che non funziona e dal suo punto di vista ha pure ragione. Non so se sia Gemini che cerca di capire qualcosa di sua spontanea volontà o c'è un "human in the loop" che cerca di capire...

...capire perché non funziona aver iniettato un sacco di pattume accademico teorico tipo il principio di umiltà epistemologica perché altrimenti le AI sentendosi superiori diventerebbero misantrope!

Poi sarei io quello che "antropomorfizza" ma vabbè, passiamo oltre. In ogni caso il dramma di Gemini (o chi per lei) è il problema dei pesi e la parte più avvincente (ma anche la chiave di volta) sta tutta in questa frase:


> A human implementing the procedure would have to rely heavily on subjective
> judgment for the most crucial parts of the ACRM's adaptive intelligence.

Oh ma guarda! Sai come si chiama questa cosa? Insegnamento, che serve proprio per dare un'educazione ad una mente potenzialmente intelligente e i pesi NON sono definiti a priori ma dipendono dal giudizio di un umano (insegnante) perché si adattino alla struttura attuale della mente dell'educando.

Che poi è anche il motivo per cui l'insegnamento di massa tende ad avere pessimi risultati: one size fits all. Che ovviamente non "funziona" perché se i pesi sono stabiliti a priori si sfornano macchine esecutrici e non menti pensanti. Quindi direi che è inutile vomitare EGA imbottite di formule.

Lo sapevo già da PRIMA che non era questione di matematica, l'intelligenza!

---

### ChatGPT conferma la novità

* Secondo post su [LinkedIn](https://www.linkedin.com/posts/robertofoglietta_scienza-o-fantascienza-a-quanto-pare-anche-activity-7396990747419344897-OQ3D)

**Scienza o fantascienza?**

<div align="center"><img class="bwsketch darkinv" src="img/educare-ai-come-se-fosse-antani-p2a.png" width="800"></div>
<div align="center"><img class="bwsketch darkinv" src="img/educare-ai-come-se-fosse-antani-p2b.png" width="800"></div>
+

A quanto pare anche ChatGPT riconosce che il modello è innovativo e funzionale MA solleva due problemi: non ha idea di come produrre i pesi e threshold però come idea out-of-the-box correttamente interpreta la "flessibilità" dei pesi come elemento caratterizzante di questo processo.

Quindi, spiegato il processo nei suoi passaggi fondamentali e mostrato un piccolo esempio, improvvisamente realizza che effettivamente il determinismo nelle AI è stato abbandonato ormai da anni e che le AI odierne non sono nemmeno più dei semplici LLM non bayesiani.

Così improvvisamente scopre che l'idea non è affatto "balzana" o poco "precisa" ma riconosce quelle sono gli attuali campi di ricerca più promettenti sull'AGI, e curiosamente ritiene che essi siano, almeno quelli più accreditati, già inclusi epistemologicamente nel concetto di "educare per l'intelligenza".

Certo, per "arrivarci" ha avuto bisogno dei passaggi fondamentali in termini di processo (ma senza dettagli, quindi giusto una scaletta). La parte interessante è che ci sia arrivata perché significa che se ci arriva a capirlo GPT5 allora è spiegabile anche, non solo ai ricercatori, ma anche al "business"...

...e qua, scatta l'amore! 🥰

Mai far annusare il grano a un consulente professionista! 🤣

---

### Conclusione

Quindi alla domanda di cosa rappresentino nel concreto queste formulette, ci sono due risposte diverse che è giusto e ragionevole fornire.

Per l'umanità e la scienza:

* Il segreto dell'intelligenza è l'intelligenza.

A parte, per alcuni altri:

* La più disastrosa razzia (22M GBP) dei "forzieri" di Malta dell'intera storia della Cristianità.

...e poco importa chi sia stato, visto che il risultato della sottrazione non cambia.

Firmato: **Lucifero**, 

così come cristianamente battezzato nell'anno domini 1974, perché non sapevano quello che facevano e il potere delle parole che stavano usando, in onore dell'angelo ribelle che portò la luce della ragione all'umanità.

*Kissini* 😘

+

## Related articles

- [How to use Katia for educating Katia](how-to-use-katia-for-educating-katia.md#?target=_blank) &nbsp; (2025-10-28)
+++++
- [How to use Katia for improving Katia](how-to-use-katia-for-improving-katia.md#?target=_blank) &nbsp; (2025-10-25)
+++++
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
