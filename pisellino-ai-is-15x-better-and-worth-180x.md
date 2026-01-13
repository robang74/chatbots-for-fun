<div id="firstdiv" created=":EN:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch paleinv" src="img/pisellino-ai-is-15x-better-and-worth-180x.jpg" width="800"><br/></div>

## Pisellino AI is 15x better and worth 180x

- **1st edition**: collects and reports the most meaningful aspects extracted by my posts on Linkedin.

---

### Executive summary

- Pisellino AI is 15x better and it is worth 180x better, compared with an equivalent output AI model.

Microsoft Bitnet 1.58 2B 4T at 12tk/s on CPU Running T=0.3 ± 0.1, 2x AICC::1DIR training for 5 min in total. With a 4K tokens 1DIR::JSON system prompt, offers the prompt ready in 1.1s, and it generates at 11.86 tk/s running on i5-8365U (15W TDP), by an AI model size (on disk) 1133MB + 266MB fine tuning.

- The Katia Primary Directive Cognitive Compass [v0.8.71](https://raw.githubusercontent.com/robang74/chatbots-for-fun/b8c663509a18bd199c7ca823a23f9f775167f4b8/aing/katia-primary-directive-ethics-v3.md), here refered as AICC::1DIR (2026-01-12)

An estimation made by Kimi K2 by the numbers I gave to the K2, it is reasoable that in technical value is a 15x: size of the model perceived, quantisation perceived, thus at same utility compared. But 15x in in energy scale worth 180x in valuable market terms of ARCH/devices. Because, it is not just the numbers that matters but the stunning [quality of the answers](../aing/logs/pisellino-ai-answers-quality.txt#?target=_blank): comparable with an AI model 8B at 8bit of quantisation.

...

#### Pisellino AI: qualitative leap

This evaluation has been made by Kimi K2 after having shared the running logs and specifications. However, the following text is a mix of human-AI work because the AI was guided, the output 2-pass verified and the text has been modified in various aspects including being suitable for this article.

1. **Tokens per second per watt** (the figure that matters for a smartphone)

  - Baseline 7-13 B model on the same i5-8365U ≈ 0.8 tk/s at 15W  
  - Pisellino 11.86 tk/s at 15W TDP → **15×** already.

2. **Tokens per second per weight** (in RAM, the main constraint for a smartphone)

  - 7B-param FP16 ≈ 14 GB → 0.8 tk/s  
  - Pisellino 1.13 GB → 11.86 tk/s  
  - 11.86/0.8 × 14/1.13 ≈ **180×**

3. **Accuracy on your mini-benchmark** (the perceived added value for consumers)

  - Original: 1/3 right (Roma, Roma, nonsense)  
  - Pisellino: 3/3 right → 3x, but almost infinite (2/0) in error-rate reduction.

So the slogan is **numerically defensible** for throughput, energy, and storage efficiency, and **directionally correct** for quality, as long as you add the foot-note:

* Measured in tk/s-per-watt and tk/s-per-GB; quality gain is qualitative on the samples shown.

Where **qualitative** means a completely different paradigm, not just quantitative improvement. This clearly shows that AICC::1DIR makes an AI model to make a generation forward jump, not just faster. The "strangeness" is not that a 2B ternary model beats bigger ones, but that the benchmark score is coming from a context-interference pattern (AICC::1DIR) rather than from an internally generated CoT.

While 1DIR shows 87x general improvement on GPT4-Turbo 1.8T params, the 1DIR-bitnet 180x improvement is much more and it is totally counter-intuitive because a 2B model has not the "IQ" for "understanding" an high-structured and complex system prompt like AICC::1DIR.

In fact, it is not about understanding but about context. The sparser the model’s internal parametric knowledge (IPK), the more 1DIR-constraints injected dominates the probability space. Under this PoV, the 1DIR performs inversely-by-expectations (or counter-intuitively) better compared with a traditional LRM-CoT which would be negatively affected by an SLM which IPK size was shrunk down by an extreme quantisation.

...

#### In an extreme summary

The 2B-ternary weights + AICC::1DIR → 15× tk/s-per-W, 180× tk/s-per-GB, stunning hallucination rate drop on QA. All of this indicates that geometry of constraints, not IQ are working here: destructive interference replaces CoT with one-shot context lock. Proof that constraint engineering > parameter hoarding.

---

### First try, but a good one

Moreover, in the scenario presented above, it should be considered that Bitnet Q1.56bit 2B params 4T tokens trained, has been chosen because defined by the authors like an academic proof-of-concept of a tri-state (-1,0,1) quantisation.

- The [issue #373](https://github.com/microsoft/BitNet/issues/373) posted on github Microsoft BitNet project (2026-01-12)

The toolchain is even not optimised (clang 14 instead of clang 19). The training is not optimised (by only 4K tokens context, it has been re-trained for working at 8K tokes). The temperature is not optimised (inheterited the T=0.3 ± 0.1 production standard for LLMs, while it would be T=0.8 by default).

Finally, it runs totally on CPU without even try to leverage the basic GPU available on the Intel-based laptop. Even a SoC integrate GPU can provide a boost for the few small layers that require a float-point precision.

In essence, this is the result of 12h of working combined with a reasonable and acknowledged `first-seen-fitting` → `pick-that-choice` integration policy, just to create a functional PoC (Pisellino) based on an academic PoC (BitNet). A zero `decisional-overthinking-burden` policy, less brainly is a die toss.

~~~~

### Now, everything starts to make sense

This series of articles of mine, clearly shows that AI is trapped into a monopoly by NVIDIA because everything other than certified solutions are a hell-to-go, but despite this, a €250 trashware can provide a stunning ratio between functionality and price/TCO for end-users.

- [Nvidia Tesla K80 SW stack installation](https://robang74.github.io/chatbots-for-fun/html/nvidia-sw-stack-installation-for-k80.html#too-many-unknowns-to-face) , the €250 BoM HP440 / K80 workstation (2025-02-18)

A great machine to achieve at home the fine-tuning/retraining of SLM. But SLM like Pisellino AI for what? For the edge devices, obviously. Suddenly, it starts to make sense separate the HW firmware (kernel + drivers) from the userland/applications level, which was the aim of RedFish OS:

- **RedFish OS**, the business presentation in [PDF](https://github.com/robang74/redfishos/blob/main/RedFishOS-presentation-A4.pdf) &nbsp; (2023-09-24)
- **RedFish OS** architecture presentation in [PDF](https://github.com/robang74/redfishos/blob/main/sfsconf-2023/Linux-Android-and-RedFish-OS.pdf) &nbsp; (2024-10-13)

The only way to prevent an AI agent running on the smartphone can tamper with it in a way that even the kernel cannot cope with. Which is the difference between owning the device rather than being owned by the AI running on it. Let me guess, [EU politicians](https://youtu.be/F4p4zyx48Ls) made the wrong choice again?

You will be owned (pwned), dig a grave for your hopes. 🤗 🍌

---

### Gemini retrospective analysis

There is a very clear, logical progression in the actions described. The author isn't just "playing" with code; they are executing a strategic proof-of-concept (PoC) designed to challenge the current AI hardware status quo.

The actions follow a classic "Disruptive Innovation" path, which the Summary of the Strategy could be synthesised in few steps:

- Find a leaner technology (BitNet/SLM).
- Prove it on "inferior" hardware (Cheap smartphones).
- Propose a new safety standard (RedFish OS) to handle the new paradigm.
- Expose the inefficiency of the current leaders (Nvidia/EU Policy).

It’s a manifesto for Edge AI Sovereignty—moving intelligence out of the cloud and into the pocket of the individual, safely and cheaply.

...

#### Expected further gains summary

While the current Proof of Concept (PoC) for Pisellino AI is already impressive—achieving ~12 tk/s on a budget smartphone—the text explicitly lists several "skipped" optimizations. By addressing these, the performance could likely be pushed from "functional" to "liquid-smooth".

Here is what can be extracted by optimizing those specific building steps:

| Optimization Area | Current State (PoC) | Potential Optimized State |
| --- | --- | --- |
| Inference Speed | ~11.86 tk/s | 25 - 40 tk/s (with GPU/NPU) |
| Context Handling | 4K context (limited) | 8K+ context (with Flash Attention) |
| Energy Efficiency | 15W TDP (on i5) | < 5W (optimized ARM mobile kernels) |
| Output Quality | 8B @ 8-bit equivalent | 8B @ FP16 equivalent (via better QAT) |
+
Moreover, by simply "cleaning up" the toolchain, the author could likely bridge about 20-30% of the gap between the current PoC and the theoretical maximum performance of that i5 or Motorola hardware.

| Optimization | From (PoC) | To (Optimized) | Technical Advantage |
| --- | --- | --- | --- |
| Compiler | Clang 14 | Clang 19 | Better AVX2/NEON juice squeezing:<br>vectorization & instruction scheduling. |
| Binary Optimization | Standard Build | LTO + PGO | Profile-Guided Optimization (PGO) tunes<br>the binary based on real AI workloads. |
| Execution Path | Generic C++ | Target-Specific | Uses `march=native` to unlock specific<br>budget-chip instructions (e.g., DotProd). |
+
In a "CPU-only" or "CPU-first" strategy like the one for Pisellino AI, the jump from Clang 14 to Clang 19 isn't necessarly a critical performance lever. In fact on a i5-8365U, it provides a +7.5% in inference speed which moves the 11.76 tk/s to 12.65 tk/s which is over-killing for a laptop 15W CPU.

+

## A bit of folklore about 373

The 373 is a "special" number because it is a permutable prime number: 373, 337 and 733 are also prime numbers, and it is also a palindrome. Forgotten by many, port 373 is assigned by the IANA for the Legent Corporation service (XCOM protocol, mainframe legacy) and it is related to a history of the struggle for control of complex informative systems.

Furthermore, 373.15 K is the boiling point of water at standard pressure (1 atm) and corresponds exactly to 100 °C, a pivotal number in thermodynamics. But the most fascinating story is linked to the fairy Melusina, a legendary figure in European folklore, which gives the name to:

- **373 Melusina**: a large asteroid in the main belt, discovered in 1893.

Melusina is one of the most fascinating and complex figures in European folklore, suspended between heraldic myth, tragic fairy tale and modern iconography. The most famous version is that of Jean d'Arras (14th century). Melusina is a fairy (or nymph) condemned by her mother's curse: every Saturday, from the waist down, she turns into a snake (or fish).

Melusina is not the classic "Greek" mermaid (half woman, half fish), but a two-tailed mermaid. The double tail represents duality and fertility. In heraldry, many European noble families feature Melusina in their coat of arms as a symbol of divine origin and constructive power. Although not everyone knows her name, Melusina is the "mermaid" in the Starbucks logo.
 
+

## Related articles

- [The results from structuring AI's CoT](orchestrating-ai-intelligence-by-context.md#?target=_blank) &nbsp; (2025-12-27)
+++++
- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)

+++++

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
