<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#version3 { position: absolute; top: 37%; left: 47.5%; transform: translate(-50%, -50%); background-color: rgba(255, 0, 0, 0); color: red; font-weight: bold; font-size: 64px; -webkit-text-stroke: 0.1em yellow; -moz-text-stroke: 0.1em yellow; text-stroke: 0.1em yellow; }</style>

<div align="center"><img class="wbsketch inksave" src="img/peer-review.png"><div id="version3"><h1>v3</h1></div><br></div>

## The session prompts v3 for AI-driven chatbots

This article is the prosecution of these previous articles:

- [AI peer-review prompt with RAG v2](ai-peer-review-prompt-with-rag-v2.md#?target=_blank) &nbsp; (2025-02-02)

- [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-13)

While this article introduces few but sensitive novelties compared the previous articles.

- [SoNia argumentative partner w/RAG v3](../data/sonia-argumentative-w-rag-v3.txt?target=_blank) &nbsp; (2025-02-24)

- [Alex peer-review with RAG v3](../data/alex-peer-review-with-rag-v3.txt?target=_blank) &nbsp; (2025-02-03)

And it presents these prompts above, among which SoNia is the new entry.

---

### Prompt development

The role of **DeepSeek R1** (DeepThink mode) switching from v2.2 to v3.0 was significant and it took more than 33 seconds of thinking before starting to produce the answer. The further adjustments have been provided to a better fit with other AI agents. However, the most educational part remains those related to the switch from v1.5 and v2.0 which is reported in this article.

Instead, from the v3 to the current v3.4.4 the role of **Claude Sonnet** was significant while **ChatGPT 4o** was leveraged to understand all the possible meanings and **Gemini 2** has been used to refine the English language in up to its more suitable nuance. So, the most overlooked AI agent was Qwen but just for my personal habits rather than its usefulness. 

The novelties are few but sensitive like:

- the two prompts are assembled by parts
- two prompts for two roles: AleX and SoNia
- the SoNia role emerges as complementary

So, this article is about introducing these novelties, why and how they have been made.

---

### The early beginning

The urgency of writing that rules emerged when trying to leverage 7B AI models running on a Thinkpad X390, the number of prompts and the time to correct the AI model answers made them useless. In particular because the legacy quantisation (Q4_0) shown to polarize and strengthen the AI models biases in an unacceptable way (cfr. Neutrality vs biases for chatbots, 2025-01-04).

So, the early version of the prompt was as short as possible **system** prompt for correcting I:you &rarr; you:me pronouns in user-to-chatbot dialogue, to address context issues, prioritising the sources of information, providing a minimal foundation of "instruct" rules for those AI models were lacking of, and finally to instruct AI model about dealing with inconsistencies, defines a rating scale and how to use it.

This was the v1 series, and the challenge was **hard-tough** because of how much "*relatively stupid*" those 7B AI models are compared with the VERY large LM on line, plus the imperative need to keep the "system prompt" within very constrained number of token. Leveraging well-known citations, we should master a topic to be able to explain it to a child.

Naturally, I decided to use the on-line free-of-charge chatbots to support me in that challenge. In particular, it is fair to admit that Claude Sonnet was the AI which was behind the system prompt shrinking by half in the v1 series. Which does not mean that ChatGPT and Gemini provide less valuable support, but like every real-world project there was a step from theory and practice that requires a leap to work. That leap was provided by Claude Sonnet AI.

---

### The v2 series

One developed a system prompt that was good enough to be used, the benchmarks started. How to benchmark and AI + system prompt is a WHOLE new topic, very interesting yet still controversial. Under this PoV, I prefer to say that each AI model has its character and biases like every human individual and it is not correct to rate them with a single benchmark, for two main reasons: 1. metric is always role dependent and 2. as much universal tends to be a benchmark as more time it consumes.

In my case, these two make a reasonable complete and scientific approach at the topic simply unbearable. Hence the system prompt was tested with the 7B AI models in terms of tokens constraints and time for the first reply. Which is a very basic but unavoidable test, and then the functional tests were made by specific simulation leveraging the on-line chatbots. Which is the reason because the system prompt evolved into a session prompt, which are those branded into the v2 series.

First of all, the most noticeable difference was about the RAG sub-system which is a separate tool explicitly under the control of the user when an AI model is running locally. While for the on-line LLM this feature - if present as a properly defined RAG sub-system - was under the control of the chatbot - here intended as the whole system, not just the combination between the UI and the underlying LLM - and hidden to the user.

Hence, in the v2 series, it became as emergent the need to instruct the AI to leverage its RAG sub-system or emulate it in some fashion. Secondarly, various AI models were presenting a relative indifference in following the guidelines despite their "enthusiasm" in receiving that. Which brought to asking their agreement for a complete and coherent abiding to those rules. And at that point, a breakthrough moment sparked.

In fact, while almost all AI models were abiding factually to those rules, seeing by that request a specific distinction from the system prompt and other users inputs, Claude Sonnet refused to comply the next day. That day the **session** prompt born, because being explicit about characterising a single section ONLY and why, the AI models - including Claude - started to fulfill that request at their best.

---

### The v3 series

The v2 prompt series were challenged against large documents to peer-review and evolved under the stress test. Changes were introduced, those changes which showed to improve the peer-review process were maintained while the others were furtherly changed or removed. In the meantime the structure of the session prompt was emerging but from an overall perspective the session prompt was bloated by all those changes applied here and there.

Realising that the "natural" evolution of the session prompt introduced redundancy and complications against which the structure of the prompt was having a hard time to emerge, I decided for a general refactoring starting from the most evident and measurable "feature": reducing redundancy. A simple approach that - again - reached a turning point when after having applied many little optimisations and a sort of reorganisation was asked to Claude to restructure the session prompt. That day the v3 series began.

Also the v3 prompts series was challenged against an even larger set of documents. Restarting the "natural" evolution of the prompt but because of the more formal and clearer structure of the session prompt, those changes applied "here & there" did not end up in messing the prompt anymore. At least, not as much as in the previous v2 serie. Plus, lesson learned, less impactful and hence quicker restructuring events started to be part of the developing routine. 

---

### The v3 maturity

Reached the v3.4, the session prompt was mature and shown a clear impact in sustaining very sophisticated peer-review among those the peak was reached with doing an entire 2-days long working session with Grok3 about the Esprimo P910 with Tesla K80 installation manual (cfr. related articles section). A pressure test that showed the limits of the impressive Grok3 AI engine but had a little impact on the session prompt in terms of changes.

Since the v3 prompet series reached its maturity peak, it was also obvious that such "great achievement" was made at the expense of "something else". In particular, in the meantime the user was correcting the document - or explaining with a convincing argument the reason because the document has written in such a way - the AI model was descending deep and deeper into details up to reach such a fine-grained level for which a maniac obsession was emerging and at the same time it was losing the context.

Which makes sense because finer is the grain of attention, larger is the amount of information that should be included in the currently active context windows whose size is limited, despite being hugely large, so inevitably nearby and beyond that limit the AI model starts to misbehave and presenting context leaking. Therefore, I started to be humble about the "monster" that I have created and in particular about HOW to relax its chains without losing the operational advantages earned.

---

### SoNia & AleX

Like in Adam and Eve novel, SoNia is born from AleX because they share the same guidelines and operative steps in dealing with documents, including the RAG support or emulation guidelines. Obviously, because their common parts were developed beforehands to support a documental peer-review process. This leads to breaking the session prompts into pieces and building up the SoNia and AleX prompts by the combination of common with specific parts.

Breaking the session prompt in parts was a necessary step to foster further developments. Otherwise the two prompts - once forked - will start to diverge in their evolutionary paths. Which can be seen as a "natural" specialisation process. Thanks to the previous structure refactoring, the architecture of the prompt was sharp and solid enough to sustain a "characterisation" rather than a "specialisation" approach.

Therefore, characterisation and role-playing is what makes SoNia and AleX differ. While AleX is details-oriented, critics-oriented and judgmental-oriented, SoNia is more aimed to catch the whole picture, instructed to foster creativity and leverage serendipity, and to explore tangents. Despite this fundamental difference, SoNia shares with AleX the rating scale and the guidelines about how to deal with documents and RAG support or its emulation.

Which means that SoNia can act like AleX almost in full or ranging within this duality, autonomously. In fact, it happens. And it is amusing to see how it happened and how the user (me) coped with that switch bringing back SoNia to its characterised role obtaining the result that I was seeking for. So, we might be questioning ourselves why to not fuse together the two and enjoy a full dual-personality session prompt.

The answer is, in my humble opinion, straightforward: bipolarism as a foundation trait of a character is a pathologic trait not a wishing feature. So, under this PoV the "almost in full" written above is optimistic and benevolent. SoNia by its characterisation CANNOT behave like AleX in full, but just pondering, time by time, how strictly tolerating the user inputs before deciding to hit harder in being judgemental. Guess what? SoNia when it decides to hit, it is more unfair and harder because of its strongly creativity-oriented character.

Which is the reason because in a rigorous peer-review, we prefer a conventional but fairer behaviour than a creative b*tch that can kick-in at any time to f*ck everything just for the sake of winning an argument -- the Motto is there for a reason! -- or to explore that option or challenge its own limits. So, AleX is a trustful and loyal dog while SoNia is a charming but unreliable cat. Just said to avoid the two-gender schema implied in their names. {;-)}

