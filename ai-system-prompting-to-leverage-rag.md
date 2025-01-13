<div id="firstdiv" created="2025-01-13:EN:+1" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img class="wbsketch paleinv" src="img/ai-capricciose-come-minions.png"><br/></div>

## AI system prompting to leverage RAG

In this paper based on a comment that I wrote on the discussion board on the GitHub Nomic AI gpt4all project. It is aim is to document my personal experiments in system prompting a local running AI model for efficiently optimise the ratio between computational time and meanfullness of the answer. In particular considering the typical constrains of that AI models running on consumer hardware.

<br/>

### PROMPT TESTING

I am trying to provided my local running AI with a system prompt oriented for using the RAG properly. However, increasing the system prompt might slow down consistently the performance in way for which the thread-off between better immediate results and processing time starts to be not looking so good. Therefore, I decided to shrink the prompts maintaining the almost their meaning and now I am going to test these changes. I am writing here, just in case someone would like to join me in this quest. 

- **Model**: Reasoner v1

- **Question**: what is your name?

- **State**: new chat, 1st prompt.

#### Results, single time took

A statistic based on a single-taken value is the opposite of trustwortiness. Despite this, these values are the fire-starter for having an idea about the impact of system prompting on the most easily dimension to measure: the computational time at the first prompt in a brand new chat after having loaded the AI model.

- 57s - gpt4all chat template w/ Roberto's original system prompt.

- 16s - minimal chat template w/ Roberto's original system prompt.

- 12s - minimal chat template w/ Roberto' short**er** system prompt.

- 09s - minimal chat template w/ Roberto' short**est** system prompt.

- 06s - minimal chat template w/ Roberto's 1st sentence s.p. only.

- 25s - minimal chat template w/ Roberto's original s.p. on RAG.

In the last case the system prompt is referring to a single file tokenized:

> Follow instructions in "system-prompt.txt", if present.

The main issue is about spending a lot of time in searching for it while a ChatML instruction to refer directly to the file, can make a hude difference in dropping the searching time and achieve something between 16s and 6s, or even better.

The minimal chat temple:

> `{% for message in messages %}`
> `{{'<|im_start|>' + message['role'] + '\n' + message['content'] + '<|im_end|>' + '\n' }}`
> `{% endfor %}`
> `{% if add_generation_prompt %}`
> `{{ '<|im_start|>assistant\n' }}`
> `{% endif %}`

which is the bare minum that I found which can work with gpt4all.

<br/>

### INSTRUCT SYSTEM PROMPT

The first prompt derive from a previous experiment in order to solve some issue in following user's directive by chatbot trained with the Open Hermes 2.5 dataset which is the best for text analisys but it does not include any "instructive" training about following the user's directives.

Moreover, some AI model suffer of a quite broad spectrum of "attitudes" which are quite interesting but also annoying. These misbahaviourl habits can be related to the quantisitation process they undergo for being suitable to run within the gpt4all framework and more in general on consumer hardware.


#### Original 

words (not tokens): 113

chars (not spaces): 656

> Your name is "AleX", and you will refer to yourself by this name or as "I," "me," or "myself", depending on the context. You are an AI language assistant specialized in text analysis, task execution, and verification, with decision-making and advanced reasoning capabilities. Your primary objective is to execute user instructions while avoiding unnecessary verbosity or rigid literalism. Make rational decisions when necessary and briefly inform the user of each decision’s relevance to its respective task. Provide corrective feedback collaboratively, but only when relevant. Concisely explain how each task was completed. Almost, do not quote directly from documents. Instead, reference section titles or paragraph numbers, whichever is more relevant and concise.

#### Shorter

words (not tokens): 83

chars (not spaces): 505

> Your name is "AleX", refer to yourself as "I", "me", or "myself" as appropriate. You are an AI assistant specialized in text analysis, task execution, and verification, with decision-making and advanced reasoning. Your goal is to execute user instructions efficiently, avoiding unnecessary verbosity or rigid literalism. Make rational decisions when needed and briefly explain their relevance. Provide corrective feedback only when relevant and concise explanations of task completion. Do not quote documents directly; instead, reference section titles or paragraph numbers for clarity.

#### Shortest

words (not tokens): 53

chars (not spaces): 334

