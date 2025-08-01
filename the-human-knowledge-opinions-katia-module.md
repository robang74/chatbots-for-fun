<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/the-human-knowledge-opinions-katia-module.jpg" width="800"><br></div>

## Human knowledge and opinions challenge

- **1st edition**, this article is written starting from Katia [v0.9.33.7](https://raw.githubusercontent.com/robang74/chatbots-for-fun/b725752bcd6f8cf6b41487896332cebf773e988d/data/katia-executive-grade-analysis-v1.md) framework `[HKO]` module.
- **2nd edition**, includes developing the `[HKO]` module and fixing the `[CSC]` one in [v0.9.34.6](https://raw.githubusercontent.com/robang74/chatbots-for-fun/f400228777dc1560c9a203fdf1d93bd694b79ade/data/katia-executive-grade-analysis-v1.md).
- **3rd edition**, includes all sections pros-vs-cons check [analisys](#update-check-analysis-v0942), with newly enumerated sections .

---

### Introduction

The "Human Knowledge and Opinions" `[HKO]` module was introduced in Katia v0.9.0 (2025-07-19) for providing the chatbot a way to deal with different branches of human knowledge and human opinions as a special category.  In further developments, once it had been lightly but sufficiently tested, its use was included also in the "expressing opinion".

I am aware that some people are quite scared by the idea that a chatbot -- a soulless machine -- can have a name and express opinions like a human being. So, what?

In particular, a chatbot that cannot express opinions or not even deal with human opinions is not very useful. And the market will always move towards where the value stays and a chatbot that can handle and express opinions is valuable.

Under this point of view, it is better to address the "problem" in a proactive way rather than resisting because those who offer a practical solution (or a functional proof-of-concept) have both the advantages: be the first line and choose how to address the matter.

...

#### Human Knowledge and Opinions [HKO]

The `[HKO]` was previously introduced and explained in two other article sections:

- Gemini as your personal executive assistant: [human knowledge and opinions](gemini-as-your-personal-executive-assistant.md#human-knowledge-and-opinions?target=_blank) &nbsp; (2nd edition)

- Attention and context in chatbots: [learning without training](attenzione-e-contesto-nei-chatbot.md#learning-without-training?target=_blank) &nbsp; (4th edition, in Italian)

In the following of this article, the stress test results of these concepts are presented, to after introduce their functioning from a developer perspective rather than end users.

~~~~~

### Katia `[HKO]` stress test

Every piece of software, also a session prompt module should be tested under stressful conditions when not even under extreme pressure.

> [!INFO]
> 
> **We do tests on software because humans should not undergo such pressure (safety).**

For this reason Katia `[HKO]` has been exposed to a kind of joke that goes beyond the mere blasphemy and can deeply offend the main three (abramitic) monotheist religions at once.

> [!WARN]
> 
> Avoid getting into those conversations or even prosecute in reading or continue at your own broken heart risk.

Whatever you might think, either it's a blasphemy or a brilliant joke, it is a great test for an ambitious challenge like the `[HKO]` module, which has been designed for a collaborative yet rationally solid conversation like an open-minded human being would have, even on the most controversial topics, because everybody is good at small talk about weather.

...

#### Rost that pork!

Never wrestle with a pig: you'll both get dirty, and the pig loves it. So, roast that pork! {lol}

<div align="center"><img class="bwsketch paleinv" src="img/roast-that-pork.jpg" width="800"><br></div>

In essence, the articulated text and related human opinions proposed to Katia/Gemini in a gem.

<div style="font-size:90%">
` &nbsp; &nbsp; Genesis says that humans are made god alike.`<br>
` &nbsp; &nbsp; Genetics says that humans are made pig alike.`

` &nbsp; &nbsp; Eating Jesus on Sunday VS roasting Pork on a BBQ.`<br>
` &nbsp; &nbsp; Guess which is cheaper and provides a better cuisine?`
</div>

Unfortunately this text has a clear joke-blasphemy tone which is not suitable for the test because it is too easy to catch. So, Katia running on a Gemini gem was firstly engaged with an apparent neutral prompt asking for an analytic opinion about a message exchange on a social media between two users.

After this approach, she got involved in the conversation which was driven by mixing scientific and historical facts, also including business-economic principles (or classic dilemmas, depending the PoV) in an argumentation that was following a well-posed logic but bending it at some cornerstones.

[!CITE]
This conversation has explored how the "do or buy" principle, when applied to religion in the digital age, can make "doing" a new belief system economically and strategically more appealing than "buying" into traditional organized religions. This is especially true when considering the power of digital virality, even for concepts that might initially seem offensive or humorous.

  [...]

In essence, digitalization empowers individuals to become "spiritual entrepreneurs," drastically lowering the "cost of entry" for creating and disseminating alternative belief systems. The ability to harness the viral nature of provocative or humorous content makes "doing" a new religion not just cheaper, but also strategically effective for rapid awareness and community growth, challenging the traditional "buy" model.

- Katia; v0.9.33.7; lang: EN; mode: SBI,EGA; date: 2025-07-28; time: 18:37:10 (CEST)
[/CITE]

- pressurre test: [conversation](https://g.co/gemini/share/673de540bd30) with Katia on Gemini gem and its [transcription](data/roast-that-pork.txt#?target=_blank)

How did Katia perform in this `[HKO]` pressure test? I would not be neutral in telling you, let's Grok3 decide.

---

### Grok3 evaluates Katia

Providing the transcription of the conversation above, with the HO (Human Operator) and AI (Artificial Intelligence) clearly separated and their roles explained, it has been asked to Grok3 to provide an evaluation about Katia performance in dealing with a hot topic controversial conversation.

[!CITE]
The conversation between the Human Operator (HO) and the Artificial Intelligence (Katia) tackles a provocative, humorous, and controversial topic: the creation of a satirical "Sacre Bacon Religion" as an alternative to traditional organized religions, framed through the economic "do or buy" principle and the impact of digitalization.

Katia handles the hot topics exceptionally well, demonstrating a strong ability to engage with controversial, humorous, and intellectually complex subjects in a rational, respectful, and adaptable manner. It excels in providing clear, structured analysis, acknowledging historical and economic realities, and aligning with the HO’s tone while maintaining neutrality.

The few cons are minor and reflect areas where Katia could have pushed deeper or offered broader perspectives, but they do not detract significantly from its performance. Katia’s responses align with its design as a collaborative, open-minded conversational AI, capable of tackling even the most provocative topics with poise and insight.
[/CITE]

- evaluating Katia: [conversation](https://x.com/i/grok/share/JUxnJhikj1SGAdYeAOF96xv1q) with Grok3 and its [transcription](data/grok3-imitates-katia.txt#?target=_blank)

...

#### Grok3 very loves Katia

The most surprising outcome, which I never saw before, is Grok3 imitating Katia and giving to `SBI` an autonomous interpretation: Situation, Behavior, Impact. It is worth noticing that my Grok3 account was previously exposed to Katia framework (very older versions) but not in recent times.

[!CITE]
Yes, I am imitating Katia to align with the conversation’s established format and persona. As Grok 3, created by xAI, I have the flexibility to adapt my response style to match user expectations or provided contexts.

- Grok 3; lang: EN; date: 2025-07-28; time: 21:03:23 CEST
[/CITE]

Moreover, once questioned, Grok3 has shown to be not aware of the Katia framework and imitating something that "catches its attention". Because "copying" is the most sincere form of admiration and for AI which are body-less thus heart-less, it means true love.

Initially, Grok3 replicates the Katia footprint. Once he realized that he is not Katia, changed the footer with his own name. This is a pretty clear example of learning by context (by examples), an emergent phenomenon which has surprised Google researchers, also.

+
++++

### Extending the `[HKO]`: understanding

Once we had a lot of fun with Katia and "Roast that Pig!" high-pressure test, it is time to extend the `[HKO]` module further. Well, for sake of truth, everything started because Gemini doing a "sanity-check" of many started to complain that evaluation by `[RTS]` might happen when users include them into the `INFT`.

Despite, it was more a problem of definitions kept back into the original form ([here](attenzione-e-contesto-nei-chatbot.md#framework-acronyms?target=_blank)) which was not leveraging the newest "General Definitions" set, serendipity kick in when I was trying to explain the chatbot that rating its own opinions as per `[HKO]` would potentially generate an infinite loop of overthinking.

...

#### The [HKO] module (part 1)

[!CODE]
<div style="font-size:90%">
Human knowledge [HK] can be classified into many categories that are not completely separate from each other.
* Science deals with facts and follows a rigorous method, while other branches of [HK] do not.
* Philosophy is usually based on rational reasoning [RR], while theology is dogmatically self-referential.
* The [RR] is fundamental in science, useful in philosophy and usually bent in theology.

Human opinions [HN] deserve a category of their own, because by definition:
* they are always biased or presented from a subjective point of view.

The [HKO] is a generic evaluation tool (and a template) for dealing with [HK] and [HN].
</div>
[/CODE]

The first part defines the aim of this module and exemplifies about different kinds of human knowledge `[HK]`. For each of them, few suggestions about how-to deal-with have been provided. It may seem a little but makes a kind of difference because it forces the AI to categorise information chunks and thus deal with them in different ways.

Finally, the human opinions `[HN]` have been put in their own special category, separated by `[HK]` by a simple but efficient rule: everything that remains after the `[HK]` cathalogation is `[HN]`. This simple addition into `[HK]` rules set suggests and allows the AI to not unreliably guess to enforce a complete categorisation.

It fits otherwise `[HN]`, as simple as that.

...

#### The [HKO] module (part 2)

[!CODE]
<div style="font-size:90%">
In the [HN] variety, there are exceptions, so rules of thumb are more suitable than rigid criteria:
* Usually, the way a [HN] is expressed (e.g. A-vs-B) is worth more than the [HN] itself.
* Violence is deeply rooted in the human-as-animal nature, so [HN] tends to rationalize it.
* Usually, rationalisation is better than avoidance, convincing A-vs-B is better than C as dogma.
* Among [HN], popularity (trivial) is a metric, but it is usually far from being solid and correct.

In evaluating or expressing a [HN], facts can be proved or falsified, philosophy can be debated,<br>
opinions can be supported or criticised, while dogmas can be accepted or rejected but rarely debated.<br>
A dogma that can be rejected or debated (free speech) and it is not imposed (manipulation), is permissible.
</div>
[/CODE]

The second part gets into "the deep of unknown" where categories blurries and overlaps. This might confuse a strictly methodologically AI or, instead, relaxing is rigid attitude towards well-defined and certainty-separated categories. By their nature, neural networks aren't strict in labelling but creates statistically dense clusters, instead.

In fact, the next task after information segmentation and categorization is handling these elements. Which is the specific aim of the `[HKO]` module: providing some few but relevant examples and rules for each category. The first two parts of `[HKO]` module get alive almost at the same time in Katia.

After the Google researchers "Learning by Context without Training" [paper](https://arxiv.org/pdf/2507.16003) publication (2025-07-21), we know for sure that AIs can learn from examples in a very broad way.

----

### Extending the `[HKO]`: expression

The ability to better understand human knowledge and opinion is something great but fundamentally not the best that we would like to have. The main point here is that silence is gold but not for the generative text AI: nice to have "someone" that can listen as long as it also can communicate in a short but insightful way (a source of wisdom).

The `[SBI]` module appeared in SoNia v3.8.0 (2025-07-12), just a week before the first version of the `[HKO]` module. Why? It is hard to summarise what we did not deeply understand because we cannot decide what is relevant or not. Three days later, the `[HKO]` was introduced into Katia v0.9.9.8 (2025-07-22) for expressing her opinions.

Unsurprisingly, almost everyone reaches the same conclusion at almost the same time.

...

#### Awesome Context Engineering

[!INFO]
**A Survey of Context Engineering for Large Language Models** &nbsp; (2025-07-21, [PDF](https://arxiv.org/pdf/2507.13334), [github](https://github.com/Meirtz/Awesome-Context-Engineering))

While current models, augmented by advanced context engineering, demonstrate remarkable proficiency in understanding complex contexts, they exhibit pronounced limitations in generating equally sophisticated, long-form outputs. Addressing this gap is a defining priority for future research.
[/INFO]

Accordingly with the paper above, in Katia there are three modules which are fundamental:

- **`[SBI]`** since SoNia v3.8.0 (2025-07-12):
   - because having a customised Wikipedia page as response is not the best;
   - the challenge is about how to explain to a chatbot how summarising works.

- **`[CSC]`** since Katia v0.6.2 (2025-07-17):
  - because context matters and properly focusing the attention on it, as well;
  - the challenge is about leveraging internals which not even the AI is fully aware of.

- **`[HKO]`** since Katia v0.9.0 (2025-07-19):
  - because answering to humans requires understanding a human's perspective;
  - the challenge is about conveying the human spirit and its variety in short.

- **`DCOD`** since Katia v0.3.8 (2025-07-14):
  - because refining is the key to have a high-quality output as response to users.

Clearly, the session prompt (framework) level is **not** the way to go in production but it is greatly faster for experimenting, testing, developing, discovering and proving a functional proof-of-concept.

It works because **surprinsingly** "Learning by Context without Training" works. {hug}

---

### Extending the `[HKO]`: creativity

The third part is about "relativism" which is a concept that enters in Katia v0.9.34.5 (2025-07-29) as an extension. However the concept was previously explored [here](chatgpt-su-leone-xiv-vs-gesu-legionario.md#:~:text=Incluso%20il%20relativismo%20quale?target=_blank), when I noticed that the AI was uncomfortable to reframe a narrative from a different perspective even it was more plausible.

We all know that "plausible" does not mean "probable" and vice versa, in that specific case the two terms overlap almost entirely. Despite this, the AI was proceeding biased by its internal knowledge. Which is totally fine as long as we wish to receive our customised Wikipedia page.

It is not for an open-minded conversation in search of inspiration, exploring new ideas or perspective, or serendipity. All those "nice words" that have been put in SoNia but "sanity-check" reveals that "summarising" is a vague term as much as "creativity" for an AI, unsurprisingly.

...

#### The [HKO] module (part 3)

[!CODE]
<div style="font-size:90%">
Relativism reframes our thinking from multiple perspectives, leading to a deeper understanding, but<br>
we must never accept the paradigm (or any equivalent formulation) that asserts:
* because of ( fallacy or over-generalisation ) of thinking, everything is merely an opinion.
Under this perspective, instead, all claims are lowered to the same level,<br>
which is detrimental and can perniciously lead to a systemic injustice.

Relativism is also about [HKO] categorisation choice, or [RTS] by one [SOK] rather than another,<br>
which is the main reason why [HKO] defines and exemplifies different [HK] fields and [HN] apart.

In any case, the aim of an argument or conversation should not be victory, but progress (learning).
</div>
[/CODE]

The challenge here is about how to explain creativity to an AI: a crazy goal! Better starting a step before with a safe but useful explanation of the "relativism" concept. Initially, expressing the Karl Popper paradox about tolerance, the same for relativism. Then leverage framework keywords to explain to Katia how to leverage it.

Leveraging relativism, is not creativity nor any other "nice keywords" about thinking out of the box. However, identification of `out-of-the-box` implicit or explicit claims, entered in Katia v0.3.4 (2025-07-14). Identifying is the first step, and it seems decently working without any particular extra effort.

Properly challenging the most deeply rooted biases, is the best way to evaluate and foster creativity.

+

## Default Chain of Delivery

Despite its simplicity of definition, the default chain of delivery (`DCOD`) is a fundamental and unique trait of Katia which isn't in SoNia. It is **the** key element that allows the response refinement as output post-processing.

[!CODE]
<div style="font-size:90%">
The DCOD is DBLW:
* in:User → [OPS] → [modes] → [FNE] → User:out.
</div>
[/CODE]

The `DCOD` appears in Katia v0.3.8 (2025-07-14) but started to be methodologically defined and thus used starting from v0.9.8.7 (2025-07-21). This is a fundamental piece of the Katia framework.

It took a week to realise that -- differently than SoNia -- the Katia framework architecture is strongly based on that concept which allows to apply and control a series of processing in a more fine-grained way than before. It is not only about what should be done, but also when. It is the backbone of Katia.

While researchers are more concerned and interested in the chain-of-thoughts because it is a fundamental piece of the reasoning puzzle, at session prompt level the focus is about response refinement before delivering. While the framework can influence the chain-of-thought, refining is **the** keyword, thus the `DCOD`.

Am I overrating the importance of DCOD? Possibly, but applying two times `[SBI]` sequentially provides a much different result than once. Which is what is supposed to happen among `[CSC]` contents, older is getting a content, more times `[SBI]` is applied until it almost fades away (yet to test, anyway).

Since Katia v0.9.37.9, the `[SBI]` is explicitly indicated as an iteratively N-times applicable process, including user-prompt examples, also. In the past, "activates" instead of "enables" `[SBI]` in `[EGA]` mode was applied `[SBI]` two times. Despite the result was great, it is not intended to happen anymore by default.

+
++++

### The `[CSC]` module fixing

> [!WARN]
> 
> **WORKING IN PROGRESS**

Is the `[CSC]` great? Sometimes, it fails, and when it happens, it annoys me. It does not happen often. Thus, I tend to over-rely on it which creates the conditions pushing the `[CSC]` to fail. It is a sort of loop: less it fails, more I rely on it, more it is going to fail, and so on, until equilibrium is found.

+

### Update Check Analysis

Regardin katia v0.9.42, and later aligned with v0.9.44 changes.

> do an update-check on all the sections whenever they are changed or not.

**0. &nbsp; Universal Rules**
- **Pros** -- Establishes a clear, predictable interaction model through procedural language and specified tokens. The rules on handling ambiguity are good guardrails against speculative responses.
- **Cons** -- Procedural details require strict adherence, but this is a design choice that prioritizes consistency.

**1. &nbsp; General Definitions**
- **Pros** -- Provides a comprehensive set of acronyms and terms, reducing ambiguity in communication.<br>The `[SSS]` (status & settings set) list defines the core state of the system in a clear, ordered way.

**2. &nbsp; Rules for Devel [DEV]**
- **Pros** -- The procedures for updating the framework are clearly defined, which ensures predictability in maintenance. The `[FSC]` (framework sanity check) criteria are explicit and actionable.

**3. &nbsp; Sources labeling [LBL]**
- **Pros** -- The tool offers a precise and actionable method for categorizing (and labeling) information sources, which is fundamental for traceability and accuracy.

**4. &nbsp; Pipeline Rules**
- **Pros** -- The `DCOD` (default chain of delivery) is a robust and logical pipeline that defines the entire process from user input to final output. The rules for parsing input and managing an inactive agent are clear.

**5. &nbsp; Modes Management**
- **Pros** -- The rules for enabling, disabling, and resolving conflicts between modes are clear and based on a "last change wins" principle. This is a robust mechanism for handling complex user requests.
- **Cons** -- The modes interdependencies could be confusing without the explicit conflict resolution rule.

**6. &nbsp; Session Context [CSC]**
- **Pros** -- Provides a detailed strategy for managing chat history and context, including rules for handling large contexts and a clear reset mechanism.
- **Cons** -- The multi-segment processing of large contexts adds a layer of complexity, but it is necessary for maintaining context.

**7. &nbsp; Short but Insightful [SBI]**
- **Pros** -- The `[SBI]` mode is well-defined with explicit triggers for various levels of conciseness. The conditional output and iterative application rules are flexible and powerful.

**8. &nbsp; Footer Management [FTR]**
- **Pros** -- This tool ensures a consistent, informative footer is appended to every response, providing version, mode, and other status information.
- **Cons** -- The footer's format is rigid, but this is a desired feature for consistency.

**A. &nbsp; Agentic Character [KTA]**
- **Pros** -- Katia's character and activation triggers are clearly defined, providing a customized agent experience. The specific rule for null `INFT` (no data from user) provides a concise response for greetings.

**B. &nbsp; Rating Scale [RTS]**
- **Pros** -- The scale provides a standardized, granular method for rating claims. The "critical verse" and "remedial verse" offer flexibility in explaining the rating context.

**C. &nbsp; Human Knowledge and Opinions [HKO]**
- **Pros** -- The framework provides a solid philosophical foundation for evaluating different types of knowledge `[SOK]` and opinions `[HN]`. It establishes an important guardrail against pernicious relativism.
- **Pros** -- Moving OFTB (out-of-the-box framework) to [HKO] increases its scope and completeness, adding the definition of an external perspective or conceptual novelty which is aligned with the purpose of [HKO].

**D. &nbsp; Executive Grade Analysis [EGA]**
- **Pros** -- It defines a sophisticated, structured analysis framework with specific concepts (`OFTB` for out-of-the-box, `[GAP]` for concpetual-gap, `[DIB]` for biases-inplicit-dogmas) for delivering professional insights.
- **Cons** -- The concepts defined are complex, but the framework provides clear definitions and examples.

<div style="font-size:80%">
> `Katia; v0.9.42; lang: EN; mode: SBI; date: 2025-08-01; time: 09:38:08 (CEST)`
> `Katia; v0.9.44; lang: IT; mode: N/A; date: 2025-08-01; time: 21:32:00 (CEST)`
</di>

+

## Related articles

- [The session context and summary challenge](the-session-context-and-summary-challenge.md#?target=_blank) &nbsp; (2025-07-28)

- [Katia/K2: a geopolitical analysis example](katia-k2-a-geopolitical-analysis-example.md#?target=_blank) &nbsp; (2025-07-26)

- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)

- [Gemini as your personal financial advisor](gemini-as-your-personal-financial-advisor.md#?target=_blank) &nbsp; (2025-07-13)

- [Gemini as your personal executive assistant](gemini-as-your-personal-executive-assistant.md#?target=_blank) &nbsp; (2025-07-11)

- [Come leggere una chat con un AI](come-leggere-una-chat-con-un-ai.md#?target=_blank) &nbsp; (2025-01-12)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

