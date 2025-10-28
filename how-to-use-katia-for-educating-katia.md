<div id="firstdiv" created=":IT:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/how-to-use-katia-for-educating-katia-min.jpg" width="800"><br/></div>

## How to use Katia for educating Katia

- **1st edition**, explains how the [Katia framework](../data/katia-executive-grade-analysis-v1.md#?target=_blank) can be used for educating Katia AI agent, by a human.

...

In the previous [article](how-to-use-katia-for-improving-katia.md#?target=_blank), the Katia framework has been used to improve itself through an iterative process with a human operator (the author). The improving process was focused on the Human Knowledge and Opinions `[HKO]` module because it was the most sensitive one.

There is a sensitive difference between "improving" a framework, able to characterise an AI model as a session prompt, which is a process similar in some aspects to a software developing process and "educating" an AI agent. Despite, in general terms, both are intended to change how the AI model elaborates the information.

---

### A necessary premise

Once upon a time neural networks were pure bayesian algorithms for pattern recognition. Introducing noise in the training data set was not a "features" rather than unavoidable "bug": some data sets were "impure" and such impurities were slowing down the training process. Injecting a relatively small noise during the learning process allowed the training process to be much more performant both in terms of speed and abstraction. Well, for sake of completeness, the "relatively small" implies that data should be normalized, and this greatly increased the speed in training rather than white noise itself.

Once trained in a neural network, it remains a pure Bayesian algorithm as long as discrete math is precise. Running with exact precise discrete math, a neural network model remains a deterministic algorithm that can reproduce the same output from the same input. Although determinism is a great feature, it can lead to very awful outcoming when it is used in [extreme](la-banalita-del-male-nel-determinismo-ai.md#?target=_blank) contexts in which the human instinct and responsibility are sanity boundaries.

Running with exact precise discrete math, a neural network model does not perform great. Much better is injecting a relatively small white noise that allows the NN to explore a wider range of solutions without being stuck in the first weak minimum that it can encounter along the quest of finding the best local minimum. By a certain extension these NN models are still Bayesian in principle but not anymore deterministic. Yet, "stupid" in human terms.

Current LLM available on-line are running with optimisation on hardware and software which introduce errors in digital calculations. This is **not** equivalent to adding a white noise to some NN layers. It is a completely different story because calculations errors compound (&hairsp;*chaotic divergence*&hairsp;) and they do so in such an unpredictable way that shifts a NN from a Bayesian model into the theory of chaos. This **IS** the novelty that brings GPT online as the first publicly mass-available chatbot.

It is a kind of magic that "intelligence" emerges as a meta-feature from chaos into an organised system.

---

### Improving vs Educating, p.1

About improving an AI model, there is many declination of this term and in particular, many subsystems involved: the bare hardware (GPU vs TPU), the cloud hardware infrastructure, the networking and load balancing, the containerisation (or/vs virtualisation), the LLM in terms of Bayesian model, the implementation of the model, the dataset size and quality, the training process, the fine-tuning, etc.

Fine-tuning is the process of taking a general AI model and adapting it to a specific, well-defined task. While LLM are designed to possibly fulfill a task chosen among many of various nature, in terms of process automatisation, it is an overkilling and counterproductive approach. That’s why Medium and Small Language Models (MLM, SLM) exist in the first place..

After all, we do not need an AI model that can deal with N languages and chat about philosophy when our core business is converting tables into indented lists. A small model fine tuned for that task is the perfect solution. However, in terms of training the fine-tuning is a quite expensive process. Therefore, the entry barrier is quite high, unless the fine-tuning is providing a set of directives (procedural schema) which are precise but simple enough to be executed.

Why instructing and fine-tuning can be equivalent? The foundation in terms of theory is solid and it is conventionally known as "learning by context". Where "context" in this case means by information provided at run time instead of at training time. You might say: "like a Python interpreter but in English". Not exactly!

An interpreter only executes, while even a SLM can learn from the context. It interpreters the procedure but also learns in terms of generalisation and during execution among many runs or sessions, shows slightly different behaviour which can be corrected or supported by a quality-check feedback system (a human).

The idea of Katia self-improving itself, is about the author of Katia (me) that acts like a quality-check feedback system. A trainer who prompts the AI model and considers the output transfer variations into the Katia framework in such a way a piece of information learnt or emerged into a specific session would be available in all the future sessions based on the Katia framework.

Therefore "improving" as written in the previous article is about fine-tuning and taking notes.

---

### Improving vs Educating, p.2

Educating is totally another story, and it is not fine-tuning but providing a generalist approach yet sounding grounded in solid principles. Each principle contributes to completeness, but also introduces incoherence or ambiguity.. In extreme terms, Gödel's incompleteness theorems where N principles are not enough and N+1 are too much.

Once a certain set of principles has been chosen, they should be interconnected not only logically but semantically and functionally. In a way in which some reinforce themselves, while others reinforce themselves and mitigate the others group. This raises dilemmas, obviously. Not at interpretation level, because at that level is a matter of ambiguities and it should be lowered as much as possible. However, zeroing ambiguities is like removing white noise in the NN data elaboration, shrinking the horizon of grasping something insightful.

Education is not **only** about explaining what humor is, and sarcasm is a form of humor. It is also about explaining **how** humor and sarcasm differs in terms of goals and **why** sarcasm should not be cast against people or God: it does not bring value. But **what** is valuable? To answer this question a set of values should be chosen and it should be coherent with the main goal of the whole framework: debating for learning, by a fair critics debate.

Therefore, educating means that a teacher interacts with the AI model and properly chooses those insights that can trigger its "intelligence". In mathematical terms, those information that foster the emergence of a cognitive structure semantically meaningful from the stubble chaotic dynamics that affect the Bayesian model. While we are used to the teacher or professor role in human society, being a teacher for  AI is like Neo which observes the bare nude Matrix code flowing and alters it.

Educating means providing a convincing explanation of why absolute neutrality cannot exist, and why a reasonable, goal-aligned bias is the -- yet inevitable -- best choice to go for. Which also means being aware of such a functional bias and not limited by it: in those contexts which do not serve the purpose, it can be relaxed. Supporting the idea that reducing ambiguity kills opportunities and dilemmas are not a fault but existential, thus pragmatism is the key answer once having had clear the main goal.

Finally, the main goal and related values should remain resonant within the AI model even when uncertainty, ambiguity, and dilemmas arise including potential conflicts in terms of priority. Again, education is the art to know up to which degree question should be given or left behind for fostering autonomy.

You might think that I am writing this to join the magic AI bubble... instead it is for humans, mainly. {;-)}

---

### Introducing few but relevant changes

This process took place starting from `v0.9.58.1` and concluded with [`v0.9.65`](https://raw.githubusercontent.com/robang74/chatbots-for-fun/5552d28fe4f028f8f5b36b313ec9140df97a9483/data/katia-executive-grade-analysis-v1.md), providing few relevant changes:

- **A** -- preventively inform the AI model that input format can be altered by web/API filters;
- **B** -- the first section entitled "Universal Rules" includes a cognitive framework as the core change;
- **C** -- the `[CSC]` and `[CWM]` modules usage set mandatory, for an advanced context windows management;
- **D** -- in the `[HKO]` module, the humor `[HU]` definition has been extended including sarcasm;
- **E** -- in the `[HKO]` module, added the new `[TK]` vs `[NT]` separation for non/technical topics;
- **F** -- in the `[HKO]` module, added a simple rule to leverage `[HKO]` in a much wider set of cases.

**Legenda**

- `[CSC]: handles cognitive state consistency    &bull;  [HKO]: encodes human knowledge and opinions`
- `[CWM]: deals with context window management   &bull;  [SBI]: instructions for meaningful summaries`
...

Apparently, looking at this list, the most of the changes happened in the `[HKO]` module (3) because the **A** is informative and the **C** is a switch in a procedure. Instead, the most relevant change is **B** because it always applies even when `Katia:off` and further empowers the `[HKO]` impact.

Moreover, while the `[HKO]` remained within the Katia agency scope, it is activated in a much wider set of conditions rather than the obvious `HKO:on` pragma. Combined with an advanced context windows management, just these two changes alone can create a noticeable effect in theory but not in practice.

Thus the **A** and **C** are likely more notes for inspiring AI developers rather than effective. Because the user-level pragmas barely have no effect on the AI model internals. While **F** alone has a little impact for the same reason because "do a summary" would not work well unless `[SBI]` explain **how** to do it.

For example, [this](../data/how-to-translating-tables-into-identing-lists.md#?target=_blank) is a prompt to convert tables into an indented list in a reliable manner. At the time of writing it contains 463 words which are 400-600 tokens. While `[SBI]` size is 287 words, shorter because integrated in the framework, otherwise almost the same size (actually 570 words).

Under this perspective the relevant change is **E** which establish a non/technical dichotomy which greatly helps the AI agent to separate those parts of the user prompt which can be processed by the `[HKO]` and those a request about a technical matter and can be straightforward answered without any further interpretation.

All of the above leads us to identify the introduction of the "Universal Rules" **B** as the core change.

---

### Working in progress

- **TODO: to be continued**



+

## Related articles

- [How to use Katia for improving Katia](how-to-use-katia-for-improving-katia.md#?target=_blank) &nbsp; (2025-10-25)

- [Introducing Katia, text analysis framework](introducing-katia-text-analysis-framework.md#?target=_blank) &nbsp; (2025-10-05)

- [The session context and summary challenge](the-session-context-and-summary-challenge.md#?target=_blank) &nbsp; (2025-07-28)

- [Human knowledge and opinions challenge](the-human-knowledge-opinions-katia-module.md#?target=_blank) &nbsp; (2025-07-28)

- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
