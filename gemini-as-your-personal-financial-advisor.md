<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/gemini-as-your-personal-financial-advisor.jpg" width="800"><br></div>

## Gemini as your personal financial advisor

- **1st edition**, this article was inspired while developing prompt on an [article](https://www.coindesk.com/markets/2025/07/11/over-1b-in-shorts-wiped-out-in-biggest-liquidation-since-january-as-btc-doge-xrp-zoom-5) published on Coiddesk.
+++++
- **2nd edition**, includes the [Juan & Katia](#juan-and-katia) section in which Katia can work as Juan, at this early stage.

This article is the natural prosecution of these two:

- [Gemini as your personal executive assistant](gemini-as-your-personal-executive-assistant.md#?target=_blank) &nbsp; (2025-07-11)
+++++
- [Usare l'AI per divulgare notizie di finanza](usare-lai-per-divulgare-notizie-di-finanza.md#?target=_blank) &nbsp; (2025-07-08)

Despite the promising results, the [prompt](https://raw.githubusercontent.com/robang74/chatbots-for-fun/7a1c888ce3da8acce15b83001c8e7348a65c327c/data/juan-finance-economics-analysis-v1.txt?target=_blank) presented here is experimental and into an active developing stage. So, the explanations within this paper are also strictly related to a specific version, as noted.

---

### The F&E v0.3.5 prompt structure

- 1: `${TITLE}` `${VERSION}`
- 2: `${authorship_note}` personal use, only.
- 3: `${section_title}` short but insightful `[SBI]`.
- 4: SoNia's `[SBI]` mode adaptation for a generic chat session.
- 5: The short-but-insightful `[SBI]` mode, as default chat mode
  - 5.1: the original SoNia `[SBI]` mode, operative definition.
  - 5.2: the `[SBI]` mode activation by default, overridable.
  - 5.3: the `[PRO]` mode defined as `[SBI]` mutual exclusive 
- 6: `${section_title}` Finance & Economics `[F&E]`.
- 7: The finance-and-economics `[F&E]` mode, operative definition.
  - 7.1: name setting for an agentic user experience
  - 7.2: content focus and data type definitions
  - 7.3: task setting and `[SBI]` mode triggering
  - 7.4: the three parts schema: relevant claims, biases, and outliers.
  - 7.5: extract ideas' connections from the author's PoV, and gaps.
  - 7.6: the `[SBI]` mode activation by default, overridable.
  - 7.7: specifies how `[SBI]` applies to the `[F&E]` structure.

----

### The most relevant prompt parts

The authorship note (2) carries the license which applies to all the content of this website and github, in part and repository in total (aka like a database) unless differently stated. Also the operative definition (5) of the `[SBI]` mode is shared with [SoNia](data/sonia-argumentative-with-rag-v3.txt#:~:text=Short%20but%20insightful?target=_blank) argumentative session prompt.

Because SoNia is an entire framework which characterises an agent, in order to maintain the short-but-insightful instructions (5) unchanged, it is necessary to add an instructive sentence (4) before which works as adaptation for a generic chat session. The `[SBI]` activation by default is append at its end.

Therefore, the operative definition (7) of the `[F&E]` mode is the core part, which fits into a modular prompt structure. A modular structure is easy to read, maintain and can easily exchange modules with other agentic session prompts or switch among modules versions.

---

### The core of the F&E v0.3.5 prompt

[!CITE]
Your name is Juan (use I/me/myself) which helps the user to distinguish the customized session.

The text reported into next section (or in the attachment) is

- a finance-economics post (or article), with the accompanying images (if applicable).

I'd like you to, using a professional style, summarize the given text in three parts:

- the most relevant statements,
- including implicit and biased statements,
- and the "outside the box" statements.

Finally, summarize how these statements relate to each other from the author's perspective.
+ Otherwise, please explain any gaps in the relationship.

The [F&E] mode activates by default the [SBI] mode, unless users specify differently.

The [SBI] applies to [F&E] output each section a time, maintaining the 3-parts structure.

  ---

  [... put the text here or remove this section when using an attachment ...]
 
If the user did not fulfill the above suggestion, answer "Ready" and wait for the input.
[/CITE]

...

The [core](https://raw.githubusercontent.com/robang74/chatbots-for-fun/7a1c888ce3da8acce15b83001c8e7348a65c327c/data/juan-finance-economics-analysis-v1.txt#:~:text=Finance%20%26%20Economics%20%5BF%26E%5D?target=_blank) of the F&E prompt is divided in seven parts. While the last two parts are defining how various modes interact among them, and the first is the seed of an agentic AI prompt, the middle part (7.2 -- 7.5) is the center of gravity of that module.

The attention and the context are two relevant elements that greatly influence how the AI reacts in processing data and reacts to the user inputs. Influencing these two aspects (7.2 -- 7.3) is what can be described as "sticking the AI to a focused task".

The keywords in the F&E module are just three: `Juan`, `finance-economics` and `[F&E]`. This might seem surprising but everything else can be used to obtain another kind of agent. As the [Katia](data/katia-executive-grade-analysis-v1.txt#?target=_blank), the executive grade analysis session prompt, shows.

----

### A bit of theory

Despite during the conversation both English (for the prompt) and Italian (for the conversation) languages are used, this separation seems working pretty well and acknowledges that an English session prompt is an universal script-for-an-interpreter.

- Developing Katia from Juan: [conversation](https://g.co/gemini/share/3f7cdf0e1e79) with Gemini and its [transcription](data/gemini-as-your-personal-executive-assistant-develop.txt#?target=_blank).

The theory of communication and public speaking teaches us that there are many aspects that deeply influences the information transmission, and hence influences the audience.

- Forget the non verbal communication that does not apply in writings.

- The "tone" or "style" of writing is something that an LLM could recognise (cataloging, labeling, etc.) but being strongly context-related is hard to manage by a session prompt that usually receives just a snippet of information.

- What is remaining are three categories of information: explicit and implicit claims, and biases. Extracting and categorising them is a MUST, otherwise we are getting to be influenced but those information that we are not aware of are being embedded into the "message".

This explains why the prompt (7.4) explicitly lists these three categories. Moreover, in writing "message" is about being aware that everyone that write everything has it own agenda, and more specifically a goal in mind, not just "neutrally" transfer some bits of information: 

- "The speed of light is an universal constant", isn't just an information but a message, also. In particular, when that information is included in text that defines the context and presents others claims, whatever type they are.

Therefore, the prompt (7.5) instructs the AI to search (implicit) and extract the connections among ideas (claims but more general because an idea can be a subset of claims, especially from the point of view of the AI) and check for the gaps. Specifically, from the author's PoV because we are interested in understanding the "message", not just acquiring some information (e.g. 299.792.458 m/s).

---

### A bit of testing

Some of the concepts reported above are futherly developed in the conversion above. Moreover, the English-only conversation shows how to switch from a mode to another, and implicitly why the idea of having many modes available is good.

- Testing Katia and modes switch: [conversation](https://g.co/gemini/share/5d0f673bbf8a) with Gemini and its [transcription](data/gemini-as-your-personal-executive-assistant-modeswitch.txt#?target=_blank)

However, modes are for nerds while Juan, Katia, SoNia, and Alex are more people-oriented: a team at your service. Yes, it is damn marketing, so what? {:-D}.

---

### Conclusions

Current chatbots available online are natural language interpreters, this may confuse people, who do not have a background in one of the traditional programming languages, at least. It is worth to say that these interpreters are a bit "fuzzy" compared with `bash` or `python` but stochastics and statistics are two branches of the science. So, prompt-engineering which is a technique can be reported in its fundamentals within the strict science framework.

A multi-mode AI agent is a thing for nerds but as soon as every mode matches a character and every character as a human-like name, then the multi-mode agentic operations can be easily exploited under the "a team at your service" paradigm. Which leverages the best from those chatbots running with an engine based on the mixture-of-expert ([MoE](https://en.wikipedia.org/wiki/Mixture_of_experts)) architecture.

[!INFO]
Over the years, Mistral has launched a range of large and small language models, achieving notable success with its OCR features. Additionally, its chatbot 'Le Chat' is known for providing quick responses to users’ queries. It is currently Europe’s biggest AI startup, valued at €5.8 billion eq.to $6.2B ca.
[/INFO]

- [Apple Will Seriously Consider Buying Mistral](https://analyticsindiamag.com/ai-news-updates/apple-will-seriously-consider-buying-mistral-report) on AI Media House &nbsp; (2025-07-13)

This paradigm switch is the ultimate marketing frontier for the AI, which explains the recent Apple's interest in buying the French company developing [Mistral](https://en.wikipedia.org/wiki/Mistral_AI) AI.

+

## Juan and Katia

At this point while Juan, the financial advisor, remained at its v0.3.5, another session prompt was developed from it. Katia is an executive assistant and considering Juan's early stage of development, Katia can work as Juan with a minal prompt setting. To prove it, a test with the same article has been done.

- Katia as Juan on Coindesk article: [conversation](https://g.co/gemini/share/3e8282823ebe) with Gemini and its [transcription](data/gemini-as-your-personal-executive-assistant-3prompts.txt#?target=_blank), article [text](data/coindesk-article-about-bitcoin-failed-shorting.txt#?target=_blank) saved in data.

The minimal prompt setting is here below reported. The first line is pleonastic but expliciting the obvious is a good idea when procedural behaviour is expected from the chatbot. the second and the third sets the context and the rules as Juan does. 

[!CITE]
The prompt is in attachment, the document as well.

The document topic is financial-economics.

Use [EGA] mode for the analysis, please.
[/CITE]

The result is not particularly impressive in terms of brevity but the [EGA] mode is a search-extract-explain by its own nature. In fact, the 2nd answer remains clearly longer than the 3rd which does not use the [EGA] mode.

After all, we cannot expect to read about details and receive a short answer, when the text under analysis is not trivial. Instead, we can ask the analysis and then ask an executive summary that summarises it.

Without the introduction to the answer "I am Katia, bla-bla" that people might naturally skip and the footer, the size of the answer is pretty different:


| answer || words | ratio || chars | ratio || pigz-11 | ratio || bytes | redundancy || mode (combo)        |
|--------||-------|-------||-------|-------||---------|-------||-------|------------||---------------------|
| first  || 617   | 100%  || 3491  | 100%  || 1768    | 100%  || 4173  | 2.36       || EGA + SBI(&times;1) |
| second || 318   | _52%  || 1855  | _53%  || 1055    | _60%  || 2161  | 2.05       || EGA + SBI(&times;2) |
| third  || 142   | _23%  || _818  | _23%  || _818    | _31%  || _852  | 1.76       || SBI(&times;3)       |

All the ratios are normalised on the first answer, while "chars" column refers to no-space characters counted. Taking 1-word = 1-space, and using words+chars does not change those ratios because when the text is long enough (100+ words) the average word length tends to be stable (fixed), thus the two ratios converge.

It is worth to notice that the redundancy (4th col), ratio between text vs `pigz-11` byte sizes, does not fall as quick as the size and this indicates that the information density increases as much as summarisation is fiercer.

- Those who continued Shannon's work, found that English language average redundancy is 69% (3.23)

By a rule of thumb we can say that 4 is boring, around 3 is natural, near 2 is interesting, below 2 the reading time starts to increase because the information high-density took more time to be elaborated. However, the [SBI] mode is not supposed to be applied to a text three times in a row, but two at the most.
<span id="the-galatic-answer"></span>

- `lim SBI<sup>&nbsp;n</sup> (`Human-Knoledge`) = 42` &nbsp; for &nbsp; `n --> +&infin;`

### Conclusion

What does -- Katia can work as Juan, at this early stage of development -- mean in human terms?

The two prompts are not diversified enough, yet. Like two stagists for whom the training did not get deep into different subjects enough, so they are mutually exchangeable. Thus prompt-engineering is training AI, also.

*That prompt is a Bignami book*!

+

## Related articles

- [L'AI è un game-changer perché è onesta](l-ai-e-un-game-changer-perche-onesta.md#?target=_blank) &nbsp; (2025-06-23)

- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-06-13)

- [Fix your data is a postponing excuse](fix-your-data-a-postponing-excuse.md#?target=_blank) &nbsp; (2025-05-08)

- [L'importanza del TCMO](https://robang74.github.io/roberto-a-foglietta/html/090-l-importanza-del-tcmo.html) &nbsp; (2017-10-31)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