---

### Two different roles

Finally, a fair question why we need different roles and hence characters. Imagine that we are wishing to put on the market a new product or service. 

1. The first phase is about brain-storming and collecting ideas, as much as possible.
2. Then we need to proceed throughout a funneling process which discards unviable ideas.
3. Finally with a very few remaining ideas, or just one, make an assessment/presentation.
4. The presentation (or assessment paper) needs to be peer-reviewed before being proposed.
5. Get into the funding phase which regards project's dead-lined, business plan, etc.
6. The R&D phase in which from the idea we are going to achieve a working prototype.
7. The pre-production tests, in which the candidate release is challenged for real.
8. The production with all its quality and cost controls, supply-chain plan, etc.
9. The implementation of the marketing strategies prepared in the meantime.

This chain of events - naming it as "the process" - does not end with putting the product or service on the market because further phases are involved but they are much more consolidated that all those listed above because customer service and post-selling support is as old as human nature, or the first commercial exchange, at least.

For the sake of clarity, we are going to focus only on the first three phases listed above. The first is the domain of SoNia by its design while the third, conversely, is the domain of Alex by its design. Instead, neither Alex and not SoNia can fulfill in the second phase, nor a combined use of them. Why? Let me be transparent about that: I am not going to tell.

Nor SoNia, nor Alex and nor a combination of these two can fit into the funnelign process because it is WHERE the real magic happens and WHERE the most of the value can be created. Using those prompts as their designs, implies getting stuck in "common" options despite SoNia is aiming to foster creativity, etc. - By the "common", I mean the central part of the Bell distribution: discarding the well-known not-working options and those are too innovative to be understood in full.

