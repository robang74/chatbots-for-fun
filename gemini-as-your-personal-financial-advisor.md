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

~~~~~

### The core of the F&E prompt

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

---

### The most relevant prompt parts

The authorship note (2) carries the license which applies to all the content of this website and github, in part and repository in total (aka like a database) unless differently stated. Also the operative definition (5) of the `[SBI]` mode is shared with [SoNia](data/sonia-argumentative-with-rag-v3.txt#:~:text=Short%20but%20insightful?target=_blank) argumentative session prompt.

Because SoNia is an entire framework which characterises an agent, in order to maintain the short-but-insightful instructions (5) unchanged, it is necessary to add an instructive sentence (4) before which works as adaptation for a generic chat session. The `[SBI]` activation by default is append at its end.

Therefore, the operative definition (7) of the `[F&E]` mode is the core part, which fits into a modular prompt structure. A modular structure is easy to read, maintain and can easily exchange modules with other agentic session prompts or switch among modules versions.

+++++

## Related articles

- [L'AI è un game-changer perché è onesta](l-ai-e-un-game-changer-perche-onesta.md#?target=_blank) &nbsp; (2025-06-23)
+++++
- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-06-13)
+++++
- [Fix your data is a postponing excuse](fix-your-data-a-postponing-excuse.md#?target=_blank) &nbsp; (2025-05-08)

+++++

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
