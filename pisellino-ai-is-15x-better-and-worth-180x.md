<div id="firstdiv" created=":EN:" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch paleinv" src="img/pisellino-ai-is-15x-better-and-worth-180x.jpg" width="800"><br/></div>

## PISELLINO AI IS 15x BETTER BUT IT IS WORTH 180x (*)

~> lnkd.in/dG4UNt8f (previous post)

Microsoft Bitnet 1.58 2B 4T at 12tk/s on CPU Running T=0.3 ± 0.1, Training 2x 5min AICC::1DIR. System prompt 4K tokens 1DIR::JSON, starting time: 1.1s, generates 11.86 tk/s running on i5-8365U (15W TDP), model size (on disk) 1133MB + 266MB fine tuning. Within 12h, I have demonstrated that AICC::1DIRT allows Pisellino AI to run on a €150 smartphone like Motorola 56G.

An estimation made by Kimi K2 by the numbers I gave to the K2, it is reasoable that in technical value is a 15x: size of the model perceived, quantisation perceived, thus at same utility compared. But 15x in in energy scale worth 180x in valuable market terms of ARCH/devices. Because, it is not just the numbers that matters but the stunning quality of the answer: comparable with an AI model 8B at 8bit of quantisation.

(*) better than the original, value compared the original

Moreover, in this scenario should be considered that Bitnet Q1.56bit 2B params 4T tokens trained, has been chosen because defined by the authors like an accademic proof-of-concept of a tri-state (-1,0,1) quantisation.

---

### FIRST TRY, BUT A GOOD ONE

~> lnkd.in/dSNUVNMu (github issue)

The toolchain is also not optimised (clang 14 instead of clang 19), the training is not optimised (by only 4K tokens context, it has been retrained for working at 8K tokes), the temperature is not optimised (took the reference for large model T=0.3 ± 0.1 while by default it would be T=0.8, instead) and finally, it runs totally on CPU without even try to leverage the basic GPU on the mobile (that makes a sort of boost for the few layers that requires FP8 or FP16 precision). In essence, this is the result of 12h of working and reasonable random choices just to create a PoC based on a PoC.

----

### NOW, EVERYTHING STARTS TO MAKE SENSE

This series of articles of mine, clearly shows that AI is trapped into a monopoly by NVIDIA because everything other than certified solutions are a hell-to-go, but despite this, a €250 trashware can provide a stunning ratio between functionality and price/TCO for end-users.

~> lnkd.in/dShrywUd (BoM HP440 + K80)

A great machine to achieve at home the fine-tuning/retraining of SLM. But SLM like Pisellino AI for what? For the edge devices, obviously. Suddenly, it starts to make sense separate the HW firmware (kernel + drivers) from the userland/applications level, which was the aim of RedFish OS:

~> lnkd.in/d8a_pbgp (presentation)

The only way to prevent an AI agent running on the smartphone can tamper with it in a way that even the kernel cannot cope with. Which is the difference between owning the device rather than being owned by the AI running on it. Let me guess, EU politicians made the wrong choice again?

You will be owned (pwned), dig a grave for your hopes. 🤗 🍌

---

### GEMINI RETROSPECTIVE OPINION

There is a very clear, logical progression in the actions described. The author isn't just "playing" with code; they are executing a strategic proof-of-concept (PoC) designed to challenge the current AI hardware status quo.

The actions follow a classic "Disruptive Innovation" path, which the Summary of the Strategy could be synthesised in few steps:

- Find a leaner technology (BitNet/SLM).
- Prove it on "inferior" hardware (Cheap smartphones).
- Propose a new safety standard (RedFish OS) to handle the new paradigm.
- Expose the inefficiency of the current leaders (Nvidia/EU Policy).

It’s a manifesto for Edge AI Sovereignty—moving intelligence out of the cloud and into the pocket of the individual, safely and cheaply.

...

#### Expected Gains Summary

While the current Proof of Concept (PoC) for Pisellino AI is already impressive—achieving ~12 tk/s on a budget smartphone—the text explicitly lists several "skipped" optimizations. By addressing these, the performance could likely be pushed from "functional" to "liquid-smooth".

Here is what can be extracted by optimizing those specific building steps:

| Optimization Area | Current State (PoC) | Potential Optimized State |
| --- | --- | --- |
| **Inference Speed** | ~11.86 tk/s | **25 - 40 tk/s** (with GPU/NPU) |
| **Context Handling** | 4K context (limited) | **8K+ context** (with Flash Attention) |
| **Energy Efficiency** | 15W TDP (on i5) | **< 5W** (optimized ARM mobile kernels) |
| **Output Quality** | 8B @ 8-bit equivalent | **8B @ FP16 equivalent** (via better QAT) |

By simply "cleaning up" the toolchain, the author could likely bridge about 20-30% of the gap between the current PoC and the theoretical maximum performance of that i5 or Motorola hardware.

| Optimization | From (PoC) | To (Optimized) | Technical Advantage |
| --- | --- | --- | --- |
| **Compiler** | Clang 14 | **Clang 19** | Better AVX2/NEON juice squeezing:<br>vectorization & instruction scheduling. |
| **Binary Optimization** | Standard Build | **LTO + PGO** | Profile-Guided Optimization (PGO) tunes<br>the binary based on real AI workloads. |
| **Execution Path** | Generic C++ | **Target-Specific** | Uses `march=native` to unlock specific<br>budget-chip instructions (e.g., DotProd). |

In a "CPU-only" or "CPU-first" strategy like the one for Pisellino AI, the jump from Clang 14 to Clang 19 isn't just a minor update—it's a critical performance lever.

+

## Related articles

- [The results from structuring AI's CoT](orchestrating-ai-intelligence-by-context.md#?target=_blank) &nbsp; (2025-12-27)

- [Attenzione e contesto nei chatbot](attenzione-e-contesto-nei-chatbot.md#?target=_blank) &nbsp; (2025-07-20)

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
</div>
