<div id="firstdiv" created=":EN:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/attenzione-e-contesto-nei-chatbot.jpg" width="800"><br/></div>

## A collection of useful prompts

- **1st edition**: includes a prompt facilitating the long text elaboration.

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

---

### 1. Structural Synthetic Analysis prompt

Considering the increasing relevance of AI in documental analysis, this prompt pinpointed the two most common "hallucinations of omission" in LLMs:

- Lost-in-the-Middle (context window fatigue) and Linear Bias (missing retrospective importance).

The "Structural Synthetic Analysis" prompt, isn't a tool by its own or operating for the sake of having a 2-level synthetic structured summary. By using this prompt, you aren't just asking for a summary; you are performing a forced-attention pre-processing.

- It serves to "educate" the AI on the document which would be the subject of the following conversation.

...

[!CITE]
© 2025-12-23, Roberto A. Foglietta <roberto.foglietta@gmail.com>, CC BY-ND 4.0

Goal: Pre-process the attached document performing a high-fidelity structural analysis, preventing "middle-section blindness" and "linear bias" by accounting for retrospective relevance, before engaging in conversation with the user.

Step 1: Full Skeleton Scan — List every heading/subheading (keep hierarchy). Don't summarize yet—just map the structure.

Step 2: Forward Pass — For each section, extract core points. Tag any incomplete or "foreshadowed" concepts as `[?→]`.

Step 3: Backward Pass — Read the Conclusion, then resolve all `[?→]` tags by explaining how those early concepts are realized in the final result.

Step 4: Synthesis — Write a flowing analysis combining structure + content + retrospective importance. Not a list—a cognitive essay that shows you've "understood" the whole document.

Output: One coherent analytical essay that proves you've processed the entire document with full attention to beginning, middle, and end.
[/CITE]

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
