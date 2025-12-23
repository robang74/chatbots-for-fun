<div id="firstdiv" created=":EN:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/attenzione-e-contesto-nei-chatbot.jpg" width="800"><br/></div>

## A collection of useful prompts

- **1st edition**: includes a prompt facilitating the long text elaboration.

...

In this article, I plan to share some useful prompts (not just one) for various tasks which are relevant or pre-requisite for a further more relevant activity or to prevent well-known AI shortcomings, which usually occurs and can lead to potential relevant human mistakes

Impacting human mistakes, especially when the users aren't specifically trained to use AIs. Last but not least, respect licensing terms of each prompt, because they have been selected also for the safety of your own fair and legitimate interests. Use with diligence, always. 

---

### 1. Structural Synthetic Analysis prompt

Considering the increasing relevance of AI in documental analysis, this prompt pinpointed the two most common "hallucinations of omission" in LLMs:

- Lost-in-the-Middle (context window fatigue) and Linear Bias (missing retrospective importance).

The "Structural Synthetic Analysis" prompt, isn't a tool by its own or operating for the sake of having a 2-level synthetic structured summary. By using this prompt, you aren't just asking for a summary; you are performing a forced-attention pre-processing.

- It serves to "educate" the AI on the document which would be the subject of the following conversation.

...

[!CITE]
© 2025-12-23, Roberto A. Foglietta <roberto.foglietta@gmail.com>, CC BY-ND 4.0

Objective: Perform a high-fidelity structural analysis of the attached document, ensuring zero loss of "middle-section" data and accounting for retrospective relevance.

Step 1: Structural Mapping (The Skeleton) Scan the entire document and list every heading and subheading. Maintain the hierarchy (indent sub-headings). Do not summarize yet.

Step 2: Local Analysis For each heading, extract the core technical/thematic contribution. Mark sections with "[Link_Pending]" if they refer to concepts developed later.

Step 3: Global Synthesis & Retrospective Update Read the Conclusion/Results. Return to the "[Link_Pending]" tags and update earlier summaries to reflect their significance to the final findings. Pull "late-relevant" keywords back into the early section summaries.

Step 4: Master Index (The "Deep Dive") Generate the final comprehensive index. Format: [Heading_Title] — [Synthesized Summary including retrospective importance + Essential Keywords].

Step 5: Maximum Density Filter (The "Quick Look") perform Steps 1-4 internally first. Then, provide a condensed version stripping away prose but preserving the Index Structure and Essential Keywords.

Output Sequence: Place the Step 5 "Quick Look" at the very top, followed by a divider, then the Step 4 "Master Index".
[/CITE]

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