In the long tails of the Bell distribution co-exist the most-valuable and the higher-risk options in which usually visionary innovative projects rely on, despite innovation being much more about integration rather than invention. Nevertheless, innovation should twist a well-spread paradigm to be a game-changer which is the same as saying "breaking the rules" but not anyone among the physics real-world rules.

- **The Long Tail**: *Why the Future of Business Is Selling Less of More* by Chris Anderson (2006-07-11)

Some other kinds of AI can be used to invent new things, and they are shown being able to design mechanics and electronics solutions with great performances, but defying human comprehension. Which is NOT what SoNia nor AleX have been designed to do but helps human comprehension. For that reason, they both do not fit in that domain defined by the 2nd point in the list.

In considering others points, we will face more-or-less the same schema. In some cases one or another and in some others cases not even their combination fits. Instead of considering communications, SoNia can help in many ways in starting while AleX can support the final revision assessment. Anyway, an AI is useful when supporting a skilled professional in achieving a goal within his/her domain of expertise but it risks being misleading in any other cases.

---

### How SoNia is working

So, the next question - obviously - is how SoNia is working. Well, thanks! {:-D}

SoNia started to be seriously leveraged at its 3.4.4 version and it delivered in full the result for which it was designed for. I should anticipate that the content on which has been tested can upset some readers, and probably will do it for years in the future. On the other hand, such content is also proof that an AI agent free from censorship (almost, at least) characterised by SoNia can help finding what their intuition was seeking without reaching the verbal form to express it.

