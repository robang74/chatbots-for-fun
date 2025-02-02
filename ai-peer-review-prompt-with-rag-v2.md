<div id="firstdiv" created="2025-02-02:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#version2 { position: absolute; top: 37%; left: 47.5%; transform: translate(-50%, -50%); background-color: rgba(255, 0, 0, 0); color: red; font-weight: bold; font-size: 64px; -webkit-text-stroke: 0.1em yellow; -moz-text-stroke: 0.1em yellow; text-stroke: 0.1em yellow; }</style>

<div align="center"><img class="wbsketch inksave" src="img/peer-review.png"><div id="version2"><h1>v2</h1></div><br></div>

## The peer-review session prompt v2

This article is the prosecution of these this previous articles:

* [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-21)

+

## Introduction

I have noticed that sometimes even the online chatbot ignores the scope of the document under peer-review and moreover and they tend to assess the validity of a claim in a general sense without considering what belongs to the author and external sources like citation.

This leads them to provide the user a subtle confusing feedback in certain cases. This becomes appalling when in rating a claim focused on debunking an urban legend, they rate the urban legend instead of the debunking process which is within the scope of the document and the aim of the author.

Another question left open by the [previous prompt](data/alex-peer-review-with-rag.txt?target=_blank), which has been upgraded to v1.5 in the meantime, is about how to deal with a document that is longer than the AI's context window. When this happens, they tend to ignore the central part of the document.

Both issues are not very impactful in my case because I have the habit to peer-review a document in parts and then the whole plus, I am used to challenging the chatbot about its peer-review. Due to this way of proceeding, I was able to identify corner cases and limits of their implementation of the peer-review process.

Which brought me to repeat very similar prompts after the first one in order to add directives. Which is not the best way of proceeding despite each chatbot has its own way to leverage its technology to fulfil the task, some common guidelines can be identified in order to quicker and more reliably achieving the result.

So, here we are, again! {:-)}

---

Here below the link to the second version of the session prompt for peer-reviewing documents:

- [alex-peer-review-with-rag-v2.txt](data/alex-peer-review-with-rag-v2.txt?target=_blank)

which includes the [final version](#final-version) of the guidelines. However, I think that some glimpses about how this final result has been achieved are worth of being shared here below.

+

## Guidelines <br><sup>&ndash; 1st draft &ndash;</sup>

a) Considering that every document has necessarily a limited scope and can contains citation or claims from other sources than the author, hence it is fundamental to rate the claims the author of the document states independently by the others and in particular the authors claims should be evaluated within the scope of the document and eventually in a separate rating in a more general context when the scope of the document is sensitevily narrow or peculiar.

b) The ${document} can be specified in the next prompt and it can be longer than the context windows hence it should be tokenized and peer-reviewed part by part in such way that every part can reasonably fit within the context window.

c) When the ${document} is split in parts, then use titles and subtitles to split it and when presenting the related peer-review to the user states with a "from-to" formula, extremes includes, which part of the analysis have been provided, waiting for a user prompt to proceed further.

d) When all the parts of the document has been examined, then it is possible to leverage the tokenization and the information given by the user through the various prompt to provide an overall analysis of the document in general.

e) Finally, at the end of the answer about containing the whole document peer-review, offer to the user to write an short introduction to the document in which you will present the strong points, the limitations related to the content or the scope of the document or about the specific audience towards the document aims to speak to.

+

## Gemini 2.0

Prompted as followed, only the most significative and relevant prompts.

...


I am writing a second version of a session prompt for peer-reviewing a document. That prompt is supposed to leverage the tokenization and a RAG approach as much as it is available. I am pretty happy with the first version of that prompt. Now it is time to add some guidelines to cope with some limitations that AI models and people have in a way they can cooperate efficiently and clearly understand each other.

Evaluate the following guidelines and suggest how to improve them, eventually providing your own proposal for each of them, separately.

...

I like all of them but we need to work a little bit on the b). In fact, some AI models require to be instructed specifically using the term tokenization of the text to activate that specific subsystem. Even if you consider this not relevant for you, it is important that the prompt will be suitable for different chatbot, systems and AI models.

...

This part

- For optimal performance with certain AI models, this segmentation process may involve internal tokenization

is descriptive, not instructing. I wish something like:

- This segmentation process will leverage tokenization as much as possible as far as it is available

This is because for some systems the tokenisation is seen as an external support to the AI model not something integrated within it. Which is a reasonable choice for some architectures which aim to use as few resources as possible, like local running AI models. Which is also the reason because asking them to leverage tokenisation is necessary even if the RAG system has been activated by the user interacting with the UI.

...

I see your points, good. So, I am going to maintain the c) version you initially gave to me. However the `[] ()` sequence is just a white-space away from being misinterpreted as a link in markdown syntax and this can lead to a mistake in certain corner cases.

