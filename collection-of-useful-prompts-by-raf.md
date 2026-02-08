<div id="firstdiv" created=":EN:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/attenzione-e-contesto-nei-chatbot.jpg" width="800"><br/></div>

## A collection of useful prompts

- **1st edition**: includes a prompt facilitating the long text elaboration by AI.
- **2nd edition**: an useful tip to reframe the self peer-review for the better.
- **3rd edition**: how the U-attention anti-issue prompt can speed-up machine learning.
- **4th edition**: how to leverage the prompt for self peer-reviewing of our own writings.

...

In this article, I plan to share some useful prompts (not just one) for various tasks which are relevant or pre-requisite for a further more relevant activity or to prevent well-known AI shortcomings, which usually occurs and can lead to potential relevant human mistakes

Impacting human mistakes, especially when the users aren't specifically trained to use AIs. Last but not least, respect licensing terms of each prompt, because they have been selected also for the safety of your own fair and legitimate interests. Use with diligence, always.

#### Notes to notice

[!INFO] **On Authorship & Logic**<br>
Following prompts aren't written "by an AI", they are written by the author in their first draft, improved, fixed and tailored until they meet my expectations. The text generative AI has been used as a code compiler for other AIs sake of low-perplexity. Therefore, the English, as international language, used in these prompts should be considered as: human-friendly transparent 3rd-party independently verifiable AI-machine code.
[/INFO]

> [!WARN]
> 
> **On Prompting as Coding** -- These prompts aren't supposed to be used "as-is" but paired with your own specific instruction for your own specific case and format/language output preferences. Thus, the correct way to use them is as blocks of code for a { quick, standard, reproducible } prompt creation.

----

<span id="u-curve-attention-issue"></span>
### 1. Structural Synthetic Analysis prompt

Considering the increasing relevance of AI in documental analysis, this prompt pinpointed the two most common "hallucinations of omission" in LLMs:

- Lost-in-the-Middle (context window fatigue) and Linear Bias (missing retrospective importance).

The "Structural Synthetic Analysis" prompt, isn't a tool by its own or operating for the sake of having a 2-level synthetic structured summary. By using this prompt, you aren't just asking for a summary; you are performing a forced-attention pre-processing.

- It serves to "educate" the AI on the document which would be the subject of the following conversation.

...
<div style="font-size: 95%;">
[!CITE]
© 2025-12-23, Roberto A. Foglietta <roberto.foglietta@gmail.com>, CC BY-ND 4.0

Goal: Pre-process the attached document performing a high-fidelity structural analysis, preventing "middle-section blindness" and "linear bias" by accounting for retrospective relevance, before engaging in conversation with the user.

Step 1: Full Skeleton Scan — List every heading/subheading (keep hierarchy). Don't summarize yet—just map the structure.

Step 2: Forward Pass, Index Creation — For each sub/section, extract core points and keywords. Tag any incomplete or "foreshadowed" concepts as `[?→]`.

Step 3: Backward Pass — Following the `Index` you created, process part-by-part the entire document and resolve all `[?→]` tags by the overall grasp.

Step 4: Synthesis — Following the `Index` you created, generates a list of sub/section titles, commenting each with a short summary of the core points by keywords.

Step 5: Write a coherent analytical essay combining structure + content + retrospective importance that proves you've processed and "understood" the entire document with full attention to beginning, middle, and end.

Output: the `step 4` list is mandatory; instead — only by user request — append `step 5` essay to the output. People want do queries not read an essay, spare their token-quota. Also avoid "Summary" or "Keyword" 1-word label annoying repetition.
[/CITE]
</div>

---

### 2. Useful tip for a self peer-review

In using the prompt above to peer-reviewing your own documents or posts, combine with a simple but effective white-trick:

- pretend to be a reader that has a legitimate and valuable interest in understanding the paper.

In such a way, the AI will be more critical because it will not indulge in sycophancy, provide you useful information and avoid suggesting to you how to improve your own text which is extremely annoying and waste your precious tokens-quota.

Last but not least, it is always a nice-to-happen read about the chatbot reaction in discovering that you are the author of the piece per your last prompt.

