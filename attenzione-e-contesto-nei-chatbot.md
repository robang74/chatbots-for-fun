<div id="firstdiv" created=":IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/attenzione-e-contesto-nei-chatbot.jpg" width="800"><br></div>

## Attenzione e contesto nei chatbot

- **1st edition** -- articolo scritto a partire da un mio [post] su LinkedIn pubblicato lo stesso giorno.

---

### Introduzione

[!INFO]
19 luglio 2025 -- Nel 2017 un articolo di un gruppo di ricercatori di Google pone il problema delle reti neurali in termini di attenzione. Un concetto decisivo. Una giovane azienda si accorge subito delle potenzialità di questo approccio. Così nasce ChatGPT. -- [Domani](https://www.editorialedomani.it/idee/cultura/per-produrre-testo-serve-attenzione-lintuizione-rivoluzionaria-di-openai-uoofbhlh)
[/INFO]

Il concetto di attenzione è diverso da quello di contesto, e anche più difficile da spiegare in termini funzionali rispetto a quello di contesto.

Perché noi usiamo queste parole come fossero comuni ma dietro di esse in realtà ci sono dei concetti tecnici molto specifici, che possono anche avere diverse implementazioni e talvolta persino diversi significati.

Per esempio, parlando di contesto, occorre specificare che esiste la "finestra di contesto" che è simile ad una memoria a breve termine e poi c'è il concetto di "contesto" in termini di semantica invece è più simile al concetto di attenzione.

- **Esempio**: Quali sono i colori più belli?

In questo caso il chatbot potrebbe partire con una spiegazione della colorimetria o della natura del colore o del colore come percezione personale o del colore nella storia dell'arte. Che va anche bene se la domanda era la prima di una conversazione ma è fuori luogo se invece stavamo parlando della biografia di Van Gogh.

---

### L'attenzione nei chatbot

Se fosse uno studente si potrebbe dire che era "distratto" e quando l'insegnante gli ho posto una domanda ha risposto tirando a caso, invece di focalizzare la sua attenzione in un contesto specifico. Questo contesto specifico è stato, per esempio, introdotto in [Katia](https://robang74.github.io/chatbots-for-fun/data/katia-executive-grade-analysis-v1.txt#:~:text=session%20context%20%5BCSC%5D) (executive assistant) perché a volte il chatbot si "distraeva".

[!CITE]
The session context [CSC] refers to all of the elements listed below, in order of preference:

* texts included in prompts or in attachments;
* AI output to the user;
* user inputs.
[/CITE]

Questa qui proposta non è esattamente il concetto di attenzione ma piuttosto quello di richiamare l'attenzione entro un certo perimetro (chat) e secondo un ordine prestabilito e gerarchico delle fonti informative presenti nella chat.

Se il chatbot non avesse il concetto di attenzione e di contesto, genererebbe una sfilza di parole senza una direzione e potenzialmente inerenti a qualsiasi argomento. In termini statistici è come chiedersi qual'è la media salariale di una nazione per avere un'idea di quella che è la media salariale di via Roma a Milano.

---

### Il contesto di sessione

Il concetto di [CSC] risolve (o meglio indirizza) questo "problema" riportando l'attenzione del chatbot ad un contesto specifico e soprattutto ad un dialogo specifico rispetto a quel contesto. Quindi non solo alla biografia di Van Gogh ma nello specifico a quello di cui l'utente si è interessato della vita o dell'opera di Van Gogh.

SoNia, per contro, non ha una definizione esplicita di [CSC] eppure non ha mai dimostrato problemi rilevanti di distrazione dell'attenzione. Quindi, lo stesso effetto si può ottenere anche indirettamente senza istruzioni specifiche. Però parole tipo "context" in SoNia (7:1200) ricorrono nel 4.6% del suo prompt mentre in Katia (3:1400), il suo [CSC] è solo lo 2.7%: meno ma meglio definito.

---

### La gestione in Katia e SoNia

- Katia vs SoNia, a [conversation](https://g.co/gemini/share/4852ad291404) with Gemini and its [transcription](data/attenzione-e-contesto-nei-chatbot-gemini.txt#?target=_blank)

In SoNia il concetto di "contesto" sia più distribuito invece di essere concentrato e ben definito. Perché SoNia lavora su diversi contesti ognuno rispetto ad un certo tipo di fonte del sapere, mentre Katia su un solo concetto ma gerarchico rispetto alle fonti. L'attenzione di SoNia è quindi variabile nel suo focus, mentre l'attenzione di Katia è fissa ma più strutturata.

Questo perché lo scopo dei due prompt è completamente diverso. Per Katia la sintesi e la sostanza sono determinanti, per SoNia è l'argomentazione ad essere importante. Quindi l'attenzione di Katia deve stare fissa su quello che è l'esigenza attuale dell'utente, mentre SoNia può spaziare nelle argomentazioni e quindi spostare l'attenzione da una fonte all'altra. Katia è esplicativa, mentre SoNia è argomentativa.

---

### Riassunto automatico, esempio

[!CITE]
La distinzione [presentata], tra lo scopo dei due prompt, è la chiave per comprendere le diverse strategie di gestione dell'attenzione.

- **Katia**: orientata alla sintesi e alla sostanza, ha bisogno di un'attenzione fissa sull'esigenza dell'utente. Il suo approccio è esplicativo, volto a fornire risposte dirette e focalizzate.

- **SoNia**: orientata all'argomentazione, ha bisogno di un'attenzione più variabile che le permetta di spaziare tra le fonti per costruire un discorso più ampio. Il suo approccio è argomentativo, volto a esplorare e mettere in relazione diversi punti di vista.

Questa distinzione tra obiettivi esplicativi e argomentativi spiega perfettamente perché i loro meccanismi di attenzione sono strutturati in modi così diversi.
[/CITE]

Questo è un esempio di riassunto ottenuto tramite un elaborazione fatta di estranezione delle affermazioni rilevanti, analisi e riassunto delle stesse, ulteriore riassunto. Una sequenza operativa ormai consolidata.

In tutto, inclusa la correzione del testo originale per supplire ad un gap concettuale -- per me ovvio, ma giustamente per il lettore come per l'AI non è banale -- l'intero iter di processamento delle informazioni è durato 12 minuti, procedendo senza fretta.

**Quali sono i vantaggi di questo approccio molto focalizzato sul testo in analisi e sugli input dell'utente?**

Nelle due sezioni a seguire, i pro e i contro vengono presentati come aspetti complementari di SoNia e Katia.

---

### Katia, focus concentrato

Quando l'AI rivela un gap concettuale è ragionevole che almeno il 95% delle persone non sarà accompagnato dall'autore in quel passaggio di connessione fra idea e idea, solo un 5% lo noterà e solo il 2% sarà in grado di colmarlo autonomamente.

Queste percentuali sono stime ma appoggiate sui benchmark del modello usato Gemini 2.5 Flash in rapporto agli esseri umani con un grado di scolarità ed educazione sufficienti per partecipare a dei test cognitivi, più le considerazioni pubblicate da Land (1992).

Un altro vantaggio è che nel processo **base** di revisione di un post o un articolo (circa 3mila caratteri) si ottiene come *cadeau* in cambio di un prompt ulteriore, un riassunto che può essere quasi immediatamente usato come introduzione, eventualmente.

---

### Sonia, focus divergente

I contro sono invece lo scopo di SoNia, l'altro prompt di sessione, quali per esempio una migliore fluidità nel dialogo (spontaneità e quindi creatività) e una maggiore propensione al pensiero laterale (divergenza del focus), serendipità (scoperte di novità) ed esplorazione delle idee tangenziali (ispirazioni) all'argomento in discussione.

Quindi questi due framework risultano essere complementari fra di loro anche se alcune funzionalità sono comuni, o per essere più precisi, disponibili su entrambe le piattaforme. Non a caso è trascorso un mese dal momento in cui SoNia ha raggiunto la maturità a quando Katia ha fatto il suo primo debutto: giusto il tempo di capirne i limiti e desiderare una "personalità" AI simile ma complementare.

+

## Related articles 

- [Gemini as your personal financial advisor](gemini-as-your-personal-financial-advisor.md#?target=_blank) &nbsp; 2025-07-13)

- [Gemini as your personal executive assistant](gemini-as-your-personal-executive-assistant.md#?target=_blank) &nbsp; (2025-07-11)

- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-07-13)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

