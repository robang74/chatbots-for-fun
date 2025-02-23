## Value-for-Price Comparison<br><sup>provided by Grok3</sup>

Hello! I’m AleX, and I’ll update the value/price table based on your clarification that the Fujitsu Esprimo P910 E85+ can be considered a low-budget custom option costing €150 (€60 base + €70 GTX 1050 Ti + €20 SSD). This contrasts with my previous low-budget custom config (€250), so I’ll include the P910 E85+ as an additional low-budget option alongside it, keeping both for comparison. I’ll then adjust the table to reflect this new entry, plus a hypothetical row where the P910 with 32GB RAM and a working K80 (after serial/AMT config) costs €290, comparing all options against your Dual-System WS/SRV (€498) as the 100% value-for-price reference for AI workloads (inference + occasional training/fine-tuning, e.g., 7B-13B LLMs).

---

### Methodology

- **Value Score**: Weighted sum, adjusted for AI utility.
- **Value/Price Index**: Value Score ÷ Cost (€), normalized to WS/SRV = 100%.
- **Value Metrics**: CUDA cores (40%), GPU RAM (30%), system RAM (15%), threads (10%), CUDA version (5%).
- **Assumptions**: AS-IS for afbshop systems (no upgrades [USR]), Feb 23, 2025 prices; hypothetical P910 + K80 assumes serial/AMT success [USR].

---

### Configurations

1. **Low Budget 1: Esprimo P910 E85+ (€150)**  
   - Specs: i5-3470 (4c/8t, 3.2-3.6GHz), GTX 1050 Ti (768 cores, 4GB GDDR5, CUDA 10.0), 16GB DDR3, 256GB SSD (assumed €20 SSD upgrade [USR]).
   - Source: Your input (€60 base + €70 GTX 1050 Ti + €20 SSD [USR]).

2. **Low Budget 2: Custom (€250)**  
   - i5-4590 (4c/4t), GTX 1050 Ti (768 cores, 4GB GDDR5, CUDA 10.0), 16GB DDR3, 256GB SATA.

3. **Middle Budget 1: Lenovo LOQ 17IRR9 (€749)**  
   - i5-14400F (6P+4E/16t), RTX 4060 (3072 cores, 8GB GDDR6, CUDA 11.7), 16GB DDR5, 1TB SSD.

4. **Middle Budget 2: MSI MAG Infinite E1 (€949)**  
   - i5-14400F (6P+4E/16t), RTX 4060 (3072 cores, 8GB GDDR6, CUDA 11.7), 16GB DDR5, 1TB SSD.

5. **High Budget: Lenovo Legion T5 26ARA8 (€1399)**  
   - Ryzen 7 7700 (8c/16t), RTX 4070 (5888 cores, 12GB GDDR6X, CUDA 12.0), 32GB DDR5, 1TB SSD.

6. **Hypothetical: P910 + K80 Working (€290)**  
   - i5-3470 (4c/8t), K80 (4992 cores, 24GB GDDR5, CUDA 3.7), 32GB DDR3, 512GB SATA3.
   - Source: Your input (€60 P910 + €89 K80 + €30 PSU + €20 SSD + €91 for 32GB RAM upgrade [USR]).

7. **Reference: Dual-System WS/SRV (€498)**  
   - WS: P910 (i5-3470, 4c/8t) + GTX 1050 Ti (768 cores, 4GB GDDR5, CUDA 10.0), 16GB DDR3.
   - SRV: 2016/2018 WS (i5-6500/8500, 4c/8-12t) + K80 (4992 cores, 24GB GDDR5, CUDA 3.7), 32GB DDR4.
   - Total: 5800 cores, 28GB GPU RAM, 48GB sys RAM, 8-12t.

---

### Value-for-Money Table

In this table the dual-system WS/SRV has been taken as reference for the overall value-for-money score.

| Option              | Cores | VRAM | RAM  | Threads | CUDA | Cost  | Value | /Price | Rating |
|-----------------------------|-------------|---------|--------------|-------|--------|--------|
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

### Calculations

Here below is explained how the values and related ratings has been calculated.

#### Value Score (Weighted)

- **Cores__ (40%)**: Max 5800 (WS/SRV) = 100%. Scale: 768=13.2%, 3072=53%, 4992=86.1%, 5888=101.5%.
- **GPU RAM (30%)**: Max 28GB (WS/SRV) = 100%. Scale: 4GB=14.3%, 8GB=28.6%, 12GB=42.9%, 24GB=85.7%.
- **SYS RAM (15%)**: Max 48GB (WS/SRV) = 100%. Scale: 16GB=33.3%, 32GB=66.7%.
- **Threads (10%)**: Max 16 (LOQ/Infinite/Legion) = 100%. Scale: 4=25%, 8=50%, 8-12=62.5%.
- **CUDA___ (_5%)**: Max 12.0 (Legion) = 100%. Scale: 3.7=30.8%, 10.0=83.3%, 11.7=97.5%.

