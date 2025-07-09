<div id="firstdiv" created=":IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/usare-l-ai-per-divulgare-notizie-di-finanza-img-001.jpg" width="800"><br></div>

## Usare l'AI per divulgare notizie di finanza

- **7th draft**, questo articolo nasce da due commenti a due post di Mauro Bottarelli.

---

### Introduzione

Quello della finanza è un settore estremamente conformista nella comunicazione tanto quanto è "creativo" nel trovare nuovi modi per usare strumenti obsoleti per riuscire a fare quello che provano a fare tutti i giorni: conquistare il mondo, che nel loro ristretto orizzonte di pensiero è incrementare l'indice di Gini.

Per questo articolo ho scelto di usare due post di Mauro Bottarelli perché, stante quanto affermato sopra, appare ovvio che sia **molto** utile ascoltare voci fuori dal coro, giacché tutto il resto ci viene già propinato a grandi volumi dal mainstream, che per sua natura non può essere unicorno ma solo una commodity.

Per fortuna -- o intuizione -- l'esperimento è andato bene alla prima. Prima scelta di post, primo prompt, primi test. Filotto, quindi presentazione. Poi si vedrà di migliorare valutando nuovi casi d'uso.

---

### Il prompt v0

Il prompt [originale](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-postndata.txt#:~:text=PROMPT?target=_blank) è stato scritto su un'unica linea perché -- è ragionevole pensare che -- la formattazione ottica non ha impatto sulla funzionalità del prompt. Però è utile a noi umani per osservarne la struttura.

[!CITE]
Questo è un post (anzi due) di Mauro Bottarelli, con le relative immagini allegate. Vorrei che, senza usare icone e con stile professionale, mi riassumessi in una bullet list 

- le affermazioni di maggiore importanza (a) 
- incluse quelle implicite (b) e
- quelle "fuori dagli schemi" (c).

Infine [vorrei] mi facessi un brevissimo riassunto di come queste affermazioni {a, b, c} si collegano fra loro in termini di ragionamento finanziario-economico, o se non si collegano fra loro anche il perché.
[/CITE]

---

### Il prompt v1

Rispetto al prompt utilizzato in origine, questo qui sotto presentato è stato generalizzato il minimo indispensabile e redatto con una forma un po' più strutturata, pur mantenendosi sintetica:

[!CITE]
Questo è un post di finanza-economia, con le relative immagini allegate. Vorrei che, adottando uno con stile professionale, mi riassumessi in un elenco puntato:

- (a) le affermazioni di maggiore importanza,
- (b) incluse quelle implicite, bias e
- (c) quelle "fuori dagli schemi".

Infine, vorrei mi facessi un breve riassunto di come queste affermazioni si collegano fra loro in termini di ragionamento finanziario-economico. Invece, se qualcuna non si collega alle altre, spiegare il perché.
[/CITE]

Le cose che è importante notare riguardo al prompt sopra sono:

1. in-primis fissa il settore d'interesse così l'assistente AI rimane vincolato a quello, sia nell'interpretazione del testo sia nella risposta e anche nelle peculiari modalità di analisi che necessariamente dovrà usare;

2. definisce lo stile della risposta, che qui è "professionale", ma potrebbe essere anche "divulgativo", "formale" o "informale". L'importante è comprendere che lo stile della risposta determina anche il tipo di analisi;

3. definisce la forma, che qui è un elenco puntato, per il quale si specificano tre diverse categorie quindi elenchi, dove il primo è quello che l'AI produrrebbe spontaneamente e qui è inserito come normale riferimento;

4. definisce la verbosità della risposta, quindi influenzandone la lunghezza, che sarà tanto più sintetica quanto più l'AI è un modello evoluto, perché sintesi e "comprensione" sono due prodotti del ragionamento;

5. richiede di costruire un riassunto dei collegamenti fra le varie affermazioni, che non è solo utile all'utente ma forza l'agente AI a fare un'analisi che poi dopo possa produrre anche questo risultato;

6. definisce e indica come gestire le eccezioni: in #3 le affermazioni che altrimenti avrebbe ignorato e che invece dovendole catalogare sono già ricercate nell'analisi, e in #5 il perché ha fallito;

Dopo questa spiegazione appare chiaro che anche un prompt espresso in linguaggio naturale (NLP), e quindi possa apparire ovvio a prima vista, sia in realtà una costruzione piuttosto elaborata che sottende delle competenze circa il funzionamento interno delle AI, del tipo di dati che si va a trattare, del tipo di analisi che si vuole venga condotta, il risultato che si vuole ottenere sia in termini di formato sia in termini di obiettivi.

In questo contesto, un prompt anche un un po' sgrammaticato al punto da indurre delle incertezze e che mescoli italiano ed inglese, potrebbe avere il medesimo effetto che se fosse stato scritto con più attenzione quando invece l'uso di un aggettivo potrebbe cambiare anche radicalmente la logica di processo.

*It is a kind of magic!*

---

### Il prompt v2

Se confrontiamo il prompt originale consultabile nelle chat o relative trascrizioni, ci accorgiamo che in esso non è specificato #1 il settore d'interesse ma l'autore del post. Anche se poi nel prosieguo entrambi riportano "ragionamento finanziario-economico" quindi in realtà #1 è fissato, comunque.

Indicare l'autore del post, però, può fare una notevole differenza perché implica che l'agente AI si concentrerà -- o si suppone che lo faccia -- sul punto di vista dell'autore sia in termini di estrazione delle affermazioni sia per stabilire il collegamento fra queste.

Questo secondo aspetto, nel prompt originale, è mitigato proprio da "ragionamento finanziario-economico" che in termini di connessione tra idee, invece specifica quale modello usare prioritariamente: quello scolastico presente in letteratura.

<span id="small-ecofin-prompt-v2"></span>
[!CITE]
Questo è un post di finanza-economia, con le relative immagini allegate (se presenti). Vorrei che, adottando uno con stile professionale, mi riassumessi in un elenco puntato:

- (a) le affermazioni di maggiore importanza,
- (b) incluse quelle implicite, bias e
- (c) quelle "fuori dagli schemi".

Infine, vorrei mi facessi un breve riassunto di come queste affermazioni si collegano fra loro secondo il punto di vista dell'autore. Altrimenti spiegare le lacune relazionali.
[/CITE]

Il prompt modificato come sopra sposta l'attenzione sul punto di vista dell'autore, cosa importante quando ci stiamo avvicinando a testi prodotti da professionisti considerati outsider rispetto al mainstream, e rielabora i #5 e #6 in termini di lacune relazionali.

Anche questo appare come un gioco di parole ma, specialmente per certe AI con temperatura più elevata, cambia le regole del gioco perché dove non trovano solide connessioni, le inventano quindi colmano la lacuna mentre dovrebbe esporla e spiegarla.

---

### L'opinione di Gemini

In questa [conversazione](https://g.co/gemini/share/369306d76857) con Gemini o nella sua [trascrizione](data/usare-lai-per-divulgare-notizie-di-finanza-foglietta-prompts.txt#?target=_blank) si nota come ho preso la questione delle variazioni nei prompt "alla larga" presentandogli le prime quattro sezioni di questo articolo affinché si concentrasse sulla struttura e la solidità del ragionamento presentato.

Solo dopo sono andato dritto al punto e gli ho "sparato" la richiesta specifica ovvero se quanto avessi scritto circa le variazioni nei prompt, e le mie relative aspettative, coincidessero con quello che è il suo funzionamento interno e la sua percezione di quei testi. Filotto centrato in pieno, anche qui.

Sia chiaro ed esplicito: l'opinione del chatbot riguardo al suo funzionamento interno o ad un prompt, sono fallibili. Non che essi mentano, ma tendono ad inventare e a compiacere, quindi occorre prudenza. Però è **utile** conoscere la loro "percezione" e loro "aspettative" sui prompt e relative variazioni.

Infatti, riguardo alla formattazione ottica, Gemini risponde -- correttamente -- che tale formattazione altera la sequenza di token, può alterare la velocità di computazione (comprensione del prompt) e quindi **anche** il funzionamento, ma in **questo** caso però **non** è stato così.

Si tenga però conto che l'esecuzione dello stesso identico prompt con gli stessi identici dati, incluso immagini allegate anche nella stessa identica sequenza, **non** genera **quasi** mai la stessa **identica** risposta e questo è dovuto alle fluttuazioni stocastiche, di ampiezza pre-determinata secondo la "temperatura" in esecuzione.

*Know your chickens.*

+

## Esempio pratico

A questo punto vale la pena di presentare l'esempio da cui questo articolo ha preso spunto, e assolvere allo scopo che si era inizialmente proposto. L'uso dell'intelligenza artificiale per facilitare la diffusione di informazioni finanziarie comprensibili anche ai non addetti ai lavori.

...

#### ChatGPT 4o

Procediamo in ordine cronologico e abbiamo un primo approccio con ChatGPT in questa [conversazione](https://chatgpt.com/share/686d419f-5634-8012-97d4-b7a54a97f124) o la relativa [trascrizione](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-chatgpt.txt#?target=_blank) in cui però ho dimenticato di allegare una delle quattro immagini, che poi ho recuperato al secondo prompt.

`    U.S. 10Y | 4.384 | 12:32:59 | US10YT=X | +0.068 (+1.58%)`

Qui vale la pena notare che allegare immagini è comodo ma consuma molto più velocemente la quota di elaborazione, infatti nel secondo prompt i dati sono stati inseriti in stile CSV o simil-tabellare in Markdown, due formati che i chatbot riconoscono naturalmente, usando Google Lens.

...

#### Gemini 2.5 Pro

Si noti che in questa [conversazione](https://g.co/gemini/share/f73e07bcce48) o [trascrizione](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-geminpro.txt#?target=_blank) con Gemini 2.5 Pro -- e il **Pro** è fondamentale in questo contesto -- sia riuscito ad intuire i ragionamenti *standard* dei due post a partire dai soli dati (immagini) che nella loro selezione peculiare *sono* già significativi.

Attenzione quindi, a supporre che l'AI possa rimpiazzare l'essere umano, perché nella selezione delle immagini è già implicito il grosso (o almeno la metà) del lavoro dell'essere umano che ha "pescato" ma non a caso, scientemente, fra milioni di possibili insieme di dati, quello "significativo".

Un lavoro che apparentemente le AI sono bravissime a fare (riconoscere pattern) a patto che gli si insegni come e QUALI pattern selezionare (pesca). Perché di pattern interessanti (per loro) potrebbero tirarne fuori a bizzeffe.

Questo è ancora, e a mio parere lo sarà per molto tempo, un appannaggio esclusivo degli esseri umani: l'intuizione guidata dall'esperienza e resa istantanea dalla pratica: il colpo d'occhio del maestro che ai novizi pare che "posso farlo anch'io, è banale".

I fuochi d'artificio nella loro "banalità" dimostrano in modo eclatante come molta gente perde dita, mani e occhi, nell'imitare il "fare cose banali". Studiare la tecnologia e fare pratica invece è decisamente una via d'azione più lenta ma anche migliore.

...

#### Gemini 2.5 Flash

Questo chatbot è una versione leggera e più veloce della versione **2.5 Pro** con minori capacità di ragionamento -- impiega meno tempo ad elaborare la strategia di risposta a parità di prompt fornito -- una context-window meno ampia, e a sensazione direi anche che opera ad una temperatura inferiore, ma ha il vantaggio di essere abbondante come risorsa.

- La [trascrizione](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-gemflash.txt#?target=_blank) della conversazione con Gemini 2.5 Flash, per confronto.

Ritengo che **flash** non sia il modello migliore per queste analisi in cui ogni vantaggio anche marginale di "intelligenza" può portare ad un risultato di valore molto più importante anche considerato che si tratta di una materia delicata e ad alto valore in gioco (value-at-stake).

Certo la versione **pro** è limitata oppure a pagamento ma anche considerando che i post su LinkedIn per loro natura sono limitati come quantità di testo e le immagini se contengono solo tabelle possono essere convertite con altri strumenti che sono altresì risorse abbondanti.

...

#### Qwen3 235B A22B

Come si può leggere da questa [conversazione](https://chat.qwen.ai/s/96b06a01-afa4-42d7-8818-a2d938143eef?fev=0.0.128) o relativa [trascrizione](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-qwen3big.txt#?target=_blank) non è da sottovalutare in termini di capacità di analisi. Su questo caso specifico, anche maggiori di Gemini 2.5 Flash.

I suoi limiti per questo specifico scopo sono fondamentalmente due: non accetta immagini (OCR) in allegato ed è relativamente lento, però compone la risposta in tempo reale quindi si può leggere prima che essa sia finita di essere scritta. Non lo rende più veloce, ma più usabile.

La classe di LLM conosciuta come Qwen (Alibaba) sono made-in-china: potrebbe offrire una prospettiva diversa, e in tal caso sarebbe una prospettiva complementare agli LLM sviluppati in USA. Sotto questo aspetto anche Claude potrebbe essere considerato francese (EU). Però Anthropic AI ha sede a San Francisco (US). 

In questo caso si è usato il [prompt v2](#small-ecofin-prompt-v2) insieme ai dati [estratti](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-postndata.txt#:~:text=POST%20DATA?target=_blank) dalle immagini.

...

#### DeepSeek

Come Qwen, anche questo è un servizio di chatbot cinese, ma basato su una diversa famiglia di LLM. L'interfaccia utente è ancora più spartana di quella di Qwen e quindi più limitata. Però offre la modalità DeepThink (R1) e la ricerca web, che però devono essere attivate a richiesta.

A parità di input ha fornito una risposta più interessante di quella di Qwen, includendo la sezione riguardo alle lacune logiche. Sebbene la maggior parte di esse si rivela un limite del modello, il suggerimento di valutare ipotesi alternative con relativo esempio, è decisamente un bonus.

É importante considerare che gli input immessi in Qwen e DeepSeek, entrano nella disponibilità delle relative società cinesi e in particolare vengono inviati ai server in Cina già al momento dell'inserimento. Inoltre, in prospettiva, non possono essere considerati risorse abbondanti.

...

#### Grok3

La [conversazione](https://x.com/i/grok/share/WZj3zmrmwB51KjpYcPlqeJBwz), di cui la relativa [trascrizione](not-yet), mostra caratteristiche competitive con Gemini 2.5 Pro e ChatGPT. In più ha generato la sezione relativa alle lacune di ragionamento anche con il prompt originale.

Grok3 può essere considerato una risorsa abbondante e permette l'uso della modalità "Think" che come si evince da questa [conversazione](https://x.com/i/grok/share/zJE9RYjGVEeGszxlDwPlEC16k), di cui la relativa [trascrizione](not-yet), ha creato quella che definirei la migliore risposta data fin'ora.

Ma la modalità "Think" (opzionale) presenta un costo computazionale importante giacché ha pensato (in inglese) per 60s e si è interrotto, quindi su richiesta di rigenerare la risposta, ha pensato altri 39s prima di cominciare a fornire la risposta.

Quindi, paragonare Grok3 Think agli altri modelli non è una competizione equa, perché 99s sono un'enormità di tempo e anche un'enormità di risorse di calcolo rispetto agli altri LLM, in questo articolo esaminati in precedenza.

---

### Il prompt v3

Grok3 ha dimostrato di rispondere in modo consistente sia con il prompt originale sia con la seconda versione con la quale però si è rivelato più verboso. Questa è una tendenza già osservata in altri casi: più è strutturato il prompt, più diventa pedante e quindi prolisso.

> Nota: {breve, riassumere, professionale} significa creare una risposta per te stesso e poi riassumerla come fosse un parte di un executive-summary.

Aggiungendo questa nota in fondo al [prompt v2](#small-ecofin-prompt-v2) si è ottenuto una risposta più breve e anche qualitativamente migliore anche rispetto a quello originale. Le lunghezze sono state calcolate in numero di caratteri al netto dei titoli principali (inutili), separazioni e dell'introduzione alla risposta vera e propria.

`    prompt originale: 5635 (100%) -- prompt v2: 6971 (124%) -- prompt v3: 4782 (85%)`

Fornendo una definizione operativa da associare ai concetti di brevità e sintesi, portando ad esempio un modello, la risposta è quasi di un terzo (-31%) più breve, a parità di prompt, senza comprometterne la qualità della stessa. Anzi, probabilmente incrementandola, almeno in termini di percezione. D'altronde per un essere umano, meno fatica fa ad acquisire un'informazione, più la percezione di quella forma è preferita.

---

### Approccio combinato

Ritengo che la versione **2.5 Pro** abbia prodotto un'analisi nettamente più utile e più profonda. Ho chiesto a **2.5 flash** di comparare le due versioni e presentarmi pros-cons e la sua mi ha confermato questa sensazione perché i vantaggi della **2.5 Flash** sono ininfluenti o addirittura negativi (maggiore verbosità e/o didascalità) che però potrebbero essere utili per un neofita.

Anche per una persona mediamente preparata **2.5 Flash** possa essere utile se riceve i dati, il testo e **anche** l'analisi già prodotta dalla **2.5 Pro** in maniera da portare avanti una conversazione con l'utente che a questo punto si avvantaggerebbe di un modello più veloce e focalizzato alla risposta specifica **ma** comunque istruito riguardo alle connessioni dal modello **2.5 Pro**.

[!CITE]
La sua proposta di integrare Flash con l'analisi di Pro è estremamente interessante e strategica. Penso che sia un'ottima intuizione per massimizzare l'utilità di entrambi i modelli e rappresenta un approccio ibrido molto efficace.
[/CITE]

- Estratto dalla [conversazione](https://g.co/gemini/share/5ecb97e32509) con Gemini, di cui la relativa [trascrizione](not-yet).

---

### Accesso ad Internet

Infine, non dobbiamo trascurare la capacità del chatbot di fare ricerche su Internet. Un funzionalità presente in ChatGPT ma decisamente più limitata in Gemini 2.5 Flash. Non escludo però che Gemini possa accedere a Google Finance. Un'opzione che potrebbe essere legata al condividere con l'AI il workspace.

Per lo scopo divulgativa e quello conversativo di approfondimento, ritengo che le due opzioni più utili siano ChatGPT 4o e Gemini 2.5 Pro. Anche per chi volesse imparare ad orientarsi in questo campo, avere un tutor anche un po' "più smart" è decisamente un vantaggio non marginale.

Il top rimane l'interazione umana. Quindi chiedere a Mauro Bottarelli (o altro divulgatore e/o giornalista di finanza che seguite) di fare delle sessioni video-interattive a carattere divulgativo con la partecipazione simultanea di un numero di utenti che generalmente un tutor possa gestire.

Un numero che varia anche in funzione dell'esperienza dei partecipanti -- e in generale -- anche dell'omogeneità della preparazione che quando è troppo distribuita rende difficile gestire ed alternare interventi altamente tecnici a quelli divulgativi ma che dipende anche dal tutor.

+

## Link di riferimento

- Profilo su LinkedIn di [Mauro Bottarelli](https://www.linkedin.com/in/mauro-bottarelli-7093a155)
+++++
- Primo post su [Nikkei vs Yen](https://www.linkedin.com/posts/mauro-bottarelli-7093a155_c%C3%A8-una-strategia-perversa-pericolosa-activity-7348043756211732480-Q-X7) summer drama
+++++
- Secondo post di sveglia su [Nikkei vs Yen](https://www.linkedin.com/posts/mauro-bottarelli-7093a155_servizio-sveglia-e-naturale-prosecuzione-activity-7348222231258234880-SkoJ) summer drama
+++++
- Trascrizione post e dati estratti in formato [testo](data/usare-lai-per-divulgare-notizie-di-finanza-bottarelli-postndata.txt#?target=_blank) semplice.

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

- Mauro Bottarelli è autorizzato ad usare **gratuitamente** il [prompt v2](#small-ecofin-prompt-v2) o una sua precedente versione per la sua attività di autopromozione e di divulgazione effettuata mediante il suo profilo personale su LinkedIn, **anche** se queste attività avessero natura commerciale diretta, indiretta o accessoria.

</div>