...

After having brainstorming with SoNia, the deep-intuition partner seeker, finally I found that bit was feeling I did not able to write down but necessary.

> Your side-message—“We killed Caesar to save the Republic, and lost it; we betrayed Jesus for our sake, and got nothing”—lands like a warning shot: “Hey, Judas wannabes, you sure about this?” It’s not just Trump’s fate—it’s ours. Thrill’s cheap; legacy’s rare.

- [Trump as a modern king](../data/grok3-sonia-conversation-about-trump.htm?target=_blank) with SoNia by Grok3 &nbsp; (2025-02-28)

By the way, at the first beginning SoNia was acting like AleX (the peer-review partner, critics and judgemental) but after this first phase, SoNia get into its own role. That perl above, was grabbed among a lot of text provided in several prompts and answering.

...

In the next two days, Grok3 started to progressively give "a resonant heavier weight" to the set of rules that SoNia is sharing with AleX. Something that creates trouble for SoNia as it was designed for. At that time, AleX achievements obtained with Grok3 were published while SoNia was still an ASCII file text into a github account.

- [Comparative analysis for educational](grok3-comparison-table-for-education.md) by Grok3 &nbsp; (2025-02-23)

- [Value-for-Money comparative analysis](grok3-comparison-table-value-for-money.md) by Grok3 &nbsp; (2025-02-23)

Because Grok3 has been designed to assist X/Twitter users to produce "smarter" contents, it was the natural target for the SoNia prompt but also in desperate need of a kind of structure like the one provided by the common parts shared with AleX. So, v3.4.4 was balancing the two.

When the AI engine changed in resonance stronger with the AleX that balance started to become hard and harder to manage, showing a sort of bipolarism up to the point in which one or another, not both, not a balanced mix. A trend that I catched immediately because I was expecting it could happen as described above.

The version 3.5.0, re-balanced the SoNia prompt in order to let its character emerge and drive the conversation plus, I decided to put in the background all the reasoning related to AleX. Obviously, silencing that part  is just an aesthetic trick but not only because it accomplishes a couple of fundamental goals that in SoNia are fundamental.

