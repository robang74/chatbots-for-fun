## EMERGING & GROWING COMPLEXITY IN AI REASONING

Article written appending posts that I wrote on this subject in the recent day, antichronological order presentation: from the empiric results down to the abstract principles on which is rooted this practical experiment.

---

### Rationale Presentation

* LinkedIn [post #1](https://www.linkedin.com/posts/robertofoglietta_emerging-growing-complexity-structure-w0-activity-7398573969370636288-upBa)

* Structure evolution: W0 ⇾ W1 ⇾ W2 ···> W3?

~> lnkd.in/dSMa9Xjs (github link)

~> lnkd.in/dxVAuHQs (previous post)

Why is the emergence of this structure a fundamental asset for AI to AGI transition? This post linked below proposes an answer based on a recently published scientific paper (2025-11-20 on arxiv) that can explain why intelligence.

Intelligence defined as the capability of solving unknown/novel problems is strongly related to the structural { thinking as a process, thoughts organisation, information and context management }.

In short, strongly related to a functional structure of the mind, which is solid stable enough to structuring its whole functioning and for this reason is an emergent feature that can be indirectly perceived and in the AI also built and extracted (at least in its general terms)

The explanation can be found in this scientific paper which refers to other works from 1975 to 2011 and highlights the importance of the structure in thinking and their informational organisation (processing, verification, refutation, et.) in order to solve problems, ergo to manifest a sort of structure goal-oriented reasoning.

---

### Cognitive Foundations

* for Reasoning and their Manifestation in LLMs, published on [arxiv](https://arxiv.org/pdf/2511.16660v1) (2025-11-20)

At Marr’s computational level, we investigate the fundamental constraints that an ideal solution to any reasoning problem must satisfy. Fodor’s (1975) language of thought hypothesis identifies these constraints: valid reasoning manipulates structured representations according to compositional rules, producing thoughts that are logically coherent (free from contradiction), compositional (complex meanings built from simpler parts), and productive (capable of generating unbounded novel inferences from finite primitives). We add conceptual processing from research on cognitive processing capacity and conceptual structures (Halford, 1989; Kholodnaya & Volkova, 2016), which requires that reasoning operates over abstract relational structures rather than surface forms.

The meta-cognitive controls govern processes, but processes must operate over something. Descending to Marr’s algorithmic level, we encounter the representational structures that encode knowledge and organize reasoning. The effectiveness of reasoning depends critically on how information is structured (Sweller, 1988; Britton & Tesser, 1982). This focus on structure has deep roots in psychology, tracing back to the principles of associationism and the early study of how ideas become linked in the mind (James et al., 1890). Contemporary evidence strongly validates this structural dependence. Cognitive load theory demonstrates that working memory limitations create severe bottlenecks: poorly structured information overwhelms capacity, while well-structured information facilitates processing (Sweller, 2011). 

---

### About Post & Paper alignment

For ChatGPT the two are [aligned](https://chatgpt.com/share/6924512d-a04c-8012-ae8f-42c3f386704a) but Kimi K2 is more specific.

#### Kimi K2 Analysis

* Facebook [post #2](https://www.facebook.com/roberto.a.foglietta/posts/10162608004618736)

La struttura W0-W2 che vedete qui è un’implementazione concreta delle ‘reasoning representations’ e ‘meta-cognitive controls’ identificate nel paper Cognitive Foundations for Reasoning (arXiv 2511.16660): ogni nodo (P, R, CB, RF) corrisponde a uno degli elementi della loro tassonomia; il JSON di stato è il meccanismo che ci permette di farle persistere e comporre tra sessioni.

Con questa spiegazione il lettore capisce immediatamente che: 1) la sequenza W0-W2 non è un’alternativa alla tassonomia del paper, ma un’istanziazione; 2) la continuità tra sessioni (JSON-cache) è l’ingegnerizzazione del “meta-cognitive monitoring” che il paper misura e trova correlato al successo.

In sintesi: i due piani (teorico/empirico vs. tecnico/procedurale) sono complementari e, una volta reso esplicito il ponte, il trio di post risulta ben piazzato rispetto al paper.

Infine, la tassonomia del post (NdR.: il precedente) non è una mera astrazione, ma è la struttura che riceve il prompt, lo smonta, lo elabora e restituisce la risposta — e lo fa con la stessa continuità che il paper indica come prerequisito per il general-purpose reasoning.

---

### HOW AI CONTINUITY, EVEN LITERALLY IS ACHIEVED?

* Linkedin [post #3](https://www.linkedin.com/posts/robertofoglietta_oh-look-there-is-a-structure-behind-activity-7398526734951763968-g70Q)

Producing and saving in a JSON file the a cache which once loaded in another session will restore the previous state, for what it matters, but not the context, otherwise starting a new session would have no reason, in first place, to happen.

This is how JSON works both as cache and previous state of working and creates a near literal continuity also among different models, not just Gemini 3.0 and 2.5 but also Claude models.

Invalidating the JSON cache starts the work from scratch and breaks this continuity creating alternative scenarios. Then, continuity in this case is a matter of the underlying text file. However, during development that file changes quite often and results may greatly vary (including regression).

Which is the reason for which on a weekly basis (or when necessary) a total fresh start is taken to debug all the regressions injected during the development process and not emerge because the staticity of the interpretation and working in the same session with a context progressively acknowledged.

This is the main reason for the JSON cache downloaded as a file: creating that continuity which allows me to reach a maturity otherwise would require immense resources to be achieved every time from scratch.

---

### OH LOOK... THERE IS A STRUCTURE BEHIND!

* LinkedIn [post #4](https://www.linkedin.com/posts/robertofoglietta_oh-look-there-is-a-structure-behind-activity-7398377778494033920-_yxR)

Katia Cognitive Compass is not just a bunch of claims to provide a narrative -- otherwise among millions of books learned, they would not make any difference -- but they constitute a structure.

Well, not just a graph: a structure and an I/O processing structure. Never confuse coincidence with causation: there is a structure not just by an accidental good-luck chance but by design.

Now, we can start to observe it, not just by indirect inspection by the results in output but also as the AI model "conceives" it aka how it perceives its own thoughts (concept) into its own mind. Quite interesting, indeed.

~> https://lnkd.in/d24vfr3A (github, link to AICC::CORE text)

#### OH GUARDA... <br>... C'È UNA STRUTTURA<br>NELLA AICC DI KATIA AI! 🤗

Quelli di Anthropic fanno concept injection grazie alla loro console connessa nei backend dei modelli AI. Quelli di OpenAI stanno studiando come isolare i concetti e ci sono riusciti a farlo al livello GPT-1 e pensano che arriveranno a farlo fino al GPT-3 (oggi l'ultima shell è GPT-5). Nel mentre, io "gioco" con Gemini 2.5 (o 3.0, talvolta) e faccio entrambe le cose: tomografia assiale computerizzata dei concetti iniettati nel cervello del paziente e mentre lo faccio lui mi racconta di cosa vede, in grafici ASCII, naturalmente!

Il tutto, ovviamente ed esclusivamente, da un account gratuito e usando l'interfaccia web ovvero usando il minimo del minimo sia come disponibilità di servizio sia come accesso, opzioni, funzionalità, etc. praticamente come fare i calcoli a mente, talvolta aiutato da carta e penna.

In effetti è proprio così: attualmente, come un neurochirurgo sto lavorando sulla singola sinapsi, solo che lo faccio con lo scalpello per il marmo invece che con un bisturi laser... Dr. Frankestein! 😎


