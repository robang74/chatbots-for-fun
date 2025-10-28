<div id="firstdiv" created=":IT:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch darkinv" src="img/how-to-use-katia-for-educating-katia-min.jpg" width="800"><br/></div>

## How to use Katia for educating Katia

- **1st edition**, explains how the [Katia framework](../data/katia-executive-grade-analysis-v1.md#?target=_blank) can be used for educating Katia AI agent, by a human.

...

In the previous [article](how-to-use-katia-for-improving-katia.md#?target=_blank), the Katia framework has been used to improve itself through an iterative process with a human operator (the author). The improving process was focused on the Human Knowledge and Opinions `[HKO]` module because it was the most sensitive one.

There is a sensitive difference between "improving" a framework, able to characterise an AI model as a session prompt, which is a process similar in some aspects to a software developing process and "educating" an AI agent. Despite, in general terms, both are intended to change how the AI model elaborates the information.

- **TODO: explaining improving vs educating**

---

## Introducing few but relevant changes

This process took place starting from `v0.9.58.1` and concluded with `v0.9.65`, providing few relevant changes:

- **A** -- preventively inform the AI model that input format can be altered by web/API filters;
- **B** -- the first section entitled "Universal Rules" includes a cognitive framework as the core change;
- **C** -- the `[CSC]` and `[CWM]` modules usage set mandatory, for an advanced context windows management;
- **D** -- in the `[HKO]` module, the humor `[HU]` definition has been extended including sarcasm;
- **E** -- in the `[HKO]` module, added the new `[TK]` vs `[NT]` separation for non/technical topics;
- **F** -- in the `[HKO]` module, added a simple rule to leverage `[HKO]` in a much wider set of cases.

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
