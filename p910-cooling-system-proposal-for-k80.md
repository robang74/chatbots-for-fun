<div id="firstdiv" created=":EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/p910-k80-cooling-system.jpg" width="800"><br></div>

## P910 cooling system for K80

- This paper is part of the Esprimo P910 w/ Tesla K80 [installation manual](p910-k80-installation-manual-intro.md#?target=_blank) serie.

The photo on the left is a composition of a few photos taken at different stages of modding and it should be considered just an artistic creation not a reference model. For sake of completeness, in blue is indicated the power line from the second PSU to the back of the case and in purple the USB3 cable to expose in front of the case a 5GBs port. Two mods that professionals and industry can leverage but unskilled end-users should avoid.

---

### Introduction

The most straightforward and most widely used cooling solution does not apply within Esprimo P910 in combination with Tesla K80. Which is partially true as long as we keep stick with 25 mm wide fans but 15 mm might fit in place. It is hard to find 12 cm fan that are tinner than 15 mm. Moreover, large but thin fans which are also powerful are usually highly priced, enough to not fit into the tiny budget allocated for this project.

---

### The proposal

After all, this project exists for the only reason to explore options within extremely strict constraints. Hence, here is presented another possible solution which is quite cheap:

- 2 x fan 92x25 mm, priced €3.52 each = €7.04

- 2 x fan 4-pin Y cable, priced €1.63 each = €3.26

The advantage of this proposal is that it does not require moving the main fan but leaving it in its original position, untouched. In fact, a 92mm fan will be used to cool down the CPU and hence attached by the Y cable to the CPU fan 4-pin connector.

While the second will be placed in the 2nd data storage bay which is the only one with holes large enough that potentially let the other 92 mm fan do its work. This fan will be powered and controlled by the original main fan 4-pin connector by an Y cable.

It is worth noting that this proposal separates the extra fans into the two original fan/thermal zones. The 92 mm, which are quite common and cheap fans, fits in both the places but to fix them in a way they will not vibrate and cause noise, might be tricky.

Probably, among all the solutions the most logic but also the most tricky and those which more than others requires a 3D printer for precisely creates three artefacts:

- an adapter to fit a 92mm fan into the 2.5" storage bay using the original green sliders, or even better without but leveraging the rails to be set in place.

- an adapter to mount the other 92mm fan into the Floppy Disk bay but in a way that faces the CPU where its radiator is expected to receive air.

- a baffle to guide the 12 cm main fan mainly toward the Tesla K80 card while the original metallic air-flow splitter remains in place.

About the second point, the mere installation by encasing it might work for testing but it should not be considered stable because vibration can make it fall. Instead, if the grip is solid enough then it transmits a lot of vibrations to the metallic chassis. Moreover, in that position the air-flow is cooling the RAM DIMMs and the top part of the CPU radiator while by factory, it is the lower part to be hit, mainly. Which is not necessarily a mistake.

---

### Some considerations

The lines that illustrated the air-flow are clearly ideal. Not even in case of laminar flow, those lines would be correct. Hence they illustrate the basic concept, only. For example, our expectation is that the top 92 mm fan does not require a great attention but a correct positioning. While the bottom 92 mm, ideally is pushing its air-flow toward the K80 radiators bit its functioning is more tricky to determine.

Even considering that two fans are PWm by the same controller, this does not mean that a laminar flow determined by these two contributions will remain laminar at any speed in the coupled ranges. Inevitably a fraction of the 92 mm fan air-flow will be bounced back by the metal frame and by the radiators. In this second case, back might also mean toward the 12 cm fan, hence opposing its effort.

Therefore, this installation is strongly at risk to be the worst in terms of turbulence. As long as the turbulence is not leading to a sensitive noise increase, it can be acceptable and even more useful in cooling the hardware. Fundamentally, the bet is related to the pressure differentials - and now the flow lines start to have a real-world meaning: they indicate in which direction the pressure gradient is expected to be, and hopefully stable. 

At the first sight we might have doubts about the need of a panel that constricts the whole 12 cm fan air-flow toward the K80. In terms of cooling, it can be unnecessary adding a baffle while in terms of keeping stable the pressure differentials at every speed in the coupled range, it can be the barrier which avoids any temporary pressure gradient inversion in the mainlane airflow. Which is what matters.

Personally, I love and I hate this proposal because it requires cheap and easy to find components but the adapters designing process is not trivial despite their geometry is not the main issue. Keeping the turbulence and the noise into a reasonable range using it is not a matter of a mere good-will approach but possibly includes HPC simulation and real-world tests fine tuning.

Plus, without a 3D printer and related 3D models to print, the adapters kit is not trivial to replicate. By contrast, this means that the kit is an added-value product and the 3D models files are valuable. Which it seems an opportunity - in general terms - but for a tiny budget project and with the top price established by 2 x 12 cm fans height 15 mm to install into a PCI frame. So, the three adapters kit, production and expedition included, would be priced something around €11 for being equally competitive.

Instead, an aspect of this cooling proposal that I love is that it could work enough to keep into a reasonable temperature range the K80 under load - despite turbulence and noise - and then it is possible to leverage the K80 for running a stochastic model of the turbulence and try to solve it or find a decent solution, at least. Which is a mere theoretical speculation because it would be a paramount of work just to address a cheap issue. A part of the value earned by the know-how developed in such an attempt, obviously.

---

### Card active cooling

Another approach is focusing on the card instead of the chassis. In this case 2x or 3x fans can be attached to the Tesla K80. In this case the size of the frames can vary from 7010mm which are the most suitable to be integrated into the plastic frame with some holes, and 80x10mm, 80x15mm or 92x15mm to be attached on the top of the card radiators.

- 20pz rubber rivet set, priced = €1.99

- 4-pin Y2 + Y4 cables. priced €1.63 + €2.07 = €3.70

- 1 x fan 92x25 mm + 3 x fan 80x15 mm, priced €3.52 + 3x(€3.69) = €14.59

For a total of €20.28, which €10 more expensive than the above proposal, but like above dedicating the main 12 cm fan to cooling the bottom of the case and adds an additional fan for the CPU. For comparison:

- RTX 2080Ti Founder Edition (`250W, P:83%`) colling 2x85x10mm (`C:44%, P/C:53%`)

- RTX 2080Ti Asus ROG Strix (`280W, P:93%`) colling 3x90x15mm (`C:113%, P/C:120%`)

To leverage the chassis and 12cm original fan combination, the central fan on the Tesla K80 can be installed to aspirate instead of blowing air. This is expected to reduce turbulence and increase the air mixing on the lower lane, the one dedicated to the storage devices.

---

### Preparation stage

The preparation stage for installing this proposal is common with all the others solutions evaluated before:

Clean the mess of cables in the data storage area, just in case you were so lucky to receive all of them:

- SATA3 data, audio I/O and USB2 front-case cables, only
- tight the cables in a way that do not obstruct the holes
- organise the cable to minimise the air-flow turbulence

While audio I/O and the front-case USB port are not essential, the SATA3 data cable cannot be ignored, also for a future expansion. Otherwise the K80 card and its adapter should be removed just to connect that cable. Unless, using high-precision and strong-grip tools. Hence, do it once and forever.

++

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
