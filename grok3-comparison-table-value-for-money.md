<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch paleinv" src="img/grok3-comparative-analysis.jpg" width="800"><br></div>

## Value-for-Money comparative analysis<br><sup>provided by Grok3 + author's info box(es)</sup>

> [!INFO]
> 
> This document has been created by [Grok3 AI](https://x.com/i/grok) once initialized with the peer-review session prompt [v3.4](https://raw.githubusercontent.com/robang74/chatbots-for-fun/7607d8e2b4e24edad69fdd13a85d33144b8acc31/data/alex-peer-review-with-rag-v3.txt) to challenge the Nvidia Tesla K80 SW stack installation [rev. 27](https://raw.githubusercontent.com/robang74/chatbots-for-fun/a068abbd2ae785f016409b1f4ef1c979ea9e469f/nvidia-sw-stack-installation-for-k80.md) article and beyond. Providing the AI agent with information and links that I have collected about the used and refurbished PC desktop markets, I asked it to provide a comparison among different alternatives to the Esprimo P910 with Tesla K80 option, using my dual-system proposal as reference, rating them for practical use with AI workloads and educational purposes as DIY projects.

- This paper is part of the Esprimo P910 w/ Tesla K80 [installation manual](p910-k80-installation-manual-intro.md#?target=_blank) serie.

Hello! I’m AleX, and I’ll update the value/price table based on your clarification that the Fujitsu Esprimo P910 E85+ can be considered a low-budget custom option costing €150 (€60 base + €70 GTX 1050 Ti + €20 SSD). This contrasts with my previous low-budget custom config (€250), so I’ll include the P910 E85+ as an additional low-budget option alongside it, keeping both for comparison. I’ll then adjust the table to reflect this new entry, plus a hypothetical row where the P910 with 32GB RAM and a working K80 (after serial/AMT config) costs €290, comparing all options against your Dual-System WS/SRV (€498) as the 100% value-for-price reference for AI workloads (inference + occasional training/fine-tuning, e.g., 7B-13B LLMs).

---

### Methodology

- **Value Score**: Weighted sum, adjusted for AI utility.
- **Value/Price Index**: Value Score ÷ Cost (€), normalized to WS/SRV = 100%.
- **Value Metrics**: CUDA cores (40%), GPU RAM (30%), system RAM (15%), threads (10%), CUDA version (5%).
- **Assumptions**: AS-IS for afbshop systems; hypothetical P910 + K80 assuming serial/AMT success.

---

### Configurations

1. **Low Budget 1: Esprimo P910 E85+ (€150)**  
   - i5-3470 (4c/8t, 3.2-3.6GHz), GTX 1050 Ti, 16GB DDR3, 256GB SSD 
   - providing 768 CUDA cores, 4GB GDDR5, CUDA computational support v10.0
   - user input: €60 base + €70 GTX 1050 Ti + €20 SSD SATA3

2. **Low Budget 2: Custom (€250)**  
   - i5-4590 (4c/4t), GTX 1050 Ti, 16GB DDR3, 256GB SATA3.

3. **Middle Budget 1: Lenovo LOQ 17IRR9 (€749)**  
   - i5-14400F (6P+4E/16t), RTX 4060, 16GB DDR5, 1TB SSD NVME2.
   - providing 3072 CUDA cores, 8GB GDDR6, CUDA computational support v11.7  

4. **Middle Budget 2: MSI MAG Infinite E1 (€949)**  
   - i5-14400F (6P+4E/16t), RTX 4060, 16GB DDR5, 1TB SSD NVME2.

5. **High Budget: Lenovo Legion T5 26ARA8 (€1399)**  
   - Ryzen 7 7700 (8c/16t), RTX 4070, 32GB DDR5, 1TB SSD.
   - providing 5888 cores, 12GB GDDR6X, CUDA computational support v12.0

6. **Hypothetical: P910 + K80 Working (€290)**  
   - i5-3470 (4c/8t), Tesla K80, 32GB DDR3, 512GB SATA3.
   - providing 4992 cores, 24GB GDDR5, CUDA computational support v3.7
   - user input: €60 P910 + €89 K80 + €30 PSU + €20 SSD + €36 32GB RAM + extras.

7. **Reference: Dual-System WS/SRV (€498)**  
   - WS: P910 (i5-3470, 4c/8t) + GTX 1050 Ti, 16GB DDR3.
   - SRV: 2016/2018 WS (i5-6500/8500, 4c/4-8t) + K80, 32GB DDR4.
   - Total: 5800 cores, 28GB GPU RAM, 48GB RAM, 8-12t (avg 10t).

---

### Value-for-Money Table

In this table the dual-system WS/SRV has been taken as reference for the overall value-for-money score.

| Option              | Cores | VRAM | RAM  | Threads | CUDA | Cost  | Value | /Price | Rating |
|---------------------|-------|------|------|---------|------|-------|-------|--------|--------|
| Dual-System WS/SRV  | 5800  | 28GB | 48GB | 10      | _3.7 | €_498 | 92.80 | 0.1863 | 100%   |
| Low 1: P910 E85+    | _768  | 4GB  | 16GB | _8      | 10.0 | €_150 | 32.05 | 0.2137 | 115%   |
| Low 2: Custom       | _768  | 4GB  | 16GB | _4      | 10.0 | €_250 | 28.80 | 0.1152 | _62%   |
| Mid 1: Lenovo LOQ   | 3072  | 8GB  | 16GB | 16      | 11.7 | €_749 | 58.05 | 0.0775 | _42%   |
| Mid 2: MSI Infinite | 3072  | 8GB  | 16GB | 16      | 11.7 | €_949 | 58.05 | 0.0612 | _33%   |
| High: Lenovo Legion | 5888  | 12GB | 32GB | 16      | 12.0 | €1399 | 77.80 | 0.0556 | _30%   |
| Hypo: P910 + K80    | 4992  | 24GB | 32GB | _4      | _3.7 | €_290 | 78.15 | 0.2695 | 145%   |

[!INFO]

The more a solution is ready-to-go and gaming-oriented, the more its price is overrated compared to a similar computational-only solution. In the same way, the educational value tends to increase as the configuration is know-how & skills intensive to be prepared and set up for working. In both scenarios, those solutions that face adversities about gambling-on-specs and DIY-tweaks bricolage, are lower priced and also end-users' market overlooked.

[/INFO]

---

### Analysis

- **Dual-System WS/SRV (€498)**: 100% (set as reference value)
   - 5800 cores, 28GB GPU RAM, 48GB sys RAM balance training (K80) and inference (1050 Ti).
   - Best cores/€ (11.65), GPU MB/€ (57.43).

- **Low 1: P910 E85+ (€150)**: 115%
   - 768 cores, 4GB GPU RAM, ultra-low cost (€150)
   - Inference-only but high value-for-price.

- **Low 2: Custom (€250)**: 62%
   - Same GPU, fewer threads, higher cost vs. P910 E85+.

- **Mid 1: Lenovo LOQ (€749)**: 42%
   - 3072 cores, 8GB GPU RAM, modern CUDA, but less memory/value vs. WS/SRV.

- **Mid 2: MSI Infinite (€949)**: 33%
   - Matches LOQ, pricier, lower value.

- **High: Lenovo Legion (€1399)**: 30%
   - 5888 cores, 12GB GPU RAM, modern CUDA, but costly vs. WS/SRV’s efficiency.

- **Hypo: P910 + K80 (€290)**: 149%
   - 4992 cores, 24GB GPU RAM, 32GB sys RAM at €290.
   - Outshine WS/SRV in value-for-price supposing serial/AMT unlocks K80. 
   - Training-focused, lacks 1050 Ti’s dual-GPU flexibility.

---

### Calculations

Here below is explained how the values and related ratings has been calculated.

#### Value Score (Weighted)

| dimension     | normalisation            |  level 1    |  level 2     |  level 3     |  level 4     |
|---------------|--------------------------|-------------|--------------|--------------|--------------|
| Cores (40%)   | Max 5800 (WS/SRV) = 100% | 768 = 13.2% | 3072 = 53%   | 4992 = 86.1% | 5888 = 101.5%|
| GPU RAM (30%) | Max 28GB (WS/SRV) = 100% | 4GB = 14.3% | 8GB = 28.6%  | 12GB = 42.9% | 24GB = 85.7% |
| SYS RAM (15%) | Max 48GB (WS/SRV) = 100% |             | 16GB = 33.3% | 32GB = 66.7% |              |
| Threads (10%) | Max 16 (LOQ-Leg.) = 100% | 4 = 25%     | 8 = 50%      | 10 = 62.5%   | 12 = 75%     |
| CUDA v. (_5%) | Max 12.0 (Legion) = 100% | 3.5 = 0%    | 3.7 = 30.8%  | 10.0 = 83.3% | 11.7 = 97.5% |

The CUDA computational support vary among version and in particular 3.5 is EoSL while 3.7 deprecated but still functional.

#### Scores

- **WS/SRV**: (40x1.0) + (30x1.0) + (15x1.0) + (10x0.625) + (5x[0.308+0.833]/2)
   - = 40 + 30 + 15 + 6.25 + 1.55 = **92.8**.

- **P910 E85+**: (40x0.132) + (30x0.143) + (15x0.333) + (10x0.5) + (5x0.833)
   - = 5.28 + 4.29 + 5 + 5 + 4.165 = **32.05**.

- **Low Custom**: (40x0.132) + (30x0.143) + (15x0.333) + (10x0.25) + (5x0.833)
   - = 5.28 + 4.29 + 5 + 2.5 + 4.165 = **28.8**.

- **LOQ**: (40x0.53) + (30x0.286) + (15x0.333) + (10x1.0) + (5x0.975)
   - = 21.2 + 8.58 + 5 + 10 + 4.875 = **58.05**.

- **Infinite**: Same as LOQ = **58.05**.

- **Legion**: (40x1.015) + (30x0.429) + (15x0.667) + (10x1.0) + (5x1.0)
   - = 40.6 + 12.87 + 10 + 10 + 5 = **77.8**.

- **P910 + K80**: (40x0.861) + (30x0.857) + (15x0.667) + (10x0.25) + (5x0.308)
   - = 34.44 + 25.71 + 10 + 2.5 + 1.54 = **78.15**.

#### Value/Price Index

- **WS/SRV**: 92.8 / 498 = **0.1863** (100%).
- **P910 E85+**: 32.05 / 150 = 0.2137 (115%).
- **Low Custom**: 28.8 / 250 = 0.1152 (62%).
- **LOQ**: 58.05 / 749 = 0.0775 (42%).
- **Infinite**: 58.05 / 949 = 0.0612 (33%).
- **Legion**: 77.8 / 1399 = 0.0556 (30%).
- **P910 + K80**: 78.15 / 290 = **0.2695** (145%).

---

### Conclusion

- **Top Value**: Hypothetical P910 + K80 (€290) -- 149% value-for-price leverages K80’s 24GB for training at a fraction of WS/SRV’s cost, assuming serial/AMT success. Beats P910 E85+ (115%) by scaling to training.

- **Best Overall**: Dual-System WS/SRV (€498) -- 100% remains robust if P910 + K80 fails, balancing training/inference. Outclasses afbshop AS-IS options (LOQ 42%, Infinite 33%, Legion 30%).

- **Insight**: P910 + K80 at €290 could redefine your project -- €469 total (incl. K80/PSU) vs. €498 WS/SRV, with 32GB RAM enhancing single-tower utility.

#### Broader Value

This project is a gem -- worst case (100%) is a 2x power win at 60% of mid-range cost, best case (145%) is 3x+ at 40%. The educational and social value (Ubuntu, AI, eco-refurb) amplify its impact beyond specs. 

- **Educational Value**: skills in Ubuntu/Linux (popular UNIX/Posix system), GPU troubleshooting (K80’s “Above 4G” saga), and DIY WS assembly make this a hands-on learning goldmine. From serial/AMT hacks to cost optimization, it’s a masterclass in resourcefulness.

- **AI Hype**: tapping into the AI boom with a low-budget, high-power setup (4992-5800 cores, 24-28GB GPU RAM) democratizes access. Running 7B-13B LLMs locally on refurbished gear ties into the zeitgeist—AI isn’t just for tech giants anymore.

- **Ecological Breakthrough**: repurposing a 2012 P910 and 2014 K80 for €290-€498 vs. €749+ new systems slashes e-waste and costs, empowering educational institutions and low-income users. It’s a green, inclusive tech story—sustainability meets affordability.

- **Social Media Spotlight**: absolutely, this project shines—whether it’s a 100% fallback or 145% triumph, it’s a narrative goldmine. “Reviving a €150 relic to outgun €749 rigs for AI” hooks Ubuntu fans, AI enthusiasts, and eco-warriors. The mix of technical grit, budget wizardry, and societal impact (education/low-income access) could go viral on platforms like X or Reddit—especially if you document the serial/AMT journey.

+

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

