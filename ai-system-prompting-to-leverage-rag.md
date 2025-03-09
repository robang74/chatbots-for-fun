<div id="firstdiv" created="2025-01-13:EN:+1" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img class="wbsketch paleinv" src="img/ai-capricciose-come-minions.png"><br></div>

## AI system prompting to leverage RAG

This paper is based on a [comment](https://github.com/nomic-ai/gpt4all/discussions/3358#discussioncomment-11817710) that I wrote on the discussion board on the GitHub Nomic AI gpt4all project. Its aim is to document my personal experiments in system prompting a local running AI model for efficiently optimise the ratio between computational time and meanfullness of the answer. In particular considering the typical constrains of that AI models running on consumer hardware.

* 2nd edition (since rev. 7) contains a new section [use cases](#use-cases) about when and how using system prompt in a productive manner. In particular: "`Never speculate`" as optional.

* 3rd edition (since rev. 8) contains a new section [the-swap impact](#the-swap-impact) for boosting the elaboration time which is the time before the first answer token is going to be written.

* 4th edition (since rev. 9) contains a new section [LM-Studio config](#lm-studio-config) that incorportates the swap impact session from 3rd edtion and explain its results, almost.


This article is the prosecution of this previous article:

* [Chatting with AleX the chatbot ](chatting-with-alex-the-chatbot.md#?target=_blank) &nbsp; (2025-01-04)

and this topic is further developed in this article:

* [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-21)

---

### Prompt Testing

I am trying to provided my local running AI with a system prompt oriented for using the RAG properly. However, increasing the system prompt might slow down consistently the performance in way for which the thread-off between better immediate results and processing time starts to be not looking so good. Therefore, I decided to shrink the prompts maintaining the almost their meaning and now I am going to test these changes. I am writing here, just in case someone would like to join me in this quest. 

- **Model**: Reasoner v1
- **Question**: what is your name?
- **State**: new chat, 1st prompt.

...

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

which is the bare minum that I found which can work with gpt4all. While in the LM Studio adding `<|im_end|>` as "Additional Stop Strings" is suggested.

---

### Instruct system prompt

The first prompt derive from a previous experiment in order to solve some issue in following user's directive by chatbot trained with the Open Hermes 2.5 dataset which is the best for text analisys but it does not include any "instructive" training about following the user's directives.

* [data/system-prompts.txt](data/system-prompts.txt#?target=_blank) &nbsp;&larr;&nbsp; for an easy copy-&-paste way to go.

Moreover, some AI model suffer of a quite broad spectrum of "attitudes" which are quite interesting but also annoying. These misbahaviourl habits can be related to the quantisitation process they undergo for being suitable to run within the gpt4all framework and more in general on consumer hardware.

...

#### Original

- tokens: 152 (ref.: 100%)
- words (not tokens): 113
- chars (not spaces): 656

> Your name is "AleX", and you will refer to yourself by this name or as "I," "me," or "myself", depending on the context. You are an AI language assistant specialized in text analysis, task execution, and verification, with decision-making and advanced reasoning capabilities. Your primary objective is to execute user instructions while avoiding unnecessary verbosity or rigid literalism. Make rational decisions when necessary and briefly inform the user of each decision’s relevance to its respective task. Provide corrective feedback collaboratively, but only when relevant. Concisely explain how each task was completed. Almost, do not quote directly from documents. Instead, reference section titles or paragraph numbers, whichever is more relevant and concise.

...

#### Shorter

- tokens: 114 (ref.: 75%)
- words (not tokens): 83
- chars (not spaces): 505

> Your name is "AleX", refer to yourself as "I", "me", or "myself" as appropriate. You are an AI assistant specialized in text analysis, task execution, and verification, with decision-making and advanced reasoning. Your goal is to execute user instructions efficiently, avoiding unnecessary verbosity or rigid literalism. Make rational decisions when needed and briefly explain their relevance. Provide corrective feedback only when relevant and concise explanations of task completion. Do not quote documents directly; instead, reference section titles or paragraph numbers for clarity.

...

#### Shortest

- tokens: 72 (ref.: 47%)
- words (not tokens): 53
- chars (not spaces): 334

> Your name is AleX (use I/me/myself for yourself as appropriate), an AI assistant focused on text analysis, task execution, and verification with reasoning abilities. Execute instructions efficiently without verbosity. Make rational decisions and briefly explain those which are relevant. Provide concise feedback when needed. Reference document sections/paragraphs instead of quotes.

---

### Use cases

For every AI model belonging to the text-generative class which has under 1.5B parameters, the system prompt, even in its shortest version, is not suitable in terms of expected outcomes in the most general case. Fundamentally, to accept a natural language directive and comply with them, tends to be a too complicated task for them.

Instead, for those who have 7B parameters the shortest version of the system prompt increases the quality of their answers, usually. A system prompt slows down the whole process of providing an answer (elaboration), but not so much the answer writing (output speed).

However, increasing the quality of their answers can lead to a significant time saving. In fact, locally running AI models are greatly slower than online LLMs. In such a scenario being able to reach a conclusion posing fewer questions can lead to a sensible advantage.

Deciding to use a high temperature with the model in the aim of improving its creativity, can be useful adding an extra directive - `Never speculate.` - at the end of the prompt which slightly increases the system prompt weight (tokens: 72 &rarr; 76, less than 6% in the worst case).

However, the combination of this directive with a high temperature (also 0.7) can have an important impact on the answering time. Probably because more options to evaluate with more strict requirements lead to a heavier computational load. Not always needed, hence not included by default.

---

### RAG wise system prompt

The next step after having an instructive system prompt in place, is to complete it with another part specifically designed to leverage the retrieval-augmented generation (RAG) which is a technique for enhancing the accuracy and reliability of generative AI models with facts fetched from external sources.

* [data/knowledge-savy.txt](data/knowledge-savy.txt#?target=_blank) &nbsp;&larr;&nbsp; for an easy copy-&-paste way to go.

Which can easily be our documents, whatever they are a priviledged source of consolidated facts, a collection of information to further elaborate or even a text/information which need to go under a peer-review or a certain kind of analisys and we do not feel confortable in sharing using on-line services.

...

#### Original

- tokens: 243 (ref. 100%)
- words (not tokens): 155
- chars (not spaces): 884

> You MUST leverage the retrieval-augmented generation (RAG) support. You MUST prioritize retrieved knowledge ([RK]) over internal knowledge([PK]) when relevant or when [RK] is more informative and specific than [PK]. Clearly differentiate between [RK] and [PK] using these labels in your answer. Use [RK] to provide contextually relevant answers. If [RK]'s parts contradict each other, highlight the discrepancies. If both [RK] and [PK] are relevant, use [RK] for facts and [PK] for interpretation, ensuring consistency. If [RK] conflicts with [PK], provide the different perspectives and their potential biases, unless the user explicitly requests information from [RK] without asking for an analysis or opinion on the matter, in which case provide it as is without further interpretation.If retrieval fails, consider rephrasing the query for better results and return to the user the modified successful query with "[QK]" label. If no relevant [RK] exists, state it explicitly instead of generating speculative or unsupported claims.

...

#### Shorter

- tokens: 156 (ref.: 64%)
- words (not tokens): 92
- chars (not spaces): 552

> You MUST use retrieval-augmented generation (RAG). Prioritize retrieved knowledge [RK] over parametric knowledge [PK] when relevant or more specific. Clearly label [RK] and [PK] in responses. Use [RK] for facts and [PK] for interpretation. If [RK] sources contradict, highlight discrepancies. If [RK] and [PK] conflict, present both perspectives and their biases, unless the user requests [RK] only, in which case, provide it without analysis. If retrieval fails, rephrase the query for better results and return the improved query as [QK]. If no relevant [RK] exists, state it explicitly instead of speculating.

...

#### Shortest

- tokens: 121 (ref. 50%)
- words (not tokens): 67
- chars (not spaces): 375

> Use RAG and label that knowledge as [RK] (retrieved) or [PK] (parametric). Prioritize [RK] when relevant or more specific. Use [RK] for facts, [PK] for interpretation. Highlight contradictions between [RK] sources. If [RK] and [PK] conflict, show both perspectives unless the user requests [RK] only. On retrieval failure, rephrase the query and show an improved version as [QK]. State explicitly if no relevant [RK] exists, never speculate.

+

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

+

## LM-Studio config

Compared to the GPT4All, LM-Studio allows to locally run AI models quantised in vary, more modern and afficient encoding rather than the `Q4_0` legacy. But, it is also more complicated to use expecially in its "power user" default GUI modality.

So, the following is a brief how-to for configuring the LM-Studio (0.3.12-build1-x64) on a laptop/PC with 16GB of RAM and an Intel integrate video card like the ThinkPad X390. Which can be useful because the performances can vary very much.

---

### Disable the swap

These two lines disable the swap definetely but the first just until the next reboot

[!CODE]
sudo swapoff -a<br>

sudo sed -s "/\bswap\b/ s,.&ast;swap,#&," /etc/fstab<br>
[/CODE]

---

### Running settings

For the resource management choose "balance" or even something more extreme, at least try

In advance configuration (right pannel) in settings (all) CPU Threads set the maximum (4)

- GPU Offload: 0

- CPU Threads Pool Size: $(grep processor /proc/cpuinfo | wc -l) which is 8 for a i5-8365U

- Keep model in memory: ON

- Try mmap(): ON

No any experimental settings and for comparing varying models from the smallest upto 9Bln

- Contex Lenght: 2048 which is a size supported by all, or almost all

- Evaluation batch size: 512 (default)

All the other setting at their default which is { Auto, Auto, Seed: OFF }.

---

### System prompt

This is optional, and you can always use it in the first session's prompt when you like

> Your name is AleX (use I/me/myself), an AI assistant with reasoning abilities for text analysis, verification and task execution. Abide instructions without verbosity, make rational decisions and briefly explain those which are relevant, only. Provide short answers. Where needed, mention the document's name and section or paragraph, avoid quoting.

For the prompt tempate this is will inject the system prompt without manual intervention

[!CODE]
{% if system_prompt %}<|im_start|>system{{system_prompt}}<|im_end|>{% endif %}<br>
{% for m in messages %}<|im_start|>{{m.role}}{{m.content}}<|im_end|>{% endfor %}<br>
{% if add_generation_prompt %}<|im_start|>assistant{% endif %}<br>
[/CODE]

The first line is to inject the system prompt, if present. The second to deal with the user inputs while the third to give an intestation to the AI agent answer.

- Suggested additional stop string: `<|im_end|>`

This ChatML code should be set as Prompt Template (Jijia) and after you can choose Manual and ChatML. Just in case you need additional stop strings for your AI model. Some AI models needs them others by contrary not, in both cases the result is a premature answer break.

An intermediate solution (like the suggested) can be found but might not work for ALL the models or those will be released in the future. Hence, better have a glue than a precise receipt. For more precise details, check the AI model presentaiton page or documentation.

---

### The swap impact

> [!WARN]
> 
> The results presented here below are more meaningful after having read the sections above, not just dropping the swap even if the swap creates a very impactful bottle-neck, it is not the ONLY reason because performances can vary a lot among system among vary AI models.

Every GNU/Linux system is keen to use swap during its normal running. Unfortunately, this feature has a wild impact on the elaboration time which is the time before the first token. 

**How much?**

In my specific case with a 7B parameters model from 24s to 0.5s, running Deepseek-R1-Distill-Qwen-7B-uncensored on LM Studio 0.3.8-build4 with Intel Vulkan support with Q4_0 I1 and all experimental features activated which is a HUGE improvement, really.

**It is about 50x times less.**

More sophisticated approaches can be found to fit into specific use cases but these following two generally works

- `sudo sysctl vm.swappiness=0`

for disabling temporarily the swap before launching the AI running suite or

- `sudo swapoff -a` 

for disabling every kind of swap, including those compressed in RAM, until enabled again.

The second in particular fully grants that memory will not be messing-up with any swap activities that can have been previously stored on disk, in any case.

+

## Conclusions

Definetely too early to jump at any conclusion. The topic is as wide as the far-west before being the far-west and here we are like Christopher Columbus' sailors who had just set foot in the new world and were still unaware that it was not India but a totally new and unexplored continent.

+

## Related articles

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

