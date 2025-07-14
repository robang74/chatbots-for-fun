<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/gemini-as-your-personal-financial-advisor.jpg" width="800"><br></div>

## Gemini as your personal financial advisor

- **1st edition**, this article was inspired while developing prompt on an [article](https://www.coindesk.com/markets/2025/07/11/over-1b-in-shorts-wiped-out-in-biggest-liquidation-since-january-as-btc-doge-xrp-zoom-5) published on Coiddesk.

This article is the natural prosecution of these two:

- [Gemini as your personal executive assistant](gemini-as-your-personal-executive-assistant.md#?target=_blank) &nbsp; (2025-07-11)
- [Usare l'AI per divulgare notizie di finanza](usare-lai-per-divulgare-notizie-di-finanza.md#?target=_blank) &nbsp; (2025-07-08)

Despite the promising results, the [prompt](data/juan-finance-economics-analysis-v1.txt#?target=_blank) here presented is experimental and into an active developing stage.

> [!WARN]
> 
> **WORKING IN PROGRESS**

---

### The F&E prompt structure

The following is the straightforward structure of the F&E prompt which is divided in seven parts:

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

---

### The core of the F&E prompt

The [core](data/juan-finance-economics-analysis-v1.txt#:~:text=Finance%20%26%20Economics%20%5BF%26E%5D?target=_blank) of the F&E prompt is divided in seven parts. While the last two parts are defining how various modes interact among them, and the first is the seed of an agentic AI prompt, the middle part (7.2 -- 7.5) is the center of gravity of that module.

The attention and the context are two relevant elements that greatly influence how the AI reacts in processing data and reacts to the user inputs. Influencing these two aspects (7.2 -- 7.3) is what can be described as "sticking the AI to a focused task".

The keywords in the F&E module are just three: `Juan`, `finance-economics` and `[F&E]`. This might seem surprising but everything else can be used to obtain another kind of agent. As the [Katia](data/katia-executive-grade-analysis-v1.txt#?target=_blank), the executive grade analysis session prompt, shows.

- Developing Katia from Juan: [conversation](https://g.co/gemini/share/3f7cdf0e1e79) with Gemini and its [transcription]().

Despite during the conversation both English (for the prompt) and Italian (for the conversation) languages are used, this separation seems working pretty well and acknowledges that an English session prompt is an universal script-for-an-interpreter.

The theory of communication and public speaking teaches us that there are many aspects that deeply influences the information transmission, and hence influences the audience.

- Forget the non verbal communication that does not apply in writings.

- The "tone" or "style" of writing is something that an LLM could recognise (cataloging, labeling, etc.) but being strongly context-related is hard to manage by a session prompt that usually receives just a snippet of information.

- What is remaining are three categories of information: explicit and implicit claims, and biases. Extracting and categorising them is a MUST, otherwise we are getting to be influenced but those information that we are not aware of are being embedded into the "message".

This explains why the prompt (7.4) explicitly lists these three categories. Moreover, in writing "message" is about being aware that everyone that write everything has it own agenda, and more specifically a goal in mind, not just "neutrally" transfer some bits of information: 

- "The speed of light is an universal constant", isn't just an information but a message, also. In particular, when that information is included in text that defines the context and presents others claims, whatever type they are.

Therefore, the prompt (7.5) instructs the AI to search (implicit) and extract the connections among ideas (claims but more general because an idea can be a subset of claims, especially from the point of view of the AI) and check for the gaps. Specifically, from the author's PoV because we are interested in understanding the "message", not just acquiring some information (e.g. 299.792.458 m/s).

- [conversation](https://g.co/gemini/share/08c9bff5ea10) with Gemini and its [transcription](not-yet#?target=_blank)

Some of the concepts reported above are futherly developed in the conversion above. Moreover, the English-only conversation shows how to switch from a mode to another, and implicitly why the idea of having many modes available is good. However, modes are for nerds while Juan, Katia, SoNia, and Alex are more people-oriented: a team at your service. Yes, it is damn marketing, so what? {:-D}.

---

### The most relevant prompt parts

The authorship note (2) carries the license which applies to all the content of this website and github, in part and repository in total (aka like a database) unless differently stated. Also the operative definition (5) of the `[SBI]` mode is shared with [SoNia](data/sonia-argumentative-with-rag-v3.txt#:~:text=Short%20but%20insightful?target=_blank) argumentative session prompt.

Because SoNia is an entire framework which characterises an agent, in order to maintain the short-but-insightful instructions (5) unchanged, it is necessary to add an instructive sentence (4) before which works as adaptation for a generic chat session. The `[SBI]` activation by default is append at its end.

Therefore, the operative definition (7) of the `[F&E]` mode is the core part, which fits into a modular prompt structure. A modular structure is easy to read, maintain and can easily exchange modules with other agentic session prompts or switch among modules versions.

+

## Related articles

- [L'AI è un game-changer perché è onesta](l-ai-e-un-game-changer-perche-onesta.md#?target=_blank) &nbsp; (2025-06-23)

- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-06-13)

- [Fix your data is a postponing excuse](fix-your-data-a-postponing-excuse.md#?target=_blank) &nbsp; (2025-05-08)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