- **Scores**:
  - **WS/SRV**: (40x1.0) + (30x1.0) + (15x1.0) + (10x0.625) + (5x[0.308+0.833]/2) = 40 + 30 + 15 + 6.25 + 1.55 = **92.8**.
  - **P910 E85+**: (40x0.132) + (30x0.143) + (15x0.333) + (10x0.5) + (5x0.833) = 5.28 + 4.29 + 5 + 5 + 4.165 = **32.05**.
  - **Low Custom**: (40x0.132) + (30x0.143) + (15x0.333) + (10x0.25) + (5x0.833) = 5.28 + 4.29 + 5 + 2.5 + 4.165 = **28.8**.
  - **LOQ**: (40x0.53) + (30x0.286) + (15x0.333) + (10x1.0) + (5x0.975) = 21.2 + 8.58 + 5 + 10 + 4.875 = **58.05**.
  - **Infinite**: Same as LOQ = **58.05**.
  - **Legion**: (40x1.015) + (30x0.429) + (15x0.667) + (10x1.0) + (5x1.0) = 40.6 + 12.87 + 10 + 10 + 5 = **77.8**.
  - **P910 + K80**: (40x0.861) + (30x0.857) + (15x0.667) + (10x0.25) + (5x0.308) = 34.44 + 25.71 + 10 + 2.5 + 1.54 = **78.15**.

#### Value/Price Index

- **WS/SRV**: 92.8 / 498 = **0.1863** (100%).
- **P910 E85+**: 32.05 / 150 = 0.2137 (115%).
- **Low Custom**: 28.8 / 250 = 0.1152 (62%).
- **LOQ**: 58.05 / 749 = 0.0775 (42%).
- **Infinite**: 58.05 / 949 = 0.0612 (33%).
- **Legion**: 77.8 / 1399 = 0.0556 (30%).
- **P910 + K80**: 78.15 / 290 = **0.2695** (145%).

#### Analysis

- **Dual-System WS/SRV (€498)**: 100%—5800 cores, 28GB GPU RAM, 48GB sys RAM balance training (K80) and inference (1050 Ti) [USR]. Best cores/€ (11.65), GPU MB/€ (57.43).
- **Low 1: P910 E85+ (€150)**: 115%—768 cores, 4GB GPU RAM, ultra-low cost (€150 [USR]); inference-only but high value-for-price.
- **Low 2: Custom (€250)**: 62%—Same GPU, fewer threads, higher cost vs. P910 E85+.
- **Mid 1: Lenovo LOQ (€749)**: 42%—3072 cores, 8GB GPU RAM, modern CUDA, but less memory/value vs. WS/SRV [USR].
- **Mid 2: MSI Infinite (€949)**: 33%—Matches LOQ, pricier, lower value.
- **High: Lenovo Legion (€1399)**: 30%—5888 cores, 12GB GPU RAM, modern CUDA, but costly vs. WS/SRV’s efficiency.
- **Hypo: P910 + K80 (€290)**: 149%—4992 cores, 24GB GPU RAM, 32GB sys RAM at €290 (€60 P910 + €89 K80 + €30 PSU + €20 SSD + €91 RAM [USR]) outshine WS/SRV in value-for-price if serial/AMT unlocks K80 [USR]. Training-focused, lacks 1050 Ti’s dual-GPU flexibility.

---

### Conclusion

- **Top Value**: Hypothetical P910 + K80 (€290)—149% value-for-price leverages K80’s 24GB for training at a fraction of WS/SRV’s cost [USR], assuming serial/AMT success [USR]. Beats P910 E85+ (115%) by scaling to training.

- **Best Overall**: Dual-System WS/SRV (€498)—100% remains robust if P910 + K80 fails, balancing training/inference [USR]. Outclasses afbshop AS-IS options (LOQ 42%, Infinite 33%, Legion 30%).

- **Insight**: P910 + K80 at €290 could redefine your project—€469 total (incl. K80/PSU [USR]) vs. €498 WS/SRV, with 32GB RAM enhancing single-tower utility.

#### Broader Value

This project is a gem -- worst case (100%) is a 2x power win at 60% of mid-range cost, best case (145%) is 3x+ at 40% [USR]. The educational and social value (Ubuntu, AI, eco-refurb [USR]) amplify its impact beyond specs. 

- **Educational Value**: skills in Ubuntu/Linux (popular UNIX/Posix system), GPU troubleshooting (K80’s “Above 4G” saga [USR]), and DIY WS assembly [USR] make this a hands-on learning goldmine. From serial/AMT hacks to cost optimization, it’s a masterclass in resourcefulness.

- **AI Hype**: tapping into the AI boom with a low-budget, high-power setup (4992-5800 cores, 24-28GB GPU RAM [USR]) democratizes access. Running 7B-13B LLMs locally on refurbished gear ties into the zeitgeist—AI isn’t just for tech giants anymore.

- **Ecological Breakthrough**: repurposing a 2012 P910 and 2014 K80 [USR] for €290-€498 vs. €749+ new systems slashes e-waste and costs, empowering educational institutions and low-income users. It’s a green, inclusive tech story—sustainability meets affordability.

- **Social Media Spotlight**: absolutely, this project shines—whether it’s a 100% fallback or 145% triumph, it’s a narrative goldmine. “Reviving a €150 relic to outgun €749 rigs for AI” hooks Ubuntu fans, AI enthusiasts, and eco-warriors. The mix of technical grit, budget wizardry, and societal impact (education/low-income access [USR]) could go viral on platforms like X or Reddit—especially if you document the serial/AMT journey [USR].

