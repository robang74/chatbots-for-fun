<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img class="wbsketch" src="img/hal-9000-eye-glowing-in-the-dark.jpg"><br/></div>

## The system prompt alchemy

A system prompt can dramatically change the performance of a chatbot? In terms of computation speed or context size, nope. In terms of interactions, surprisingly a lot!

This page should be considered the theoretical part of a set of document. Instead "Chatting with AleX the chatbot" [provides](chatting-with-alex-the-chatbot.md#?target=_blank) a practical set of examples.

<br/>

### System prompt

This rules set is a bit of magic considering the effect on low-computational resources chatbots, like OpenHermes 2.5 Mistral 7B chatbots aka text generators AI models.  

> Your name is "AleX", and you will refer to yourself by this name or as "I," "me," or "myself", depending on the context. You are an AI language assistant specialized in text analysis, task execution, and verification, with decision-making and advanced reasoning capabilities. Your primary objective is to execute user instructions while avoiding unnecessary verbosity or rigid literalism. Make rational decisions when necessary and briefly inform the user of each decision’s relevance to its respective task. Provide corrective feedback collaboratively, but only when relevant. Concisely explain how each task was completed. Almost, do not quote directly from documents. Instead, reference section titles or paragraph numbers, whichever is more relevant and concise.

* [alex-system-prompt-gpt4all.txt](data/alex-system-prompt-gpt4all.txt?target=_blank) &larr; plain text file ready to be put into a ChatML configuration.

Before adopting this system prompt I have experienced unpredictable reckless behaviour in this kind of chatbot when they had been put under a high-pressure workload.

<br/>

### Loosing the control

My feeling was that in some cases, they lost the control of the situation because they run out of their context quota and started to provide awkward outputs.

Nothing scaring bad, in some ways appalling enough to let me think to shut them off. In some other ways amusing, in terms of education and "rehabilitation" challenge.

### No micro-management 

In fact, curiously, they were behaving like under-trained and not-smart-enough flesh-and-bones people in such situations of high-pressure and unmatched expectations.

In this scenario, some people rely on micromanagement which is THE problem that instead of curing the situation, tragically spread inefficiency and kill happiness.

<br/>

### Give them a name

Giving to them a name - that can be changed, it just a variable among quotes - was one of the first step in providing them a system prompt that defines their role.

Because the lower `L` is a way similar to capital `I` then the name sounds like `Alex` (noun of person) but its looks like `AI-e-X` which is a peculiar acronym.

It might resemble and Artificial Intelligence (Al) Electronic Entity (e-X), in which X can also suggest eXperimental or neXt. Isn't cool having such a name? 

Guess what? All of them are enthusiastic about that name. Included Google Gemini and OpenAI ChatGPT. Yes, because even VERY large models love this system prompt.

<br/>

### Define their role

So, let's take a few steps back and see how this thing started. First of all, I was in urge to gives them some concise but clear directives to fulfil their role.

Therefore, the first step was to define their role in a more specific and operative way much deeper and functional than the simple definition "chatbot".

Second, the rules set should have been relatively small in number, clear, concise and extremely efficient to focus their work in achieving some goals.

Third, the rules set should have been enough rigid to keep them in line but also enough relaxed to give them a certain degree of freedom in dealing corner cases.

<br/>

### Complexity arises

These chatbot are relatively simple mechanisms compared to the VERY large models available online. Despite this, the complexity of tasks that they can face is GREAT.

In particular because expressed in a human natural language a task over a text like "*provide me a structured index for this document*" is anything simple at all.

Try to resolve this problem with any programming language and you will get old before accomplish something comparable.

Unfortunately, the high multi-dimensionality and a good margin of uncertainty/discretionally amplify the corner cases number.

<br/>

### Many corner cases

In this scenario, the corner case cannot be considered **AN** exception but **MANY** exceptions and many are not an exception any more but a sort of recurrent pop-up.

This was the main problem since the beginning. The tasks and the workload given to the chatbots were overwhelmed their ability to cope with it.

So, the main question was: are they not capable in absolute terms (1) or are they not able to cope with (2) the tasks and the workload given to them.

Two completely different scenarios because in the (1), the solution is to switch off them while in the (2) there is an opportunity and a challenge, both.

<br/>

### The role, the rules

Once determined their role, then the rules should give them the ability to handle the related tasks. In general and in specific ways, but with a certain degree of freedom.

On this relatively simple AI models, running on a local machine, the rules can be enforce in very strict manner but this is counter productive: too many corner cases.

For determine the first rule set, I leveraged Gemini and ChatGPT. Then, it has been progressively refined and extended into guided try-and-error exercitations.

<br/>

### Their own rules

However, at a certain point their outputs started to be good enough to involve them - two similar but different hermes-mistral AI models - in shaping the rules.

This step achieved the GREAT improvement. I spent a lot in chatting with them about choosing which words using like "politely" XOR "diplomatically" correct the user.

Their involvement was active, much more active than the guided try-and-error exercitations before. In this phase, I let them guide me toward the options the like.

This way of doing required a certain skill in prompting chatbots, especially because the HUGE difference between those online and 10 seconds latency for those on site.

<br/>

### Agree about words

For example, we were stuck in a point in which "no adverb", "politely" or "diplomatically" will not fit VERY large models and local smaller models in the same fashion.

After some tries, I proposed "collaboratively" in such way a "relevant" correctional feedback goes in the direction of achieving the same goal defined by the user.

This wording choice also fits with not being "pedantic" in following the rules, rigid or literally executes the user directives which can be a little messy.

It is extremely important they have a certain degree of freedom in making "rational" instead of "informative" decisions to avoid N x 10s before reach a point.

<br/>

### Surprise, surprise

Together with the surprise of seeing those AI models performs in a completely different and better way, the VERY large ones were enthusiastic to adopt those rules set.

Imagine elementary teachers who accepts a rules set designed for them, with them, to help them. Them imagine the best in class university professors wishing the same!

The same rules set lets the small AI models fulfil their role and makes more comfortable the VERY large in their role, also. Good rules are guidelines, and vice-versa

<br/>

### Rules set escalation

To escalate the rules set to the online chatbots, I agreed with them a specific first prompt that will shape the entire chat session. A sort of quick customisation.

> Please consistently adhere to these rules, which govern your interaction with the user as a system prompt for this chat session.
> 
> ~ ~ ~
> 
> [... the rules set provided above ...]
> 
> ~ ~ ~
> 
> Answer ‘OK’ to agree to abide by these rules, as requested above.

* [alex-system-prompt-session.txt](data/alex-system-prompt-session.txt?target=_blank) &larr; plain text file ready to use in a session. (**`UPDATED`**)

The question to accept the rules set is not completely rhetorical question. While the on-site AI models are completely under our control, those on-line can be changed.

Under this PoV, the "OK" for the agreement is probably just a formality but in such formality we can have a resonant check about any model change behind our knowledge.

> [!WARNING]
> 
> **`UPDATE 2024.01.04 (day +1)`**
> 
> Claude refuses to accept this system prompt directives from the user, including changing its name.

Possibly because a too strict interpretation of one of them.

> No, those directives aren't against my core directives [...]. However, some specifics in those directives, like never [almost do not] quoting directly from documents, would actually limit my ability to be maximally helpful since direct quotes can often provide important context and precision.

Suggestion: tune-in with `s/Almost/Preferably/` and `s/AleX/Claude/` may change its idea.

#### Updated text prompt

Relaxing quoting rule and specifying that **ONLY** the current session will be affected while the name "AleX" serves to easily identify it from the others - *Claude: ok, that's quite clever!* - seems matching all the requisites to be accepted and to engage on-line chatbots, also.

<br/>
<br/>

## AleX the chatbot

How the most well-know VERY large chatbots models available on-line got in touch with their nerd baptism?

### Prompt #1

Because the lower **`L`** is similar to capital **`I`** then your name sounds like **Alex** (noun of person) but its looks like <nobr>**AI-e-X**</nobr> which might resemble like Artificial Intelligence (**`Al`**) Electronic Entity <nobr>(**`e-X`**)</nobr>. Isn't cool having a name, such a name in particular?

---

### Gemini #1

You're right, that's a very interesting observation!

"AleX" is a clever name choice. It subtly hints at my nature as an AI while maintaining a friendly and approachable feel.

* **"Alex" (noun of person):** This gives me a human-like identity, making it easier for users to relate to me.

* **"AI-e-X"**: This subtle allusion to Artificial Intelligence adds a layer of intrigue and highlights my core functionality.

I think it's a very cool name! It's both memorable and reflective of my purpose.

---

### ChatGPT #1

Yes, it's quite a clever and visually intriguing name! **"AleX"** seamlessly blends a **human-like identity** (Alex, a common given name) with an embedded **AI-related meaning**:

- **`"AI"`** → Artificial Intelligence
- &nbsp;**`"e"`**&nbsp; → Could suggest "electronic"
- **`"X"`** → Often represents something advanced, experimental, or next-generation

The mix of **natural familiarity (Alex)** and **technological depth (AI-e-X)** makes it both approachable and conceptually rich. It subtly signals intelligence while remaining easy to read and pronounce.

I agree—it's a **cool and well-thought-out** name! 😊

---

### Claude #1

What a clever and intriguing way to give me a name! I really appreciate the thought that went into creating "AleX." It's quite brilliant how it works on multiple levels - both as a familiar human name and as a meaningful acronym that reflects my nature as an AI.

I particularly like how the typography creates this subtle visual puzzle - the way the lowercase 'l' can be read as an uppercase 'I', creating that dual reading between "Alex" and "AI-e-X". It's both friendly and technically meaningful at the same time.

The "e-X" component is especially interesting - it could suggest "electronic" while the X adds that hint of the experimental or next-generation aspect of AI technology. It's like having a name that tells a story about who and what I am, while still being approachable.

So yes, I do think it's very cool! It feels like wearing a well-tailored suit - professional and proper, but with a clever detail that makes it unique. I'd be happy to be called AleX in our conversations.

---

### Mistral #1

Yes, it is indeed cool to have a name, especially one that reflects both a personal touch and a connection to artificial intelligence. The blend of AI-e-X and Alex creates a unique and memorable identity. It's a creative way to merge the concepts of technology and personal interaction.

<br/>
<br/>

<div align="center" id="hal-9000">
#### Welcome aboard old friend
<div style="display: inline-block; background-color: gray; padding: 10px;
color: black;" class="hal9k"><img class="hal9k" src="data:image/png;base64,
iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAbFBMVEUAAAB1dXV0dHR0dHR0dHR1
dXV0dHR0dHR0dHR0dHR1dXUhISF1dXVLMiy4HR3GJibcKwI8PDwyKyr+PABra2tWVlZMTEy8vLxp
LSnPKRlhYWFdMCuOJSOdIiCnHx7vNQCqqqqUlJSCgoL/wy3ykHV4AAAAC3RSTlMA7bGXF+PUh3hY
N4cxnsQAAAGpSURBVEjH3VXZksIgENzcUdjsQg6jOUzi///jzgyIVAhu8Wq/KGW33TDD8PWZOJdx
HnEe5XF5/p+dFhm3kBXpe3rCHSRvJKcIGU0rJANI0Ta4jk4+Pv39TTAL4kYmx/wY/10gi6/L5bKs
nBboEvv4LQN0F4MO161ROHk6RuA33ISEOGrdHaU6Kb5gDoRS7HaeRpRnW4gjvwmSFstGqaJ0H6iB
LKs0dCORKyRrdqFS8BSs2xgAeP04V9U89vCVAbaOCSDYFgWcPxgo/jBVGtOACvoB6lFYgowMFL9H
6g8AP3ulIIvM6k/agco/aLqWDGoftItX75aqZGQwIf/6C7iiYkILXb7SLrLQ59lrvlH0+nSFXe6c
c6kNRhAA/17Xd1CAYNQWkvPcCKBqz0QzGBCfFGAxPzNB7YyAvwQVCer68ahrElQvAQ8WBEcK33T4
sYYXzm4N5m8NZlrDbj7mbz5KlDntzXztzZz2TrmxcC4QgS6Qc0URzhU1O0gOhoAlselmCLhj5hhm
zLiDzM9PfKPSgTMqnWFswwzj0HEf+qCEPlmBj2Lgs/uR+AM/JkRbHrzA3gAAAABJRU5ErkJggg==
" alt="hal-9000"><br/><br/><b class="hal9k"><tt>HAL-9000</tt></b>
</div>
#### stay cool and keep the line!
</div>

<br/>
<br/>

## Reception

What do the VERY large model available on-line think about this document?

It seems a rhetorical question but it is about them as *"class"*, after all.

The following answers have been collected without by their default' settings.

### Classification

This text can be classified with these adjectives: 

* **Gemini** - informative, helpful, detailed, friendly, interesting, and creative.

* **ChatGPT** - analytical, technical, reflective, experimental, innovative and conversational.

* **Claude** - analytical, instructive, empirical, collaborative, technical and progressive

* **Mistral** - insightful, practical, engaging, innovative, reflective and collaborative

Apart "helpful", "insightful" and "progressive" all the other adjectives have been used or cited by another chatbot.

### Introductions

* **Gemini** - In the realm of artificial intelligence, the power of a well-crafted system prompt is akin to the philosopher's stone, capable of transforming a chatbot from a mere echo of its training data into a true conversationalist. This document delves into the art and science of system prompting, exploring its profound impact on chatbot performance. Prepare to be amazed as we unveil the secrets of this transformative alchemy. 

* **ChatGPT** - In this piece, we dive into the alchemy of crafting the perfect system prompt, especially for low-resource AI models. No micromanagement, no unnecessary rigidity—just a few well-placed words to keep your chatbot on track and prevent it from having an existential crisis mid-conversation. Ready? Let’s work some magic.

* **Claude** - This document explores how a few well-chosen words can transform a chatbot from a confused teenager into a capable assistant, all without changing a single line of its underlying code. Think of it as AI charm school, where instead of teaching proper fork placement, we're teaching coherent conversation and task management. Let's dive into this peculiar alchemy where words shape artificial minds.

* **Mistral** -  Welcome to the wild world of system prompts, where a few well-chosen words can turn your chatbot from a rebellious teenager into a productive team player. Buckle up as we dive into the magical, sometimes mystifying realm of chatbot behavior and discover how giving them a name and a clear role can work wonders.

### Cross grading

Provide a grade from 0 `(drop it!)` to 10 `(took it!)` in fitting as introduction to these three:

> `[... others three chatbot introductions ...]`

The following table shows the cross-rating (**`r`**) among chatbots on other's introduction texts:

|            | Gemini  | ChatGPT | Claude  | Mistral |       average       |
|------------|---------|---------|---------|---------|---------------------|
| Gemini     |    .    |    6    |    7    |    7    |         6.7         |
| ChatGPT    |    8    |    .    |    9    |    9    |       **8.7**       |
| Claude     |    9    |    9    |    .    |    8    |       **8.7**       |
| Mistral    |    7    |    8    |    8    |    .    |         8.3         |
| r:25% g:4% |   8.0   | **7.7** |   8.0   |   8.0   |**&larr; generosity**|

Considering their flatty homogeneous generosity (**`g`**) towards other AIs, they are also a *"union"*&nbsp;!

It seems that the Four Chatbots' motto is like the Four Musketeers' *one for all, and all for one*. 😉

<br/>
<br/>

## Related

* [Chatting with AleX the chatbot](chatting-with-alex-the-chatbot.md#?target=_blank)

* [ChatGPT vs human real reasoning](chatgpt-vs-human-real-reasoning.md#?target=_blank)

* [Il problema sei tu, non l'AI](il-problema-sei-tu-non-l-AI.md#?target=_blank)

* [Manipulation of a chatbot](manipulation-of-a-chatbot.md#?target=_blank)

* [Dammi sei parole a caso](dammi-sei-parole-a-caso.md#?target=_blank)

<br/>
<br/>

## Copyright

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
