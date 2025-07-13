<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch paleinv" src="img/fix-your-data-a-postponing-excuse.jpg" width="800"><br></div>

## Fix your data is a postponing excuse

Many companies have a lot of data collected before the AI-era. This data is not immediately suitable for AI use. Otherwise, unexpected results can arise at any time, later in production, as well. Moreover, the chain of consequences are even less predictable.

- In the AI adoption, the data quality is the bottleneck.

Therefore having a reasonable degree of confidence and knowledge about the data should be considered a MUST, not an optional. Also, in terms of efficiency in learning and in running, later. Despite distillation and/or quantisation can help in some cases, they also introduce some drawbacks.

As much as we know which is our goal, then we can use smaller/faster AI for filter, sanitize, rating, structure, etc. our data. By experience in the IT field a SCRUM-like approach in which the human operator(s) acting like scrum master and inducing a cycle of progressive advancement. Both in terms of quality, efficiency and thus scalability.

- Paradigma change: fix your data, first --> fix your goal, first

This article explains this approach with a general approach and presents a practical but specific example.

---

### Technical introduction

- Data could be a mess but usually they are what they are.

An article about how to "fix" (or sanitise) data collected in pre-AI era to feed an AI agent or training a LLM using another AI with a relatively easy-quick way leveraging the SCRUM approach and being aware that few "anomalies" included or few "corner cases" lost are not going to matter a lot because LLM learn by and run on patterns recognition weighted on their frequency into the data.

After all, if an AI agent or a LLM training is going to fail in a epic way just because few anomalies or missing few corner cases, then we are facing two options: the LLM engine is not "safe" for that role or the anomalies are not random but specific patterns engineered to confuse the AI agent or impair a LLM training.

The 2nd case, in particular, should not be excluded, especially in some scenarios. However, the article shows how to handle the topic in general but offers a specific example and explains that it has not the aim of a full coverage of the matter. Coping with biases, included.

----

### Pre-AI era users data collection

For example, the most **mess** in terms of data is those coming from the users without any kind of post-processing. How to deal with that stuff? First of all, create a generic AI agent capable of dealing with that data format, just the format. Image? Text? Sounds? Voice? Music? Whatever.

The first act of creating an AI agent is to provide a set of generic instructions, rules of thumb, guardrail, subsystem management and/or virtualisation like a RAG, workstream, and a framework to put all of this in a coherent way, etc.

---

### A good start is half of the work

For example, considering users' feedback or forum posts and comments.

In terms of format, they are text written in some languages which should be supported by the LLM. The domain of elaboration is documentation or structured reasoning about human language written text. In which the rule of grammar and the semantic of the terms is a know-how which is delegated to the LLM, as previously stated. The same about Maths, or Music, etc.

On top of that, we have to decide HOW to handle this data which can be messy because it can cointais EVERY kind of biased or flawed opinion in it. For example, we can be interested in extracting from such data the expressed and implicit claims. Which is NOT the same as summarising a text but to recognise memes into it, including those that are given as implicit.

Biases fall in this category: implicit assumptions (claims, memes, ideas, concepts, whatever you like to call them) that whoever writes might not even be aware s/he accepted uncritically as truths. Which are not necessarily wrong, but given: the Earth is round and orbits around the Sun. Usually accepted after Copernico, otherwise the tolemaic system.

Personal beliefs are another category, which from a categorisation point of view, are those ideas so peculiar that they do not fit into a specific pattern that has been labeled before. For example, the claim -- *Earth is flat and the Sun is a giant lightbulb* -- does not fit into tolemaic nor Copernic systems, but it can be shared by many people in a variety of forms.

This variety is about details but irrelevant, because whatever the details are, that idea is wrong: falsified by fact-checking, but also as a model to make calculation and forecast about planets and stars movements. Moreover, it does not fit into the two main systems historically emerged in many civilisations.

This introduces us to another level, more mature and interesting than the true-false dichotomy. Is a concept coherent and useful in its own context or to explain a certain point of view? Understanding a serial killer is not accepting he is right but easier to find and stop his activity. It is about profiling.

We might continue including multiple points of view, which are essential to evaluate the relationships among concepts and establish a coherent framework among them. For the scope of this article it is worth saying that a session prompt has been developed for dealing with in a "**good enough**" way this sort of raw data.

- [SoNia argumentative collaborative session prompt](data/sonia-argumentative-with-rag-v3.txt#?target=_blank) &nbsp; last version available.

As long as AI will evolve, it will be easier to include in this prompt higher-level activity with a smaller effort than the time it has written. As long as someone is not going to pay for a smarter way, it is better to wait until the "many-people-doing-stuff" approach reach the "good enough" outcome to write a better version of the prompt. As simple as that.

.....

#### Bias Amplification

- while AI can identify biases, there's also a risk that it might inadvertently amplify existing biases in the data if not carefully designed and monitored.

#### Resource Intensity

- an AI agent for restructuring the raw data and another AI agent to consume it. Two different tasks, two different AIs, two different systems. In general.

Take note of these two as warnings will save precious resources in architectural design and the need of a further step of data cleaning in trying to cope with biases, which are also affecting numeric data when different scales or measure techniques are involved.

---

### Show me the code!

Theory is a thing and practice is another, but an example is an example. We have a text (above this section), we have a session prompt (SoNia), and thus we can create an AI agent for classifying papers like this. Here below the result of this approach:

- [Fixing your data with an AI agent](https://g.co/gemini/share/39699bbf6a12) &nbsp; an example by Gemini 2.0 Flash w/SoNia v3.5.3
+++++
- [Transcription of the above conversation](data/gemini-fix-your-data-is-a-postponing-excuse.txt#?target=_blank) &nbsp; in 80 cols text and redundancy stripped.

As we can read at the end of the conversation, the AI agent considers itself trained "good enough" to start its work on a subset of the data (papers collection) which will lead to a fine-tuning in the final data cleaning (or rectification) process.

...

#### Rejection threshold

- set an expected percentage of rejected items to increase its confidence in using that label.

#### Item-level report

- define a way to create the report for each item that has been examined, with the scores table.

These two further steps would significantly increase the value of the AI agent work. However, for an initially small subset, the first can be guessed among a reasonable value while the second can be postponed or left to the AI agent to determine how to create the report.

---

### Interactive approach wins

In practice both can be achieved along the same process in which the AI agent learns from data under the guidance of the human operator, who does the training and decides which correctives are necessary to apply leveraging data science theory and practice.

This interactive process that goes through different phases of progressively improvement in data cleaning and rectifying the rules, is similar to the SCRUM but with an AI agent as a developing team and the human operator as the SCRUM master.

+++++

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
