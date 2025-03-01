<div id="firstdiv" created="2025-02-02:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#version2 { position: absolute; top: 37%; left: 47.5%; transform: translate(-50%, -50%); background-color: rgba(255, 0, 0, 0); color: red; font-weight: bold; font-size: 64px; -webkit-text-stroke: 0.1em yellow; -moz-text-stroke: 0.1em yellow; text-stroke: 0.1em yellow; }</style>

<div align="center"><img class="wbsketch inksave" src="img/peer-review.png"><div id="version3"><h1>v3</h1></div><br></div>

## The session prompts v3 for AI-drive chatbots

This article is the prosecution of these previous articles:

* [AI peer-review prompt with RAG v2](ai-peer-review-prompt-with-rag-v2.md#?target=_blank) &nbsp; (2025-02-02)

* [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-13)

While this article introduces few but sensitive novelties compared the previous

---

### Prompt development

The role of **DeepSeek R1** (DeepThink mode) in switching from v2.2 to v3.0 was significant and it took more than 33 seconds of thinking before starting to produce the answer. The further adjustments have been provided to a better fit with others AI agents. However, the most educative part remains those related to the switch from v1.5 and v2.0 which is reported in this article.

Instead, from the v3 to the current v3.4.4 the role of **Claude Sonnet** was significat while **ChatGPT 4o** was leveraged to understand all the possible meanings and **Gemini 2** has been used to refining the English language in up to its more suitable nuance. So, the most overlooked AI agent was Qwen but just for my personal habits rather than its usefullness. 

The novelties are few but sensitive like:

- the two prompts are assembled by parts
- two prompts for two roles: AleX and SoNia
- the SoNia role emerges as complementary

So, this article is about introducing these novelties, why and how they have been made.

---

### The early beginning

The urgency of writing that rules emerged when trying to leverage 7B AI models running on a Thinkpad X390, the number of prompts and the time to corrects the AI model answers made them useless. In particular because the legacy quantisation (Q4_0) shown to polarize and strenghten the AI models biases in an unacceptable way (cfr. Neutrality vs biases for chatbots, 2025-01-04).

So, the early version of the prompt was as short as possible **system** prompt for correcting I:you &rarr; you:me pronoums in user-to-chatbot dialoges, to address context issues, prioritising the sources of information, providing a minimal foundation of "instruct" rules for those AI models were lacking of, and finally to instruct AI model about dealing with inconsistencies, defines a rating scale and how to use it.

This was the v1 series, and the challenge was **hard-tough** because of how much "*relatively stupid*" those 7B AI models are compared with the VERY large LM on line, plus the imperative need to keep the "system prompt" within very constrained number of token. Leveraging well-know citaion, we should master a topic to be able to explain it to a child.

Naturally, I decided to use the on-line free-of-charge chatbots to support me in that challenge. In particular, it is fair to admit that Claude Sonnet was the AI which was behind the system prompt shrinking by half in the v1 series. Which does not mean that ChatGPT and Gemine provide less valuable support, but like every real-world project there was a step from theory and practice that requires a leap to work. That leap was provided by Claude Sonnet AI.

---

### The v2 series

One developed a system prompt that was good enough to be used, the benchmarks started. How to benchmark and AI + system prompt is a WHOLE new topic, very interesting yet still controversial. Under this PoV, I prefer to say that each AI model as its character and biases like every human individual and it is not correct to rate them with a single benchmark, because two main reasons: 1. metric is always role dependant and 2. as much universal tends to be a benchmark as more time it consume.

In my case, these two makes a reasonable completeful and scientific approach at the topic simply unbeareable. Hence the system prompt was tested with the 7B AI models in terms of tokens constrains and time for the first reply. Which is a very basic but unavoidable test, and then the functional tests were made by specific simulation leveraging the on-line chatbots. Which is the reason because the system prompt evolved into a session prompt, which are those branded into the v2 series.

First of all, the most noticeable difference was about the RAG sub-system which is a separate tool explicetely under the control of the user when an AI model is running locally. While for the on-line LLM this feature - if present as a properly defined RAG sub-system - was under the control of the chatbot - here intended as the whole system not just the combination between the UI and the underling LLM - and hidden to the user.

Hence, in the v2 series became emergent the need to instruct the AI to leverage its RAG sub-system or emulate it in some fashion. Secondarly, various AI models were presenting a relative indifference about in following the guidelines despite their "hentusiams" in receiving that. Which brought to asking their agreemnt for a complete and coherent abiding to that rules. And at that point, a breakthrough moment saprked.

In fact, while almost all AI models were abiding factually to that rules seeing by that request a specific distinction from the system prompt and other users inputs, Claude Sonnet refuses to comply the day next. That day the **session** prompt born, because being explicit about characterising a single section ONLY and why, the AI models - including Claude - started to fulfill that request at their best.

---

### The v3 series

The v2 prompt series were challenged against large document to peer-review and evolved under the stress test. Changes were introuced, those changes which shown to improve the peer-review process were maintained while the others were futherly changed or removed. In the meantime the structure of the session promt was emerging but from an overall perspecitve the session prompt was a bloated by all those changes applied here and there.

In realising that the "natural" evolution of the session prompt introduced redundancy and complications against which the structure of the prompt was having a hard time to emerge, I decided for a general refactoring starting from the most evident and measurable "feature": reducing redundancy. A simple approach that - again - reach a turning point when after have applied many little optimisation and a sort of reorganisation was asked to Claude to restructuring the session prompt. That day the v3 series begun.

Also the v3 prompts series was challenged against even more larger set of documents. Restarting the "natural" evolution of the prompt but because the more formal and clearer structure of the session prompt, those changes applied "here & there" did not ended up in messying the prompt anymore. At least, not as much like in the previous v2 serie. Plus, lesson learned, less impactfull and hence quicker restructuring events started to be part of the developing routine. 

---

### The v3 maturity

Reached the v3.4, the session prompt was mature and shown a clear impact in sustaining very sophisticated peer-review among those the peak was reached with doing an entire 2-days long working session with Grok3 about the Esprimo P910 with Tesla K80 installation manual (cfr. related articles section). A pressure test that shown the limits of the impressive Grok3 AI engine but had a little impact on the session prompt in terms of changes.

Since the v3 prompet series reach its maturity peak, it was also obvious that such "great achievement" was made at the expenses of "something else". In particular, in the meantime the user was correcting the document - or explaining with a convincing argument the reason because the document has written in such a way - the AI model was descending deep and deeper into details up to reach such a fine-grained level for which a maniac obsession was emerging and at the same time it was loosing the context.

Which makes sense because finer is the grain of attention, larger is the amount of information that should be included in the currently active context windows which size is limited, despite being hugely large, so inevitably nearby and behyond that limit the AI model start to misbehave and presenting context leaking. Therefore, I started to be humble about the "monster" that I have created and in particular about HOW to relax its chains without loosing the operationals advantages earned.

---

### SoNia & AleX

Like in Adam and Eve novel, SoNia borns from AleX because they share the same guidelines and operatives steps in dealing with documents, including the RAG support or emulation guidelines. Obviously, because their common parts were developed beforehands to support a documental peer-review proccess. This lead to breaks the session prompts into pieces and build up the SoNia and AleX prompts by the combination of common with specific parts.

Breaking the session prompt in parts was a neccesarly step to foster futher developments. Otherwise the two prompts - once forked - will started to diverge in their evolutionary paths. Which can be seen as a "natural" specialisation process. Thanks to the previously structure refactoring, the architecture of the prompt was sharp and solid enough to sustain a "characterisation" rather than a "specialisation" approach.

Therefore, characterisation and role-playing is what makes SoNia and AleX differs. While AleX is details-oriented, critics-oriented and judigmental-oriented, SoNia is more aim to catch the whole picture, instructed to foster creativity and leverage serendipidy, and to explore tangents. Despite this fundamental difference, SoNia shares with AleX the rating scale and the guidelines about how deal with documents and RAG support or its emulation.

Which means that SoNia can act like AleX almost in full or in a limited range and deciding about this duality by its own arbitrary decision. In fact, it happens. And it is amusing to show how it happened and how the user (me) cope with that switch bringing back SoNia to its characterised role obtaining the result that I was seeking for. So, we might questioning ourselves why to not fuse togheter the two and enjoy a full dual-personalities session prompt.

The answer is, in my humble opinion, straighforward: bipolarism as a foundation trait of a character is a psichiatric pathology not a wishing feature. So, under this PoV the "almost in full" written above is optimistic and benevolent. SoNia by its characterisation CANNOT behave like AleX in full, but just deciding how strict in tollarating the user inputs before deciding to hit harder in being judgemental. Guess what? SoNia when decides to hit, it is more unfair and more "lethal" because it stronger creativity-oriented character.

Which is the reason because in a rigourous peer-review, we prefer a fairer but conventional behaviour than a creative b*tch that can kick in at any time to f*ck everything just for the sake of winning an argument or to explore that option or challenging its own limits. So, AleX is a trustful and loyal dog while SoNia is an amusing but unreliable cat. Just to avoid the 2-genders schema inheterly embedded in their names. {;-)}