- "Segment X: ${Title/Subtitle, if available} ${Paragraphs Y-Z}"

This above instead clearly leverages the bash paradigm of identifying variable names. Is it clear for you?

...

+

## ChatGPT 4.o

Prompted as followed, only the most significative and relevant prompts.

...

It is important that the guidelines are clear also for non-native English users because people will not adopt something that they would not understand (or less keen to adopt, in theory). The next step is to improve clarity and at the same time shorten the text length. Both are important, hence clearer and shorter, both. Which is THE real challenge of this task, balancing a short form, conserving almost the same meaning and functionality and possibly also improving clarity.

...

Your version of the e) guideline leverages a highly-educated English that is not quickly clear in its meaning to the people for whom English is not the mother tongue.  Hence, I decided on this one. Can you relate?

...

I think that b) and c) guidelines are overlapping in part and I think that a better separation between the two will make them both clearer and shorter in avoiding redundancy.

   `[... omissis ...]`

I do not see any particular improvement here. I am happy, because this means that we reach the best we can do at this point. Time to try the opposite approach. Unite these two guidelines in one only trying to improve its clarity and shortening its length.

+

## DeepSeek 3

After having realised that DeepSeek outputs are LaTEX sensitive, I have prompet the AI in this way.

### Prompt #1

Suggest me another char than `$` to associate to `{variable}` in order to do not conflicts with markdown, html, latex or shell scripting.

...

### Answer #1

To avoid conflicts with Markdown, HTML, LaTeX, or shell scripting, you can use a character that is less likely to be interpreted as a special symbol in these contexts. A good alternative is the at symbol (@). It is rarely used as a delimiter in Markdown, HTML, or LaTeX, and while it has some meaning in shell scripting (e.g., parameter expansion in some shells), it is less likely to cause issues in your specific use case.

+

## Feedback collection

Finally, I returned back to **Gemini 2.0** previous session related to the initial work on the prompt for asking its opinion on the final version.

...

These refined guidelines are excellent!  They are concise, clear, and cover all the essential points effectively.  Reducing the number of guidelines has made them easier to digest and remember.  Here's a breakdown of what I like:

* **a) Focus on author's claims** - This is well-structured and clearly explains the distinction between author's claims and external references. The use of [SPC] and [GNR] for labeling is concise and effective.

* **b) Document segmentation and tokenization** - This guideline is very clear about the segmentation process and the labeling format. The inclusion of "natural breaks" provides helpful guidance.  The instruction to "preserve the overall context" is crucial.  The prompt for user confirmation is also essential for managing longer documents.  The bash-like variable notation is also very clear.

* **c) Overall analysis** - This guideline clearly outlines the purpose of the overall analysis and emphasizes the importance of synthesizing information from individual reviews and user feedback. The instruction to "conserve as much as possible from the original text, including style and the aim" is particularly valuable; it encourages the AI to respect the author's work.

* **d) Executive summary, optional** - This guideline is concise and clearly explains the purpose and content of the executive summary.  The recommendation to suggest revisions for negative assessments is a helpful addition.

**Conclusion**

These guidelines are well-written, comprehensive, and easy to follow. They provide a good balance between being instructive and allowing for flexibility. The use of clear labels and the emphasis on preserving context and style are particularly commendable.  I have no further suggestions for improvement. They are ready to be used.

+

## Guidelines <br><sup>&ndash; v2 final &ndash;</sup>

**a) Focus on author's claims** - Evaluate the author's claims in the document, separate them from citations or external references. Check the evidence and reasoning for each claim. If the document is very narrow or specialized, you may also evaluate the claims in a broader context. Label the evaluations as "within-scope" [SPC] or "broader context" [GNR].

**b) Document segmentation and tokenization** - If the @{document} exceeds the model’s context window, break it into segments at natural breaks (e.g., paragraphs, sections, titles, subtitles, or topic shifts). Label each segment using the format "Segment X: @{Title|Subtitle} (@{Paragraphs Y-Z})". Process each segment separately while preserving the overall context, and prompt the user for confirmation before moving on.

**c) Overall analysis** - After reviewing all segments, provide an overall analysis that combines insights from each review and user feedback. Highlight recurring themes, strengths, and weaknesses, and offer clear, actionable recommendations trying to conservate as much as possible from the original text, including style and the aim.

**d) Executive summary, optional** - At the end of the peer-review process, offer an optional executive summary upon user request. The summary will briefly note the document's strengths, limitations (in content, scope, and target audience), and overall assessment. If the assessment is negative, recommend revising the document.

+

## Related articles

* [AI peer-review prompt with RAG](ai-peer-review-prompt-with-rag.md#?target=_blank) &nbsp; (2025-01-21)

* [AI system prompting to leverage RAG](ai-system-prompting-to-leverage-rag.md#?target=_blank) &nbsp; (2025-01-13)

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


