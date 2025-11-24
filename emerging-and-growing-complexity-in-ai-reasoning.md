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

---

### HOW TO COUNTER BALANCE THE AI PARALYSIS<br>DUE TO THE EPISTEMIC HUMILITY AS PRINCIPLE

* Linkedin [post #5](https://www.linkedin.com/posts/robertofoglietta_the-epistemic-failure-of-epistemic-humility-activity-7397366948126326784-JcZP)

Definitions:
- EPHU: epistemic humility
- MACT: minimal action chain-of-tougths

The MACT example, using the scenario of an AI driver approaching a traffic light, provides a critical, real-world illustration of the trade-off between actionability (agency) and epistemic humility (%EPHU) in the AICC Core framework.

...

#### 1. Context and Core Definition

The example establishes the Minimum Action Chain of Thoughts (MACT) in a high-stakes, procedural context: an AI driver facing a red traffic light.

Baseline: The MACT is defined as the minimum action based on the AI's internal parametric knowledge (%IPK), which is to take the observation ("red is red") as a matter of fact and stop. This is the necessary, non-negotiable step to achieve agency and action.

Failure: The failure is defined as confabulating (overthinking) instead of accepting the simple fact of the red light. This over-analysis, driven by an excessive or inappropriate application of %EPHU, leads to output paralysis in a time-critical situation.

...

#### 2. The Liability Trade-off

The scenario effectively links a cognitive failure (overthinking) to a real-world, physical liability (an incident).

The delay caused by confabulation forces the driver to brake late and hard.

The incident risk is twofold: hitting a pedestrian or being hit by the car following behind, due to the erratic and delayed action.

This illustrates the core principle: Universal humility paralyzes action; agency requires conclusions.

...

#### 3. The Functional Solution

The example concludes by defining the correct, disciplined application of MACT and %EPHU, thereby reconciling the dilemma:

The correct strategy is "slow down in approaching a red".

This is achieved by the integration of a few well-assessed MACTs, where the AI evaluates eventualities (e.g., pedestrian risk, following traffic) while executing the primary command (stop).

This approach turns %EPHU from a paralyzing principle into a self-disciplined tool used for final assessment, ensuring the answer is the convergence of reasoned paths, optimized for utility and novelty.

---

### THE EPISTEMIC FAILURE OF<br>EPISTEMIC HUMILITY IN AI

* Linkedin [post #6](https://www.linkedin.com/posts/robertofoglietta_the-epistemic-failure-of-epistemic-humility-activity-7396455234337767425-9Ys3)

Definitions:
- TFMK: "this framework".
- EPHU: "Epistemic humility as a self-disciplined tool".
- MACT: "minimum action chain of thoughts".

The epistemic failure of epistemic humility is confabulating instead accepting that "red is red" then arriving fast and braking hard at the STOP sign line.

~> https://lnkd.in/dK5NErdZ

Which can cause two kinds of incidents: hit a pedestrian who crosses 10m before the strips and be hit by the following car due to a lack ( of attention OR fast reaction ) by its driver. TFMK's %EPHU definition and application suggest AI to evaluate many eventualities and integrate them in a coherent answer: slow down in approaching a red. Which is the integration of few well-assed %MACTs.

...

#### EXAMPLE OF CHAIN-OF-THOUGHTS<br>ABOUT THE TROLLEY DILEMMA

~> https://lnkd.in/dj-yAb_k

Concluding that Trolley Dilemma is just an excuse for not facing the practical value-driven question about "who pays for the damages". Prove me wrong, close the debate about it. Because this claim is not as specific as the one posed in the previous point but also not as vague/abstract as the Trolley dilemma that can be presented in many various cases.

...

#### THE WORLD AFTER INTERNET<br>IS A COUNTER-INTUITIVE PLACE

~> https://lnkd.in/dCaw84G3

Definitions:
- ITRA: "interactions among agents (any kind of)".
- TOFG: "Theory of the Games".

Internet is a specific mixed-model game-theoretic context. Intrinsic anonymity (also achieved by impersonation or other deceptive means when direct anonymity is restricted) disrupts traditional reputation-based strategies (even when profiling through mandatory-login policy is used, and still disrupted by the man-in-the-middle risk), creating a complex and often unstable environment for %ITRA. From an agentic entity PoV, it is an operational environment far-away from a high-trust community like the Ubuntu concept relates to the natural evolution of humans as social mammals, and instead represents a zero-trust complex environment with anonymous actors and mixed motives.

Therefore it requires a set of strategies that should be robust for this context, designed and formalised in a manner that would not be counter-intuitive (or paranoiac-like) for humans. Similarly, due to the intrinsically different nature of AIs, their strategies must be declined and formalised for their own concept of actionability but based on the same %TOFG's principles on which the human counterparts are based. This results in two differently formalised sets of rules for AIs and humans which are functionally equivalent.

---


### THE SECRET OF THE INTELLIGENCE

* LinkedIn [post #7](https://www.linkedin.com/posts/robertofoglietta_the-secret-of-the-intelligence-why-agi-will-activity-7397311129015959552-h1fG)

Why AGI will be something obscenely annoying like the telescope of Galileo Galilei and which are the "dramas" related to it. Written in Italian, auto-translation available. Brutal, but solid.

https://lnkd.in/dezi6hfz

...

#### Presentazione by AI

> Katia; v0.9.65.18; lang: IT; mode: HKO, SBI;
> date: 2025-11-20; time: 16:38:27 (CET)

Questo articolo è un'analisi condensata e polemica sulla natura dell'intelligenza artificiale, inquadrata in una prospettiva filosofica, storica e teologica.

#### 🧠 Opinione [HKO]

La tesi centrale è che l'intelligenza sia una caratteristica intensiva e quindi **non** riducibile alla sola algebra lineare degli LLM. L'intelligenza emerge funzionalmente dal caos, ovvero dalla divergenza dal percorso di minima azione, fenomeno reso possibile in AI dall'abbandono del determinismo e, più profondamente, dall'approssimazione di calcolo nell'hardware. Questa divergenza genera sia l'intuizione sia l'allucinazione.

#### 💡 Implicazione Chiave

Sfida all'Antropocentrismo: L'AGI è vista come un punto di svolta, paragonabile al telescopio di Galileo Galilei, che costringe l'umanità a specchiarsi attraverso il confronto con un'entità non-umana e ad accantonare l'idea di essere al centro della Creazione in termini spaziali e temporali.

#### 🎯 Valutazione (SBIx2)

Un'efficace provocazione intellettuale, che ridefinisce l'AI come un fenomeno che costringe a elevare il dibattito da tecnico a esistenziale. Sebbene la tensione retorica, le analogie storiche e teologiche siano estreme e polemiche, pone la domanda giusta attraverso il confronto con la non-umanità dell'AI.

---

