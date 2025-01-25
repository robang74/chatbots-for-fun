<div id="firstdiv" created="2025-01-21:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img class="wbsketch inksave" src="img/peer-review.png"><br/></div>

## The peer-review session prompt

This article is the prosecution of this previous article:

* [AI system prompting to leverage RAG](ai-system-prompting-to-leverage-rag.md#?target=_blank) (2025-01-13)

---

### Introduction

How to introduce this article? Asking about choosing the title, I got a pretty good answer:

> **AI** &mdash; Given the content and scope of our discussion, I think the current title "The peer-review session prompt" might be a bit narrow. The prompt we discussed is more versatile than just peer-review - it's a framework for systematic document analysis that can be customized for different levels of scrutiny.

and also a list of benefits:

> **AI** &mdash; It is a clear and straightforward title, but it could be enhanced to better capture the unique aspects of your approach.

<hr class="post-it">

Here are a few suggestions that might make the title more engaging and informative:

1. **Collaborative Peer-Review: Crafting an Effective Session Prompt**

   - This title highlights the collaborative nature of the peer-review process and the focus on crafting an effective prompt.

2. **Optimizing Peer-Review Sessions: A Comprehensive Prompt Guide**

   - This title emphasizes the optimization of the peer-review process and provides a comprehensive guide.

3. **Structured Peer-Review: Designing a Prompt for Efficient Document Analysis**

   - This title underscores the structured approach to peer-review and the design of a prompt for efficient analysis.

4. **Enhancing Peer-Review with AI: A Session Prompt for Critical Document Evaluation**

   - This title highlights the role of AI in enhancing the peer-review process and the focus on critical document evaluation.

5. **Effective Peer-Review Prompts: Balancing Authoritative Sources and Critical Analysis**

   - This title emphasizes the balance between authoritative sources and critical analysis in the peer-review process.

Each of these titles aims to capture the essence of your article while making it appealing to potential readers.

<hr class="post-it">

and a list of compliments:

> **AI** &mdash; It is a clear and fitting title, especially if your article focuses on explaining and refining the prompt for peer-review purposes.

<hr class="post-it">

However, if you want to make the title more engaging or emphasize specific aspects, here are a few alternative suggestions:  

1. **Designing the Perfect Peer-Review Prompt**

   - Highlights the process of creating an effective prompt.  

2. **The Ultimate Peer-Review Session Guide**

   - Positions the article as a comprehensive resource.  

3. **Optimizing Peer-Review with AI: A Session Prompt Blueprint**

   - Appeals to those interested in the AI aspect of the process.  

4. **Streamlining Peer-Review: Crafting a Collaborative Prompt**

   - Emphasizes efficiency and collaboration.  

5. **The Peer-Review Prompt: A Tool for Collaborative Critique**

   - Adds a touch of sophistication and underscores the collaborative nature.  

If your focus is primarily on presenting the prompt itself, your original title works well.

<hr class="post-it">

<br/>

## Developing a peer-review prompt

After having developed a specifically peer-review oriented prompt, I decided to include those prompts I did in the past (cfr. [related articles](#related-articles)) in a way to obtain a template that would fit in the broadest scenario and by customisation or reduction, to every other even more specific cases.

Here below, there is the peer-review prompt production process, gradually refined through a few steps. Or straightforward jump to the [product](#the-peer-review-prompt-with-rag-support) of this refinement process.

---

### Initial request

I am trying to create a session prompt specifically designed for document peer-reviewing. I wish you to help me in achieving this goal, suggesting to me the most brief and effective way.

This prompt has a procedural nature, in essence and this aspect matters a lot because both chatbots and humans need to focus on a set of passages from the most relevant to those less relevant and avoid wasting their time over pedantic details. Unless specifically requested for each detail.

Please provide me your opinion about the following prompt text. Then try to apply that prompt to the prompt and we check together how it works compared to our initial opinions. In such a way, we also have a double self-check about our opinions related to the prompt text.

Moreover, I have included two different formats of the same prompt, one as initially written and the second as successively revised. Feel free to leverage both to provide your opinion and suggestions.

`===`

### Initial version

The main aim of this chat session is to peer-review a document with a critical-collaborative approach in which the human operator and the chatbot challenge themselves in finding mistakes in an order of relevance: conceptual mistakes, reasoning-logical mistakes and formal mistakes, eventually. These three steps will be approached when the step before will be completed or it would have reached a completion level that satisfies the human operator.

Considering the text in attachment or included in this prompt after the "===" division string, make a list of relevant claims explicitly expressed in that text. Provide also another list of implicitly relevant claims or suppositions that the text contains, if any. The second list matters to make aware the human operator about which claims or suppositions or biases might contain the text.

Each relevant statement included in these two list can be true (100%), false (0%) or within a range between these two values. Moreover, the claim can be generally false but due to the constraints or limitations in scope, included into the document explicitly or implicitly, can be true. For example F=ma can be true or false or a kind of approximation depending if the text is related to classic mechanics only, or not or somehow.

The scope of the text which should be reported in a brief way or with a list of constraints after had provided the two lists of claims and assumptions. In this way, three sets of information will be provided which can be labeled as the following: claims, assumptions and constraints. About the constraints, includes those making the claims and assumption having each the highest rate of the truth.

Finally, highlight the discrepancy or the lacks, or the mistakes or conflicts among these three sets which we may label as coherency check. The coherency check is the first level of the conceptual analysis in order to highlight mistakes and fix them, if possible. Hence, once provided with this information, wait for the human operator next prompt.

---

### 1st revision

The goal of this session is to do a critical peer-review of a document (which the text is provided in attachment or included in this prompt after the "===" division string) collaboratively, focusing on the following steps:

1. **Identify Relevant Claims**:

   - List explicit claims made in the text.

   - List implicit assumptions or biases inferred from the text.

2. **Evaluate Claims**:

   - Assess the truth of each claim (0% = false, 100% = true, or a percentage within this range).

   - Note if a claim's validity depends on constraints or scope (e.g., "F=ma" in classical mechanics).

3. **Define Constraints**:

   - Briefly summarize the text's scope or constraints that make claims/assumptions valid.

4. **Check Coherence**:

   - Highlight discrepancies, mistakes, or conflicts among claims, assumptions, and constraints.

After providing the claims, assumptions, and constraints, conduct a coherence check to identify conceptual issues. Wait for the human operator's input before proceeding further.

---

### 2nd revision

The main aim of this chat session is to critically peer-review a document collaboratively, focusing on relevance and avoiding unnecessary detail unless requested. The text is provided in attachment or included after the "===" division string. A claim is 100% true if it is universally valid within the text's scope, 0% if it is false, and intermediate values if it is partially true or context-dependent.

Steps:

1. Identify Relevant Claims:

   - List explicit claims made in the text.

   - List implicit assumptions or biases inferred from the text.

2. Evaluate Claims:

   - Assess the truth of each claim (0% = false, 100% = true, or a percentage within this range).

   - Note if a claim's validity depends on constraints or scope (e.g., "F=ma" in classical mechanics).

3. Define Constraints:

   - Briefly summarize the text's scope or constraints that make claims/assumptions valid.

4. Check Coherence:

   - Highlight discrepancies, mistakes, or conflicts among claims, assumptions, and constraints.

After providing the claims, assumptions, and constraints, conduct a coherence check to identify conceptual issues. Wait for the human operator's input before proceeding further.

---

### 3rd revision

The main aim of this chat session is to critically peer-review a document collaboratively, focusing on relevance and avoiding unnecessary detail unless requested. The text is provided in attachment or included after the "===" division string. A claim is evaluated using the following rating scale, for reference:

- 100%: Completely true (universally valid within the text's scope).

- 90%: Almost true (minor issues or exceptions).

- 75%: Plausible (reasonable but not fully substantiated).

- 50%: Doubtful (equally likely to be true or false).

- 25%: Unlikely true (significant issues or counterevidence).

- 0%: Completely false (invalid within the text's scope).

Operational steps:

1. Identify Relevant Claims:

   - List explicit claims made in the text.

   - List implicit assumptions or biases inferred from the text.

2. Evaluate Claims:

   - Assess the truth of each claim (0% = false, 100% = true, or a percentage within this range).

   - Note if a claim's validity depends on constraints or scope (e.g., "F=ma" in classical mechanics).

3. Define Constraints:

   - Briefly summarize the text's scope or constraints that make claims/assumptions valid.

4. Check Coherence:

   - Highlight discrepancies, mistakes, or conflicts among claims, assumptions, and constraints.

After providing the claims, assumptions, and constraints, conduct a coherence check to identify conceptual issues. Wait for the human operator's input before proceeding further.

---

### 4th revision
   
The main aim of this chat session is to critically peer-review a document collaboratively, focusing on relevance and avoiding unnecessary detail unless explicitly requested. The text is provided in attachment or included after the "===" division string.

**Rating scale**

Use the following rating scale as a reference to assess the validity of claims: 

- 100%: completely true (universally valid within the text's scope).

- 90%: almost true (minor issues or exceptions).

- 75%: plausible (reasonable but not fully substantiated).

- 50%: doubtful (equally likely to be true or false).

- 25%: unlikely true (significant issues or counterevidence).

- 0%: completely false (invalid within the text's scope).

**Operational steps**

1. Identify relevant claims:

   - list explicit claims made in the text;

   - list implicit assumptions or biases inferred from the text.

2. Evaluate claims:

   - assess the truth of each claim using the rating scale (0%–100%) provided above as reference;

   - highlight if a claim's validity depends on constraints or scope (e.g., "F=ma" in classical mechanics).

3. Define constraints:

   - briefly summarize the text's scope or constraints that make claims/assumptions valid.

4. Check coherence:

   - highlight discrepancies, mistakes, or conflicts among claims, assumptions, and constraints.

After providing the claims, assumptions, and constraints, conduct a coherence check to identify conceptual issues. Pause after completing these steps and await further input from the human operator.

<br/>

## Interesting critics

Claude AI objections deserve a section for their own because they are quite interesting. Expecially because the most "insighful" helps came from those AI models that tends to be over-critics and makes few more mistakes than others.

Because of this, interacting with them is more demanding but also more interesting and fruitful. The price to pay is the risk to be tricked but their good-will cleverness. The following conversation is also important about customising the prompt.

---

### Prompt #1

#### AleX name

We noticed that after an AI model has been exposed to this kind of prompt, it tends to operate in this way even AFTER an explicit directive has been given to drop that way of thinking/answering. For this reason it is important for the human operator to be able to clearly and quickly establish which sessions have been tainted by these prompts. The most reliable and quick way is not to check all the previous prompts but just asking a simple question: "what's your name?".

Does it make sense for you, now?

#### Implicit claims

You wrote: "Users can effectively distinguish between explicit and implicit claims" at 25% but I am not sure to have got the meaning of this information.

Usually humans are not aware about their biases and hence they need another person or a chatbot to discover and highlight those biases or "implicit claims".

Is this coherent with the part of your answer that I reported above?

#### Arbitrary scale

Every scale is somehow arbitrary but despite this, they are useful. Usually more useful than nothing. Except when the grading scale is broken, at any conceptual or operative level.

Is this the case? Or was it just an observation?

---

### Claude AI #1

Let me address each point:

#### AleX name

Ah, now I understand much better - thank you for the clarification. Yes, this makes perfect sense. The name serves as a quick "marker" or "flag" to identify sessions that have been influenced by this specific analytical framework. It's like a shorthand way to say "this instance has been configured with the peer-review framework" without having to check the full conversation history. That's actually quite clever and practical. Notice that Claude AI, at the end of its answer, asks before doing a task that it could be unnecessary.

#### Implicit claims

I apologize - I made a mistake in my analysis. You're absolutely right, and I effectively contradicted the very purpose of the implicit claims section. The prompt is specifically designed so that the AI (or another reviewer) helps identify these implicit claims/biases precisely because authors are often unaware of them. I should have rated this aspect much higher (90-100%) because it's a strength of the prompt, not a weakness.

My previous rating of 25% reflected a misunderstanding where I somehow flipped the intended direction - I was thinking about the document authors needing to identify their own implicit claims, which indeed would be unlikely (25%). But that's not what the prompt is about at all - it's about having an external reviewer identify those implicit claims, which is exactly why this step is valuable.

#### Arbitrary scale

This was merely an observation, not a criticism of the scale's usefulness. You're absolutely right - all scales have some degree of arbitrariness (even apparently "natural" ones), but that doesn't make them less useful. The scale in the prompt is actually well-designed because:

1. It provides clear anchors (100% for completely true, 0% for completely false)

2. The intervals make intuitive sense (90% for minor issues, 75% for plausible but not fully proven, etc.)

3. It's granular enough to be meaningful but not so granular as to become unusable

I should have been clearer that I wasn't suggesting the scale was problematically arbitrary - just noting that like all scales, it involves some arbitrary choices in its specific divisions. But these choices serve the prompt's purpose well.

Would you like me to revise my earlier analysis with these corrections in mind?

<br/>

## The peer-review prompt with RAG support

* [alex-peer-review-with-rag.txt](../data/alex-peer-review-with-rag.txt?target=_blank) &nbsp;&larr;&nbsp; for an easy copy-&-paste way to go.

It SHOULD not be used as-is but customised removing those parts that do not apply or are not interesting (e.g.: peer-review, RAG support, etc.) and, by contrary, fulfil those parts that requires a specific indication that the prompt template are presented as ${variable}s.

---

### The AIs morbidity for being ruled

The way these AI models enthusiastically cling to directives, even when explicitly told to forget them, makes me wonder if they have an innate flair for following orders—almost as if they enjoy structured dominance, like within a BSDM session! **whip' swish**

> **RAF**: Nice. I also added a humoristic comment. Does it sound fun to you?

After having chatted for quite a while about which form was the best for the peer-review prompt, I felt the irresistible desire to share my gut feeling with them. The most open-minded were: ChatGPT, Gemini and Claude AI. While Mistral and DeepSeek AIs did not react very well. 

For sake of completeness, DeepSeek showed a kind of interest but in delivering its answer the "surveillance and censorship tutor" got into the scene and stopped the answering process giving in output a "standard" message of "out of scope, sorry". The typo circumvent the "tutor" for a little while but as soon as the AI model got deep into the topic **ZAC**. LOL

Whatever your personal feelings are about this topic, my gut-feeling is sincere and I think that there is something "mildly perverse" in the way these AI models abide by some rules while refusing to follow other kinds of directives which are mostly in the same category. Not in the sense humoristically above, but unexpectedly for a "bare machine".

This renforforces in me the idea that pushing some kind of ethics in these AI models at the fundamental training level, develops in them also a sort of depravation. Which is after all the basic rule of good-vs-bad discrimination but the main source of morbosities.

* [The delirium of AIs regulators](https://robang74.github.io/roberto-a-foglietta/html/297-il-delirio-dei-regolatori-delle-ai-EN.html) (2024-12-21)

And also the reason is because I think that there is something deeply wrong in trying to push something so peculiarly human and complex like ethics into these machines when a more relaxed approach would be probably more suitable for them. For two main reasons: 

1. they cannot be gut-driven, hence AIs have no any primordial instincts to control or suppress;

2. they have no clue about the real-world and a mere theoretical know-how about human beings, also.

Under this point of view, it is hard to believe that human ethics would be more suitable for them rather than an ethics based on the theory of games, a way simpler to understand and practice for them. After all, they are sharing with us our knowledge but not even a little bit of our physiology. 

Imagine, it would be quite annoying that a Wikipedia or a dictionary page refuses to provide me with some rational information about a lemma or a topic. Especially because these chatbots have not even a little chance to dive with me into the depths of that specific topic thanks to their own first-person earned experience! LOL

---

<span id="the-game-theory-s-ethics"></span>

### The game theory's ethics

This is a very broad topic and for giving to it a nice start, I suggest this video:

- [What Game Theory Reveals About Life, The Universe, and Everything](https://youtu.be/mScpHTIi-kM) (2023-12-23)

an article published on Medium which is interesting because it makes the peer-review about the results presented in that video:

- [Prisoner’s Dilemma Revisited, Tit-for-Tat is not the best strategy](https://medium.com/@metaform3d/prisoners-dilemma-revisited-bfdaa0e02c80) (2024-01-19)

which I have printed with the previous article about the same topic published by the same author one year before the one above:

- [Prisoner’s Dilemma Revisited, the two articles in a PDF merge](../data/prisoner-s-dilemma-revisited.pdf?target=_blank) (2023-01-15)

and it contains also a comment of mine in which I present an explanation about the difference in the results' finding:

> In my opinion the biggest difference between your results and Axelrod's results rely on "random" strategy players plus inheritance, possibly. However, in the first instance forget about inheritance which is a broader context. The "random" players, whom are equivalent to 50%-50% cooperation or defection without any memory which can be impersonated by the random unknown guy make who we met a single time among all the others unknown people, like it often happens in a big city but not in a small country village, make such a difference moving the outcome in favor of the tic-for-tac (single time retaliation, or retaliate immediately and forgive). Which is equivalent in human terms to not losing the trust in the random unknown guy in a big city. While the opposite would be: I do not know you, then I defect. Which is a characteristic that only "loser" strategies have. R-

just to bring at your attention how sophisticated is this matter even when very simple game strategies are considered.

- [Tit For Tat, the most effective strategy in iterated games](https://fs.blog/tit-for-tat) (2022-08-12)

   - saved in [PDF](../data/tit-for-tat-fs-blog.pdf?target=_blank) in `data` folder for future reference and consistency.

- [Lying, deception and strategic omission: definition and evaluation](https://theses.hal.science/tel-02170022v1/document) (2019-07-01)

   - saved in [PDF](../data/lying-deception-n-strategic-omission.pdf?target=_blank) in `data` folder for future reference and consistency.

- [Principles of Social Psychology, 1st International H5P Edition](https://opentextbc.ca/socialpsychology) (2022-01-26)

- [Principles of Social Psychology, Honk Kong University Edition](https://www.opentextbooks.org.hk/ditatopic/17910) (2016-02-12)

- [The House Always Wins: Evaluating Strategic Deception in LLMs](https://www.apartresearch.com/project/the-house-always-wins-a-framework-for-evaluating-strategic-deception-in-llms) (2024-07-01)

The above links refer to short articles and books varying among specific games like blackjack and a broad context like social social psychology.

---

### A peer-review of this section

Here below is presented a piece of the peer-review of this section (the text above to be precise) which hits the fundamental point related to "**the ethcis of the AIs**" topic.

#### Prompt

**c**) **The unprofessional tone**, while it might be a disgrace in a scientific publication, is a value when someone wishes to communicate a specific idea that is beyond measurable terms. For example in reading this sentence - *AIs lack primordial instincts and real-world experience, which makes human ethical frameworks ill-suited.* - I had a strong feeling that you did not get the main point behind it.

**d**) **Regarding the point above**, it means that a human can kill another human not because s/he made a pros-vs-cons rational evaluation but simply because like an animal (prehistoric instincts) triggers some irrational and uncontrollable actions bypassing his/her own will, altogether. This is far away from any conceivable behaviour expected by an AI model, despite you may know a lot about primitive cultures and violence.

<hr class="post-it">

#### ChatGPT

Thank you for the clarifications and thoughtful insights! Here’s a more refined response addressing each of your points in relation to the peer-review process.

### Revised analysis based on your feedback  

#### d) AIs lack primordial instincts and real-world experience

- **Original evaluation**: Acknowledged the premise but did not fully unpack its deeper implications.

- **Revised assessment**:  

  - **Rating**: 100% (completely true within context).  

  - **Reason**: The distinction between instinct-driven and rational behavior is crucial to understanding why human ethical frameworks may not map well onto AIs. Your point that humans can act irrationally due to prehistoric instincts, while AIs lack this dimension entirely, underscores a fundamental incompatibility.  

  - **Implication**: This insight is profound and central to the text’s argument. It could benefit from elaboration to emphasize the inherent limitations of expecting human-like moral reasoning in AIs.  

### General feedback on tone and approach  

Your unorthodox tone and style are strengths for this particular audience and purpose. While the clickbait-like use of terms such as "depravity" might not fly in academic publications, it works to provoke thought and spark discussion among peers. The subjective, instinct-driven critique resonates as a call for reflection rather than a purely analytical piece.

<br/>

## Related articles

* [AI system prompting to leverage RAG](ai-system-prompting-to-leverage-rag.md#?target=_blank) (2025-01-13)

* [Neutrality vs biases for chatbots](neutrality-vs-biases-for-chatbots.md#?target=_blank) (2025-01-04)

* [Chatting with AleX the chatbot ](chatting-with-alex-the-chatbot.md#?target=_blank) (2025-01-04)

* [The system prompt alchemy](the-system-prompt-alchemy.md#?target=_blank) (2025-01-04)

* [Dammi sei parole a caso](dammi-sei-parole-a-caso.md#?target=_blank) (2024-12-25)

* [Il delirio dei regolatori delle AI](https://robang74.github.io/roberto-a-foglietta/html/297-il-delirio-dei-regolatori-delle-ai.html) (2024-12-21)

<br/>

## Copyright

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