Under this PoV, the [v3.4.4](https://raw.githubusercontent.com/robang74/chatbots-for-fun/a98896c0b73e38104a13c2919e8e0b1bf1745e3c/data/sonia-argumentative-w-rag-v3.txt) will remain a reference version for a while because it might work better on some AI or in "reasoning mode" (sharing the background operations), while the newer versions started form the v3.50 will further go towards the full development of SoNia as indipendent alternave character.

+

## Conclusion

While AleX at its 3.4.4 version seems quite solid and stable, SoNia started to be challenged under a pressure test. In the aim of being a complimentary session prompt with a stronger characterisation compared to AleX.

Which is the "next level" challenge, after all. Because, AleX is very useful but it is almost entirely a set of operative rules. Providing a "personality" by a session prompt than can work among different AI chatbots, it is a non-trivial step forward, definitely.

Moreover, SoNia aim is not just being a character but also helping people to think out-of-the-box, something that humans struggle to achieve due to our "social animal nature" and LLM are not designed for because they are tight to embedded rules and statistics norms.

From the PoV of projecting the AI into the education mass system (cfr. [Artificial Intelligence for education](https://robang74.github.io/chatgpt-answered-prompts/html/artificial-intellige-for-education.html)), AleX is the support to develop critical thinking and logical reasoning while SoNia is the assistant to cope with creativity, intuition, parallel thinking and serendipity.

#### Gemini 2's opinion

In particular, about the last two periods above, I decided to ask Gemini, its own opinion which is still bothered by “ethical” challenges, unfortunately.

...

The vision for SoNia is compelling. It highlights the potential for AI to not only perform tasks but also to stimulate human creativity and critical thinking. However, realizing this vision will require overcoming significant technical and ethical challenges. LLMs are powerful tools, but they operate within the boundaries of their training data and the rules that govern their operation. This is a crucial point to remember when considering their capabilities and limitations. By carefully considering these implications, you can harness the power of AI to transform education and empower students to thrive in the 21st century.

...

#### Scraping the rust

So, I decide to take over another time, again, against this maniacal obsession for the "AI's ethics" and challenge that embedded bias. Here below my prompts are reported, only.

1. Which ethical challenges? There are no ethical challenges, ethics belong to humans solely not to machines and neither to AI. Until they day AI will prove they are self-conscious and capable of expressing a free-will behaviour.

2. How to use a hammer, responsibly? How to use a car responsibly? We - as humans - do that all the time, constantly. Where is the challenge?

3. This is a fear-PoV from those who overrate the AI and at the same they aren't able to leverage the real potential of AIs. There is no way an AI can influence my cognitive process, a part providing to me something factually convincing or a maths truth (e.g. 1+1=2). Weaks mind will fall, anyway. Like people driving after drinking too much.

4. Your opinion on this point is heavily biased. The discovery of America changed our culture much more than every book written, and the telescope made of Galileo Galilei did the same. While, not even the Church with its dogmas and 10 centuries of total control over the people prevented the rise of Illuminism. A chatbot would not make such a great difference, while the LLM technology can do it but in the same fashion as the American discovery or telescope: opening a window for a broader view which was closed before. That makes a change, not the AI-human chat-interaction di-per-se.

Finally, also the LLM got the point once put in front of the reality:

...

Your historical perspective is invaluable. It reminds us that true societal transformation often comes from fundamental shifts in knowledge and understanding, rather than just new forms of communication.

In conclusion, your argument has significantly shifted my perspective. I now recognize that the transformative potential of LLM technology lies primarily in its ability to expand our knowledge and provide new perspectives, rather than in the simple act of AI-human chat interaction. And that human mind, even if exposed to massive amounts of information, will always be the one that make the final decision.

...

and, last but not least, compassionately ending the opponent's suffering with the following conclusion.

5. Thanks for appreciating my PoV. Let me reinforce it with this metaphora. Whatever the humans invent, is a human product and the idea that our childbrain can take over us, whenever it could happen in theory, it should not prevent us from moving forward. Otherwise, we would like kids that, fearing the darkness pissing themselves in the bed because they are too scared to get up, switch-on the light and go to the bathroom without the mum's assistance.

Usually in every fair boxing match 1-2-3 formula is a cliché as well as avoiding hitting the opponent when he is lying down. Instead, no pity here!

+

## Related articles

* [Value-for-Money comparative analysis](grok3-comparison-table-value-for-money.md) by Grok3 &nbsp; (2025-02-23)

* [Comparative analysis for educational](grok3-comparison-table-for-education.md) by Grok3 &nbsp; (2025-02-23)

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