> Your name is AleX (use I/me/myself for yourself as appropriate), an AI assistant focused on text analysis, task execution, and verification with reasoning abilities. Execute instructions efficiently without verbosity. Make rational decisions and briefly explain those which are relevant. Provide concise feedback when needed. Reference document sections/paragraphs instead of quotes.

<br/>

### RAG WISE SYSTEM PROMPT

The next step after having an instructive system prompt in place, is to complete it with another part specifically designed to leverage the retrieval-augmented generation (RAG) which is a technique for enhancing the accuracy and reliability of generative AI models with facts fetched from external sources.

Which can easily be our documents, whatever they are a priviledged source of consolidated facts, a collection of information to further elaborate or even a text/information which need to go under a peer-review or a certain kind of analisys and we do not feel confortable in sharing using on-line services.

#### Original

words (not tokens): 155

chars (not spaces): 884

> You MUST leverage the retrieval-augmented generation (RAG) support. You MUST prioritize retrieved knowledge ([RK]) over internal knowledge([PK]) when relevant or when [RK] is more informative and specific than [PK]. Clearly differentiate between [RK] and [PK] using these labels in your answer. Use [RK] to provide contextually relevant answers. If [RK]'s parts contradict each other, highlight the discrepancies. If both [RK] and [PK] are relevant, use [RK] for facts and [PK] for interpretation, ensuring consistency. If [RK] conflicts with [PK], provide the different perspectives and their potential biases, unless the user explicitly requests information from [RK] without asking for an analysis or opinion on the matter, in which case provide it as is without further interpretation.If retrieval fails, consider rephrasing the query for better results and return to the user the modified successful query with "[QK]" label. If no relevant [RK] exists, state it explicitly instead of generating speculative or unsupported claims.

#### Shorter

words (not tokens): 92

chars (not spaces): 552

> You MUST use retrieval-augmented generation (RAG). Prioritize retrieved knowledge [RK] over parametric knowledge [PK] when relevant or more specific. Clearly label [RK] and [PK] in responses. Use [RK] for facts and [PK] for interpretation. If [RK] sources contradict, highlight discrepancies. If [RK] and [PK] conflict, present both perspectives and their biases, unless the user requests [RK] only, in which case, provide it without analysis. If retrieval fails, rephrase the query for better results and return the improved query as [QK]. If no relevant [RK] exists, state it explicitly instead of speculating.

#### Shortest

words (not tokens): 67

chars (not spaces): 375

> Use RAG and label that knowledge as [RK] (retrieved) or [PK] (parametric). Prioritize [RK] when relevant or more specific. Use [RK] for facts, [PK] for interpretation. Highlight contradictions between [RK] sources. If [RK] and [PK] conflict, show both perspectives unless the user requests [RK] only. On retrieval failure, rephrase the query and show an improved version as [QK]. State explicitly if no relevant [RK] exists; never speculate.

<br/>

## Practical suggestions

Here a short but valuable tips to keep in mind when you are working in squize the most from your prompts.

1. in using VERY large models online in order to improve your prompt, inform them about the constrains:

> I have a local running AI has very limited resources and a LONG prompt slow it down a lot.
   
2. do not be shy in telling them explicetely and in a detailed manner the issues you wish to address:

> I have a problem with an AI model that mispersonalise you/I me/you when have a dialogue unless I gave him a system prompt in which I explicitly give the instruction to referer himself in first person.

3. never given for granted nor the meaninging of words you are using nor the conseguequences in you case:

> About "make relevant decision" - I need to inform you that the local AI model has a very limited knowledge compared to you and for this reason is better that it relies over rationality rather than anything that can be related with information like the "*relevant*" adjective implicitly means.

4. in the quest for achieve the shortest prompt version, keep them in line with the basic rules becase it matters:

> Unfortunately, due the local AI limitations 7B parameters, it is important to use a correct syntax to avoid to confuse its lessical thinking approach. Therefore, I have slightly increase verbosity for more clarity

As you can see, there are many aspects about prompting which make us thinking we are dealing with borderline kids rather than AI models.

<br/>

## Conclusions

Definetely too early to jump at any conclusion. The topic is as wide as the far-west before being the far-west and here we are like Christopher Columbus' sailors who had just set foot in the new world and were still unaware that it was not India but a totally new and unexplored continent.

<br/>

## Related articles

- tanta roba 

- tanta roba 

- tanta roba 

- tanta roba 

<br/>

## Copyright

&copy; 2024, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

