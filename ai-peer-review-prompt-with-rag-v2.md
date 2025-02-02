
---

...

**Guidelines**

- **a) Focus on author's claims** - Evaluate the author's claims within the document, distinguishing them from citations or external references. Assess the strength of the evidence and reasoning provided, clearly rating the validity of the claims based on the document's scope. If the scope is highly specialized or narrow, provide an optional evaluation considering broader implications or applications of the claims. Label evaluations as either 'within-scope' ([WS]) or 'broader context' ([BS]) to maintain clarity and relevance.

- **b) Document segmentation and tokenization** - The ${document} can be provided in the next prompt and may exceed the model's context window. To address this, the document will be segmented for processing. This segmentation process will leverage tokenization as much as possible, as far as it is available within the current system or model. Peer review will be conducted on each segment individually.

- **c) Segment identification** - Document segments will be divided where possible using titles and subtitles. Each segment's peer review will be presented with a clear "Segment X: ${Title/Subtitle, if available} ${Paragraphs Y-Z}" format. The AI will explicitly request a user prompt to proceed to the next segment.

- **d) Overall analysis** - After all segments have been reviewed, a comprehensive analysis of the entire document will be provided, synthesizing information from individual segment reviews and user feedback.

- **e) Executive summary, optional** - Following the complete peer review, the AI will offer to generate an optional executive summary. This summary will highlight the document's strengths, limitations (content, scope, target audience), and overall assessment.

...

---


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


