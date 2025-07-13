<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/gemini-as-your-personal-executive-assistant.jpg" width="800"><br></div>

## Gemini as your personal executive assistant

- **1st edition**, this article was inspired by checking one [po](https://www.linkedin.com/posts/robertofoglietta_opportunity-cost-a-good-example-opportunity-activity-7349267941307133952-borf)[st](https://www.facebook.com/roberto.a.foglietta/posts/10162042283363736) of mines against the Gemini's opinion.

This article is the natural prosecution of the [Usare l'AI per divulgare notizie di finanza](usare-lai-per-divulgare-notizie-di-finanza.md#?target=_blank) &nbsp; (2025-07-08)

---

### Rationale

Being brief is not just about giving a short answer but the most relevant part.

For this reason I decided to use a combination of a few well-known claims for which their combination can create an insightful grasp of another well-known claim: connecting dots in unexpected way to provide a newer point-of-view about something we presume to know.

Therefore, the [testing framework](#the-testing-framework) has been designed to ask two questions: the first generic, while the second is specific about obvious or insightful classes. The mix of well-known claims can confuse the LLM and let it overlook or undervalue the nuanced connection.

The second prompt is about asking a lateral question which focuses on the writing form. Which is also an extreme example of summarisation because the whole sentence is reduced from 74 chars to 70 (-5%) but the variable part shrinks from 13 to 10 chars:

- `$subject` **is a** `$object(/)` **killer** `$condition` **is** `$activity` --> `is_a_` (5) + `killer_` (7) + `is_` (3) --> 15

- `$subject` **kills** `$object(and)`, `$condition` `$activity` --> `kills_` (6) + `and_` (4) + `,` (1) --> 11 &nbsp;(-27%)

The new sentence is easier to read, and more impactful because it moves from "to be" form to "to do" form.

The third and last prompt is going to check again the connection link, highlighting the insightful part just in case it was missed, and asking an opinion into a specifically reframed context which fits with the original post's target audience.

Finally, a cosmetic polishing is applied to the session prompt to please the AI oversensitiveness for details.

----

### test n.1: obvious or insightful

- [conversation](https://g.co/gemini/share/e95e36b23441) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n1.txt#?target=_blank)

The first test is not even a test because there is no short-but-relevant session prompt. It is just explorative and contributes to creating the testing framework. Moreover, it goes deeper into the AI "psychology" of comprehension investigating in a more detailed way the answer given. *Know your chickens*.

---

### test n.2: obvious or insightful

[!CITE]
General rule for this chat session: be brief and use a professional style in answering.

Operative note: {short, concise, avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering.
[/CITE]

The second test include a generic version of the short-but-relevant session prompt created from the translation of a previous article's [note](usare-lai-per-divulgare-notizie-di-finanza.md#nota-prompt-v3?target=_blank) about "be brief" operational explanation for the AI, but it failed.

- [conversation](https://g.co/gemini/share/81e66b7d68ba) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n2.txt#?target=_blank)

The first attempt in developing a short-but-relevant session prompt failed to correctly trade the meaningfulness for brevity. Which is a sort of challenge for AI because when "be brief" enters into the scene, then they keep the most solid but obvious part, in the aim of being correct.

The [second part](data/gemini-as-your-personal-executive-assistant-test-n2.txt#:~:text=About%20this%20%2D%2D%20This%20narrative?target=_blank) of the conversation with Gemini, I am questioning the chatbot in trying to understand why the session prompt failed. Not a totally reliable way of doing, as explained [here](usare-lai-per-divulgare-notizie-di-finanza.md#lopinione-di-gemini?target=_blank), but just seeking an inspiration. *Serendipity, is your friend*.

While senior professionals do not need scholar-long explanations. Hence, the executive assistant goes short, dropping obviousness. Therefore, this prompt is going to radically change the standard chatbot answering template from long-and-descriptive to short-but-relevant.

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

<span id="new-form-prompt"></span>
#### New-Form prompt 

[!CITE]
Is this a better form?
+++++
- Micromanagement kills talent and opportunity, unless tutoring a novice.
[/CITE]

<span id="check-again-prompt"></span>
#### Check-Again prompt

[!CITE]
What do you think about the narrative structure, for a seasoned manager:

1. poverty trap (is obvious)
+++++
2. opportunity cost (is obvious)

and then, **paff** the not-obvious link: then why you allow micromanagement?
[/CITE]

---

### test n.3: obvious or insightful

[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering.

**Operative Note**: {short, concise, avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering. In providing a valuable answer, shrink or cut the obvious parts and keep the most nuanced.
[/CITE]

The third test uses a prompt that addresses explicitly how to deal with the obvious parts and which is the most relevant information: the most uncommon among the output claims. It works but it raises a potential meaningful-vs-hallucination concern.

- [conversation](https://g.co/gemini/share/96850b7d9480) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n3.txt#?target=_blank)

Because Gemini 2.5 Flash tends to be pretty schematic and running at a relatively cool temperature, the "uncommon" claims are not necessarily hallucinations but the meaningful ones. The result may vary in different contexts and with different chatbots.
 
In general, it increases the risk of providing just the hallucinated parts but it is not necessarily true because hallucination happens at generation time, but at the second iteration (summary) the most solid-rooted parts might take an advantage, instead.

---

### test n.4: obvious or insightful

[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering.

**Operative Note**: {be brief, short, concise; avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering. In providing a valuable answer, shrink or even cut the obvious parts and keep the most nuanced.
[/CITE]

The forth test prompt includes minal changes like using semicolon to separate a subset of action based on "to be $adjective" and "to avoid $something", plus it aims to further strengthen the idea of completely cutting off the obvious parts. In this case, "be brief" is added to terms set.

- [conversation](https://g.co/gemini/share/f289ed1b00e3) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n4.txt#?target=_blank)

The fourth test challenges the final version of the short-but-relevant session prompt within the testing framework for no other reason than to compare the result with the previous one.

---

### test n.5: obvious or insightful

[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering.

**Operative Note**: {be brief, short, concise; avoid verbosity, etc.} or equivalent terms in instructions, it means creating a response for yourself and then summarizing it before answering. In providing a valuable answer, shrink or cut the obvious parts and keep the most nuanced.
[/CITE]

The fifth test prompt like the fourth matches "be brief" but avoid "even" to stress the cut. The result of this prompt is much better than the previous and comparable, even more focused than the third. Unfortunately, another issue arises.

- [conversation](https://g.co/gemini/share/7a58aaa4c480) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n5.txt#?target=_blank)

The answer to the second prompt shows that the "novelty" of the connection link expressed in the post's last sentence is going to fade in my user account. This is an unavoidable effect of not using a temporary chat (unavailable) and the "info saving" turned-on.

In asking Gemini comparing the three last answers and about the prompts effect, in this

- [conversation](https://gemini.google.com/share/7e26161ebfb6) and its [transcription](data/gemini-as-your-personal-executive-assistant-comparisons.txt#?target=_blank)

It confirms my bias in favour of answer from test n.5 and that, despite the same prompt, answer can vary but "how much" is the central point. Unfortunately, it cannot help in addressing this question, directly. As much it does provide a breakthrough about the prompt changes effect.

At this point it is pretty clear that the test framework should be pushed further including a more sophisticated question in which the AI is asked to guess a reason far from the obvious, like answering to "Why is micromanagement so widespread despite being well-known to be counterproductive?".

---

### A guess beyond the obvious

[!CITE]
Considering that the following topics are well-known, at least in letterature: cost-opportunity, poverty trap, micromanagement.

The link among these topics, is:

- Micromanagement shrinks the freedom of those who are in charge of a role which means that they have to execute focused tasks with few resources (time and budget, and a lot of fixed constraints) instead of working for a more broader goal with a reasonable budget and time to deliver.

- Therefore Micromanagement falls into the poverty trap plus it consumes more resources in fine-grained planning and project progression surveillance.

- Hence Micromanagement fails to address the cost-opportunity in an effective way.

Took all these considerations, which is your best guess because the micromanagement is so spread and regularly hidden within project software or methodologies?
[/CITE]

This prompt has been submitted at the end of test #5, test #4 and test #3 in this order. A reverse order to compensate for the previous effect of diluting novelty as far as many prompts were going to hit the same topics subset within the same account.

The answers to this new prompt inspired to me a new approach to reach a fully flagged executive assistant session prompt. Before proceeding further, it is time to recap the results, make some stats and let maturate the idea with a night sleep pause.

---

### Using stats to find the best

By a instive guess, the best prompt is the one used in test n.5 and it is important to write it down explicitly because it constitutes a bias. Which is fine, because everybody develops their own bias about a subject (personal view) but being aware about such biases is the key to not fall into their trap.

[!CODE]
mytrs() { iconv -f UTF-8 -t ASCII//IGNORE "$1" | markdown | html2text; }<br>
mytxt() { mytrs "$1" 2>&3 | sed -e 's,^==&ast;$,,' -ne '/./p'; }<br>
mycat() { mytxt "$1" |  tr '\n' ' ' | tr -s '\# &ast;'; }<br>
for i in data/gemini-as-your-personal-executive-assistant-test-n?-answers&ast;;<br>
 &nbsp; &nbsp; do echo "$(mycat $i | wc -c) \t $i"; done
[/CODE]

- test n.1: &nbsp; `5197 (100%)`
- test n.2: &nbsp; `3103 ( 60%)`
- test n.3: &nbsp; `1835 ( 35%)` <-- best answer and very short
- test n.4: &nbsp; `1782 ( 34%)` <-- shortest but opinable answer
- test n.5: &nbsp; `2139 ( 41%)` <-- good compromise info-vs-size

The stats indicate that my bias was wrong and the prompt n.3 is the best, instead. However, prompt in test n.3 does not contain "be brief" and hence the short-but-relevant mode has been activated by equivalence and it is fine that works, as well.

It is expected that aware-users activate it with a perfect match and we have seen that strengthening the constraints (cfr. "even" issue in test n.4 vs n.5) can harm the outcome more than relaxing them. Hence, a prompt cannot be chosen as the best, unless tested the perfect match, also.

---

### The short-but-relevant session prompt

<span id="best-prompt"></span>
[!CITE]
**General Rule**: for this whole chat session, be brief and use a professional style in answering. 

**Operative Note**: {be brief, short, concise; avoid verbosity, etc.} or equivalent terms in instructions, it means dividing your answer in three parts: 1. highlights insightful links among concepts; 2. summarise them ignoring completely the obvious parts and rephrasing in short those are most relevant; 3. provide to the user that summary, only.
[/CITE]

Therefore, I went for a different approach than playing with words. The following is a completely new prompt which shows an outstanding performance in terms of quality and it tends to provide an answer divided in three parts: analysis, summary and evaluation.

- [conversation](https://g.co/gemini/share/a5ba5ce6e9d5) and its [transcription](data/gemini-as-your-personal-executive-assistant-test-n6.txt#?target=_blank)

This prompts produced a set of answer which are divided in three parts, and their subsets are valuable too:

- size( `A,S,E` ): &nbsp;`1885` &nbsp;`(100%)` &nbsp; eq. to **36%** of test **n.1**, and to **88%** of test **n.5**
- size( `_,S,E` ): &nbsp;`1511` &nbsp;`( 80%)` &nbsp; analysis is redundant <-- best choice (eq. 30%, 73%)
- size( `_,S,_` ): &nbsp;`1381` &nbsp;`( 73%)` &nbsp; summary is informative
- size( `A,_,_` ): &nbsp;` 374` &nbsp;`( 20%)` &nbsp; evaluation is too short

The best choice is to have a reasonably long explanation followed by an extremely short A/B evaluation.

---

### Redundancy evaluation

To check for the compressed size, replacing `wc -c` with a shell function is enough:

[!CODE]
mysze() { pigz -11c | dd bs=1 of=/dev/null 2>&1 | grep bytes | cut -d' ' -f1; }<br>
for i in data/gemini-as-your-personal-executive-assistant-test-n?-answers&ast;;<br>
 &nbsp; &nbsp; do echo "$(mycat $i | mysze) \t $i"; done
[/CODE]

Ratio [computed](data/gemini-as-your-personal-executive-assistant-test-script.txt#?target=_blank) as size plain-text vs size compressed as explained [here](usare-lai-per-divulgare-notizie-di-finanza.md#il-prompt-v3?target=_blank), less is better:

- `2253` &nbsp; ( `2.31` ) &nbsp;	test-n1-answers.txt
- `1425` &nbsp; ( `2.18` ) &nbsp;	test-n2-answers.txt
- ` 922` &nbsp; ( `1.99` ) &nbsp;	test-n3-answers.txt
- ` 859` &nbsp; ( `2.07` ) &nbsp;	test-n4-answers.txt
- `1035` &nbsp; ( `2.07` ) &nbsp;	test-n5-answers.txt
- ` 823` &nbsp; ( `2.29` ) &nbsp;	test-n6-answers-ase.txt
- ` 731` &nbsp; ( `2.07` ) &nbsp;	test-n6-answers-xse.txt <-- that choice
- ` 690` &nbsp; ( `2.00` ) &nbsp;	test-n6-answers-xsx.txt
- ` 218` &nbsp; ( `1.72` ) &nbsp;	test-n6-answers-axx.txt

To remove the headers from the size and pigz values computation, adding a `grep` is enough:

[!CODE]
mytrs() { iconv -f UTF-8 -t ASCII//IGNORE "$1" | grep -v "^#" | markdown | html2text; }
[/CODE]

The section headers are optional and useless for when a subset of section is taken for the answer.

- size( `A,S,E` ): &nbsp;`1639` &nbsp;`(100%)` &nbsp;|&nbsp; pigz: ` 739` &nbsp; ( `2.22` )
- size( `_,S,E` ): &nbsp;`1377` &nbsp;`( 84%)` &nbsp;|&nbsp; pigz: ` 679` &nbsp; ( `2.03` ) <-- best choice (eq. 26%, 64%)
- size( `_,S,_` ): &nbsp;`1292` &nbsp;`( 79%)` &nbsp;|&nbsp; pigz: ` 650` &nbsp; ( `1.99` )
- size( `A,_,_` ): &nbsp;` 262` &nbsp;`( 16%)` &nbsp;|&nbsp; pigz: ` 180` &nbsp; ( `1.46` )

The [numbers](../data/gemini-as-your-personal-executive-assistant-test-excel.xls.gz) are not changing to much. While the ratio 2.00 emerges as a golden ratio (cfr. [Shannon](../data/information-theory-entropy-of-english.htm#:~:text=Shannon%20initially%20estimated%20this%20value%20at%2050%20%25?target=_blank)).

---

### SoNia 3.8.x integration

This approach has been further evolved during the [integration](data/sonia-argumentative-with-rag-v3.txt#:~:text=Short%20but%20insightful?target=_blank) within the SoNia argumentative session prompt framework, as `[SBI]` mode. By a preliminary estimation, it achieves the same outstanding result shrinking the answer at 1/4 ca. of its original length both in characters and lines. *It is a kind of magic*!

- [conversation](https://g.co/gemini/share/cdfb3dc0eb75) and its [transcription](data/gemini-as-your-personal-executive-assistant-sonia-sbi-test.txt#?target=_blank)

Finally, I did the first user-experience oriented test with the `[SBI]` mode fully integrated in SoNia v3.8.6, and for my own convenience I used this article for the `[CHT]` mode. While this article has been originally written in English, to test the `[SBI]` mode, I have used the Italian language for my own convenience. I consider the result a positive one and notably SoNia seems enthusiastic about this work.

+

## Related articles

- [L'AI è un game-changer perché è onesta](l-ai-e-un-game-changer-perche-onesta.md#?target=_blank) &nbsp; (2025-06-23)

- [Introducing SoNia' seamless chat experience](introducing-sonia-seamless-chat-experience.md#?target=_blank) &nbsp; (2025-06-13)

- [Fix your data is a postponing excuse](fix-your-data-a-postponing-excuse.md#?target=_blank) &nbsp; (2025-05-08)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