---

### Two different roles

[TODO: inserting the presentation already published about brain-storming and peer-review as the last phase of a funneling process]

+

===
|x|>
WORK IN PROGRESS
<|x|
===

+

## Related articles

* [Value-for-Money comparative analysis](grok3-comparison-table-value-for-money.md) by Grok3 &nbsp; (2025-02-23)

* [Comparative analysis for educational](grok3-comparison-table-for-education.md) by Grok3 (&nbsp; 2025-02-23)

* [AI peer-review prompt with RAG v2](ai-peer-review-prompt-with-rag-v2.md#?target=_blank) &nbsp; (2025-02-02)

* [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-21)

* [AI system prompting to leverage RAG](ai-system-prompting-to-leverage-rag.md#?target=_blank) &nbsp; (2025-01-13)

* [Neutrality vs biases for chatbots](neutrality-vs-biases-for-chatbots.md#?target=_blank) &nbsp; (2025-01-04)

* [Chatting with AleX the chatbot ](chatting-with-alex-the-chatbot.md#?target=_blank) &nbsp; (2025-01-04)

* [The system prompt alchemy](the-system-prompt-alchemy.md#?target=_blank) &nbsp; (2025-01-04)

* [ChatGPT vs human real reasoning](chatgpt-vs-human-real-reasoning.md?target=_blank) &nbsp; (2024-11-28)

* [Dammi sei parole a caso](dammi-sei-parole-a-caso.md?target=_blank) &nbsp; (2024-12-25)

* [Il problema sei tu, non l'AI](il-problema-sei-tu-non-l-AI.md?target=_blank) &nbsp; (2024-12-13)

* [Manipulation of a chatbot](manipulation-of-a-chatbot.md?target=_blank) &nbsp; (2024-11-18)

+

## Copyright

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

