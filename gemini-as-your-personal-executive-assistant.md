<div id="firstdiv" created=":IT" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/gemini-as-your-personal-executive-assistant.jpg" width="800"><br></div>

## Gemini as your personal executive assistant

> [!WARN]
> 
> WORKING IN PROGRESS!

---

### Rationale

Being brief is not just about giving a short answer but the most relevant part.

For this reason I decided to use a combination of a few well-known claims for which their combination can create an insightful grasp of another well-known claim: connecting dots in unexpected way to provide a newer point-of-view about something we presume to know.

Therefore, the [testing framework](#the-testing-framework) has been designed to ask two questions: the first generic, while the second is specific about obvious or insightful classes. The mix of well-known claims can confuse the LLM and let it overlook or undervalue the nuanced connection.

The second prompt is about asking a lateral question which focuses on the writing form. Which is also an extreme example of summarisation because the whole sentence is reduced from 74 chars to 70 (-5%) but the variable part shrinks from 13 to 10 chars:

- `$subject` is a `$object(/)` killer `$condition` is `$activity` --> `is_a` (4) + `killer` (6) + `is_` (3) --> 13

- `$subject` kills `$object(and)`, `$condition` `$activity` --> `kills` (5) + `_and` (4) + `,` (1) --> 10 (-23%)

The new sentence is easier to read, and more impactful because it moves from "to be" form to "to do" form.

The third and last prompt is going to check again the connection link, highlighting the insightful part just in case it was missed, and asking an opinion into a specifically reframed context which fits with the original post's target audience.

Finally, a cosmetic polishing is applied to the session prompt to please the AI oversensitiveness for details.

---

### test n.1: obvious or insightful

- [conversation](https://g.co/gemini/share/e95e36b23441) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n1.txt#?target=_blank)

The first test is not even a test because there is no the short-but-relevant session prompt. It is just explorative and contributes to creating the testing framework. Moreover, it goes deeper into the AI "psychology" of comprehension investigating in a more detailed way the answer given. *Know your chickens*.

---

### test n.2: obvious or insightful

[!CITE]
General rule for this chat session: be brief and use a professional style in answering.

Operative note: {short, concise, avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering.
[/CITE]

- [conversation](https://g.co/gemini/share/81e66b7d68ba) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n2.txt#?target=_blank)

The second test include a generic version of the short-but-relevant session prompt created from the translation of a previous article's [note](usare-lai-per-divulgare-notizie-di-finanza.md#nota-prompt-v3?target=_blank) about "be brief" operational explanation for the AI, but it failed.

The first attempt in developing a short-but-relevant session prompt failed to correctly trade the meaningfulness for brevity. Which is a sort of challenge for AI because when "be brief" enters into the scene, then they keep the most solid but obvious part, in the aim of being correct.

While senior professionals do not need scholar-long explanations. Hence, the executive assistant goes short, dropping obviousness. Therefore, this prompt is going to radically change the standard chatbot answering template from long-and-descriptive to short-but-relevant.

---

### test n.3: obvious or insightful

[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering.

**Operative Note**: {short, concise, avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering. In providing a valuable answer, shrink cut the obvious parts and keep the most nuanced.
[/CITE]

- [conversation](https://g.co/gemini/share/96850b7d9480) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n3.txt#?target=_blank)

The third test uses a prompt that addresses explicitly how to deal with the obvious parts and which is the most relevant information: the most uncommon among the output claims. It works but it raises a potential meaningful-vs-hallucination concern.

Because Gemini 2.5 Flash tends to be pretty schematic and running at a relatively cool temperature, the "uncommon" claims are not necessarily hallucinations but the meaningful ones. The result may vary in different contexts and with different chatbots.
 
In general, it increases the risk of providing just the hallucinated parts but it is not necessarily true because hallucination happens at generation time, but at the second iteration (summary) the most solid-rooted parts might take an advantage, instead.

---

### The short-but-relevant session prompt

[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering.

**Operative Note**: {be brief, short, concise; avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering. In providing a valuable answer, shrink or even cut the obvious parts and keep the most nuanced.
[/CITE]

   - [conversation](https://g.co/gemini/share/0c4d2dd1ddcc) and its [transcription](not-yet#?target=_blank)

The final prompt includes minal changes like using semicolon to separate a subset of action based on "to be $adjetive" and "to avoid $something", plus it aims to further strenghten the idea of completely cut off the obvious parts. *It is a kind of magic*!

---

### test n.4: obvious or insightful

- [conversation](https://g.co/gemini/share/96850b7d9480) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n4.txt#?target=_blank)

The fourth test challenges the final version of the short-but-relevant session prompt within the testing framework for no other reason than compare the result with the previous one.

---

### The testing framework

[!CITE]
What do you think about this post on LinkedIn? Is it obvious or insightful?

#### Image

There is too much talent trapped in poverty.

#### Post

OPPORTUNITY COST, A GOOD EXAMPLE

Opportunity cost is the value of the next best alternative that is forgone when a choice is made. It represents the potential benefits you miss out on when you choose one option over another. Essentially, it's the cost of not doing something else with your resources, like time or money. -- Gemini

Micromanagement is a talent/opportunity killer unless is tutoring a novice.
[/CITE]

#### New-Form prompt 

[!CITE]
Is this a better form?

Micromanagement kills talent and opportunity, unless tutoring a novice.
[/CITE]

## Check-Again prompt

[!CITE]
What do you think about the narrative structure, for a seasoned manager:

1. poverty trap (is obvious)

2. opportunity cost (is obvious)

and then, **paff** the not-obvious link: then why you allow micromanagement?
[/CITE]

+

## Related articles

- [L'AI è un game-changer perché è onesta](l-ai-e-un-game-changer-perche-onesta.md#?target=_blank) &nbsp; (2025-06-23)

- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-06-13)

- [Fix your data is a postponing excuse](fix-your-data-a-postponing-excuse.md#?target=_blank) &nbsp; (2025-05-08)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