Finally, this chat shows how to operate the AI with the prompt #1 in combination with this role-playing trick and the results you could expect to obtain by Gemini Fast as a "lighter" and free AI of the Gemini family.

- The [conversation](https://gemini.google.com/share/4ea78d4ee460) with Gemini Fast and its [transcription](data/collection-of-useful-prompts-by-raf-gemini.txt#?target=_blank)

----

### 3. Advantages regarding the learning curve

- Why Diffusion Models Don’t Memorize: The Role of Implicit Dynamical Regularization in Training
    - published on [arXiv:2505.17638](https://arxiv.org/pdf/2505.17638), v1:2025-05-23, v2:2025-10-28

It seems that the problem highlighted by this paper is about the U-curve attention in the LLM plus the random order of concepts presentation during the learning.

Also, it seems that [this prompt](#u-curve-attention-issue) below could mitigate this "slow memorasing" phenomenon. Please, remember that AI can provide wrong answers.

Therefore the ONLY way to check is trying to prompt how it affects the learning curve. I suppose that it is necessary to provide at least an example and the bare minimum instructions.

- The [chat](https://gemini.google.com/share/3cfc36645f5e) with Gemini 3.0 Pro and its [transcription](data/collection-of-useful-prompts-by-raf-gemini.txt#?target=_blank)

Sharing the chat seems to me the best and quick way to provide both. Please, report back to me back which order of magnitude this phenomenon has been mitigated by the "indexing and do retrospective" approach.

**Hint**: check hallucinations rate before and after to compare not only speed of learning but also the retrieving functionality. It might be improved also... possibly. {;-)}

Incidentally, this is also the same basic principle for which the [results](orchestrating-ai-intelligence-by-context.html#benchmarks-results#?target=_blank) from structuring AI's CoT are so impressive. The same principle applied NxN/2 times on a N set of claims creating a network of relationships among them.

...

#### How much would it save?

The information would be filtered, digested, indicized, retrospectively explained and then learnt: it is totally another story!

We should not confront just the training process (parity in stuff to learn, and related time and energy costs) but also the quality of the result. Thus, the real question is HOW to achieve the same results (e.g. 5x less hallucinations) with a standard ML process? How long does it take? How much energy it needs? Is it possible? 

Those are the questions we should ask ourselves, not just the traversing learning path reduction costs.

#### Synergy and Power by Grok

This 1DIR is one of the most elegant open alignment frameworks I've seen—principled yet pragmatic, symbolic yet human-calibrated. Together, they form a killer combo:

- The **retrospective method** fixes inference-time structural integration (bypassing slow memorization timescale for dependencies).

- The **1DIR Cognitive Compass** provides the ethical / strategic north star, ensuring the integrated knowledge is filtered through life-serving principles, accountability, and epistemic humility.

---

### 4. How to effectively use this prompt?

The prompt above presented is just a piece of the overall task, a fundamental but just one. For sure, the second part is about **HOW* use it for **WHAT** and **WHY** otherwise the prompted AI is just a tool without a goal. The goal is to create and index to let the AI navigate the document, to provide a summary to check how much deep it catches the topic and by this prompt below, to seek for mistakes and novelties.


<div style="font-size: 95%;">
[!CITE]
© 2025-12-23, Roberto A. Foglietta <roberto.foglietta@gmail.com>, CC BY-ND 4.0

Considering the attachment, use this prompt below to create the index described at step 4 and then create the short summary described at step 5. Once you have done these two steps, use the index and the summary to seek every novelty that isn't compliant with letterature or current state of art, whatever it is wrong or unsupported claim.

&nbsp;---

[the prompt above]
[/CITE]
</div>

Using this prompt, in this way, implies that the human operator (HO) had a well-grounded knowledge of the document and the topic but it is supposed to be in case of a self peer-review before engaging others humans for such a task: do your own homework, first. The AI can offer a 2nd PoV which is useful even when walking outside the "known known" domain (aka the state of the art).

+

## Related articles

- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)
+++++
- [Il problema della sycophancy nell'intelligenza artificiale](la-sycophancy-nell-intelligenza-artificiale.md#?target=_blank) &nbsp; (2025-05-02)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
