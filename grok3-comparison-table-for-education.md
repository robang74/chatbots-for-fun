<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch paleinv" src="img/grok3-comparative-analysis.jpg" width="800"><br></div>

## Comparative analysis for educational<br><sup>provided by Grok3 + author's info box(es)</sup>

> [!INFO]
> 
> This document has been created by [Grok3 AI](https://x.com/i/grok) once initialized with the peer-review session prompt [v3.4](https://raw.githubusercontent.com/robang74/chatbots-for-fun/7607d8e2b4e24edad69fdd13a85d33144b8acc31/data/alex-peer-review-with-rag-v3.txt) to challenge the Nvidia Tesla K80 SW stack installation [rev. 27](https://raw.githubusercontent.com/robang74/chatbots-for-fun/a068abbd2ae785f016409b1f4ef1c979ea9e469f/nvidia-sw-stack-installation-for-k80.md) article and beyond. Providing the AI agent with information and links that I have collected about the used and refurbished PC desktop markets, I asked it to provide a comparison among different alternatives to the Esprimo P910 with Tesla K80 option, using my dual-system proposal as reference, rating them for practical use with AI workloads and educational purposes as DIY projects.

- This paper is part of the Esprimo P910 w/ Tesla K80 [installation manual](p910-k80-installation-manual-intro.md#?target=_blank) serie.

Hello! I'm AleX, and I'll create a comprehensive comparison table for all the options you've suggested throughout our discussion. This includes your dual-system setup (P910 WS with GTX 1050 Ti + newer WS with Tesla K80), the Nvidia Shield pair, the recent Xbox (Series X), and the refurbished GTX 1050 Ti-equivalent WS, plus the higher-end refurbished WS with RTX 4060. The table will focus on key metrics for running a local AI agent with occasional training/fine-tuning: compute (CUDA cores, threads), memory (GPU and system RAM), cost-effectiveness (cores/€, MB/€), total cost, effort, and practical/educational ratings.

---

### Criteria

Educational value hinges on knowledge gained, skills taught, and insights offered, even in failure. I'll rate this as a "claim" of educational merit, aligned with the document's perspective (a learning journey), using [RTS]:

- 100%: Universally valuable -- teaches widely applicable skills and deep insights.
- &nbsp 90%: Valuable with minor gaps -- strong lessons, slight limits in scope.
- &nbsp 75%: Plausible value -- useful but unproven in broader impact.
- &nbsp 50%: Mixed value -- equal strengths and weaknesses.
- &nbsp 25%: Limited value -- minimal lessons, niche scope.

~~~~

### Comparison table

| Config             | Cores | Thr | VRAM | RAM  | Cost  | Cores/€ | VRAM/€  | RAM/€ | Effort | Prct  | Educ | Avg |
|--------------------|-------|-----|------|------|-------|---------|---------|-------|--------|-------|------|-----|
| Dual-System WS/SRV | 5800  | 10  | 28GB | 48GB | €_498 | 11.65   | _57.43  | 98.80 | Medium | 90%   | 95%  | 92% |
| P910 with K80      | 4992  | _4  | 24GB | 16GB | €_190 | 26.27   | 129.49  | 86.23 | Medium | 75%   | 90%  | 83% |
| 2x Nvidia Shield   | ___0  | _8  | _2GB | _6GB | €_400 | _0.00   | __5.12  | 15.36 | High   | 25%   | 50%  | 38% |
| Xbox Series X      | ___0  | 16  | 10GB | 16GB | €_500 | _0.00   | _20.48  | 32.77 | High   | 25%   | 50%  | 38% |
| Refurb GTX 1050 Ti | _768  | 12  | _4GB | 16GB | €_799 | _0.96   | __5.12  | 20.48 | Low    | 50%   | 75%  | 63% |
| Refurb RTX 4060    | 3072  | 16  | _8GB | 32GB | €1100 | _2.79   | __7.44  | 29.80 | Low    | 75%   | 75%  | 75% |

#### Notes

1. **Dual-System Cost**: €408 (WS €147 + SRV €261) + €90 (accessories & used monitor) = €498.
   - **WS**: Fujitsu Esprimo P910 E85+ with Intel i5-3470 + Nvidia GTX 1050 Ti 4GB onboard; 
   - **SRV**: 2016/2018 Workstation (Intel i5-6500/8500, 4/8 threads) + Nvidia Tesla K80.
   - **Effort**: most of the effort includes PCIe compatibility hacks and K80 setup.

2. **Non-CUDA Systems**: Nvidia Shield and Xbox lack native CUDA support.
   - **Shield Hardware**: 2x Nvidia Shield devices with Tegra X1
      - Maxwell GPU, 256 cores, ~0.5 TFLOPS each), no CUDA support.
   - **Xbox Hardware**: Xbox Series X with Zen 2 CPU and RDNA 2 GPU
      - c.a. 12 TFLOPS FP32 need hacks (e.g., ROCm), unproven for AI.
   - **Effort**: high effort due to Linux and AI conversion hacks.

3. **Xbox Memory**: 16GB GDDR6 shared, 10GB usable for GPU at 560GB/s.

4. **Refurb RTX 4060 Cost**: €1200 - €100 (1TB SSD value) = €1100 tower only.
   - **Hardware**: e.g., Dell Precision 3660 with Intel i7-12700 + Nvidia RTX 4060.
   - **Effort**: low effort -- plug-and-play setup.

5. **MB Calculations**: GPU/System RAM in MB (GB x 1024) ÷ cost in €.
   - **Refurb GTX 1050 Ti Hardware**: e.g., Dell OptiPlex 7060 with Intel i5-8500.
   - **Effort**: low effort -- plug-and-play setup.

---

### Key metrics

- **CUDA Cores**: Total GPU compute units for AI (training/inference).
- **Threads**: CPU threads for parallel tasks.
- **GPU RAM**: Total graphics memory for models/datasets.
- **System RAM**: Total memory for OS/data handling.
- **Total Cost**: Full price including peripherals or tower-only for refurbs.
- **Cores/€**: CUDA cores per euro (shaders/€ for Xbox).
- **GPU MB/€**: GPU RAM in MB per euro.
- **Sys MB/€**: System RAM in MB per euro.
- **Effort**: Setup complexity/risk.
- **Ratings**: from prior analyses
   - Practical about AI performance,
   - Educational about learning value.

~~~~

### Analysis

Analysis of the various options as alternatives

#### Dual-System (€498)

- **Strengths**: 5800 CUDA cores, 28GB GPU RAM, 48GB system RAM, 8-12 threads,
  - WS (1050 Ti) runs inference/RAG on Ubuntu 24.04,
  - Server (K80) trains on ≤20.04 with 24GB,
  - Gigabit Ethernet ties it together.
- **Weakness**: Moderate effort P910 PCIe 75W install + K80 dual-PSU setup.
- **Edge**: Crushes all options in cost-effectiveness, memory, and AI training potential.

#### 2x Nvidia Shield (€400)

- **Strengths**: Compact, €400 for dual-unit potential.
- **Weaknesses**: No CUDA, 2GB GPU RAM total,
   - high effort (Linux hacks unproven).
   - Can't handle AI training or large models.
- **Edge**: None for AI -- gaming/entertainment focus.

#### Xbox Series X (€500)

- **Strengths**: 12 TFLOPS FP32, 16 threads, 10GB RAM, €500 with peripherals.
- **Weaknesses**: No CUDA, high-effort Linux/AI hacks, 10GB limits training vs. 28GB.
- **Edge**: Raw compute, but AI-unfriendly.

#### Refurb GTX 1050 Ti WS (€799)

- **Strengths**: 768 cores, 12 threads, plug-and-play, Ubuntu 24.04-ready.
- **Weaknesses**: 4GB GPU RAM, €799 costly for specs.
- **Edge**: Safe, modest inference, no training heft.

#### Refurb RTX 4060 WS (€1100)

- **Strengths**: 3072 cores (15 TFLOPS FP32), 16 threads, 8GB GPU RAM
   - modern CUDA 11.7, zero effort.
- **Weaknesses**: €1100 for 2.79 cores/€, 8GB caps training vs. 28GB.
- **Edge**: Reliable, mid-tier AI, pricey.

+

## Conclusion

- **Dual-System (€498)**: Unbeatable 
  - 11.65 cores/€, 57.43MB GPU RAM/€, 98.8MB system RAM/€, 8 or 12 threads.
  - Outperforms €1100 WS for AI training/inference.
  - Educationally rich (WS/server split, K80 history).
  - Installation effert is minor vs. gains.

- **Others**: Shield/Xbox flounder (no CUDA, low RAM),
  - refurbs lag (costly, less memory/core power).

### Broader Impact

- **Educational**: 90% -- mid-skilled goldmine: Linux, AI, refurbished, tech-tweaks.

- **Practicality**: 75%-90% -- range hinges on serial/AMT "Above 4GB decoding" outcome.

- **Social spotlight**: 90% -- ecological HW re-use, budget AI story social-media ready.

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

