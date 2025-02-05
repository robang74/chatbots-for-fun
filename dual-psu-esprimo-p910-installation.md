<div id="firstdiv" created="2025-02-05:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/p910-materiale-per-installazione.jpg" width="800"><br></div>

## Dual PSU for Esprimo P910 installation

This document is still working in progress and it is the natural prosecution of the previous one.

- [Dual PSU for Fujitsu Esprimo P910](dual-psu-fujitsu-esprimo-p910.md#?target=_blank) &nbsp; (2025-01-25)

While the bill of material (BoM) has been added into the Manual 6-pages introduction.

Due to the budget constraints, this project is progressing quite slowly because each batch of material is ordered when a step is completed and it takes about two weeks to arrive from China. However, some stuff has been bought from Amazon Italy or around Europe. Under this point of view, it is - in its small scale - an example of how the supply-chain impacts both on the time of production and on the final cost of the single unit.

- [The bill of material (BoM))](p910-k80-installation-manual-intro.md#bom?target=_blank) &nbsp; (2025-02-05)

In the meantime, I worked on prompt engineering in parallel and soon after the DVI-adapter, which I miss to order with the Esprimo P910, I created a manual for diagnose the hardware and update the BIOS

- [P910 E85+ BIOS update & diagnostics](p910-bios-update-and-diagnostics.md) &nbsp; (2025-02-04)

It is specifically tailored for Esprimo P910 E85+ but it can be used as a canvas for every other PC/laptop for which DOS tools are available.

---

### Dual PSU installation

Just to recap, the main problem of providing 225W TDP, 300W peak to the Nvidia Tesla K80 was mainly related with the proprietary power system embedded into the Fujitsu Esprimo P910 and therefore too hard to change without doing a bricolage that would far beyond the educational scope of this project.

Therefore an industrial 1U standard rack PSU has been chosen, which has been designed and built to power the ATX PC-based automated point of sales (PoS). For this reason it is particularly small, compared to the standard ATX power supply unit and cheap, compared with the PC-gaming market segment.

This PSU's height is almost the same, a little less, than a standard DVD-ROM reader, shorter and less wide (150mm x 82mm x 41 mm). Plus it does not have the standard holes to receive the plate used into P910 to lock the DVD-ROM in its place. For a confrontation, the hosted DVD-ROM was 150mm x 165mm x 42mm.

Moreover, once it replaces the DVD-DOM, it offers the 3 pole male plug on the front side of the case which is not particularly comfortable, safe but the cable is much more at risk of being accidentally unplugged and aesthetically pleasant.

For these reasons, in creating a custom adapter, I built it in a way in which it will be easy in the near future to move the 3 pole C14F plug on the back of the tower case.

|x|>
<img class="bwsketch" src="img/fujitsu-p910-dual-psu-front-back.jpg" width="400">
+
<sup>right click menu to enlarge (x4) the image</sup>
<|x|

Replacing the cable with a straight C13M plug with another one providing a down angle C13M plug, the length exposed will be much shorter. While the power cable will extend in a way that it would be perfectly safe to turn into the tower case for exposing it at its back. Moreover, moving back the new PSU by 15mm, it will get deep in the case as much as the old DVD-ROM driver keeping the plug protected.

---

### Venting system

About the venting system, I was considering to use 2 fan 5020 or 5015 to place outside the back of the case, in front of the 2 PCI slots engaged by the Tesla K80 for sucking air trought its airflow tunnel, while the main fan into the case would push air into it, as show here.

|x|>
<img class="bwsketch" src="img/esprimo-p910-changed-air-flow.jpg" width="400">
+
<sup>right click menu to enlarge (x4) the image</sup>
<|x|

The area to cover in such a scenario is not larger than 11 x 5 cm, for this reason the best is using 2 fan 5 x 5cm which seems optimal because the remaining area is essentially covered by the metal of the case or the PCI slot vertical locking mechanism.

Unfortunately, the 5010 are not very powerful while the 5020+ are rare. Instead, among the 5015 as the only viable option, most of them are not going to offer any PWM control (2-pin, or 3-pin at the best) because they are designed mainly for 3D printers.

The few remaining that may have a chance to fulfill the role are as costly as the 12 cm fans, noisier and way less powerful than them. Which should not surprise us because the gaming market pushes forward the competition and keeps the warehouses well-assorted.

---

### New challenges

Enlarging the image above and looking at the right side of the Nvidia K80 card, we can be assured that fitting a couple of 12cn fans overthere, in that narrow and messy space, will be not easy but requires some kind of cabling rearrangement, at least. If it is possible.

The second challenge arises looking at that same image but on the opposite side of the case. Considering the length of the cable ordered as the next material batch, it is quick to determine that it is not long enough to reach the diametrical opposite side of the case.

In fact, the cable ordered is 60cm long while to reach the ending point shown in the second image of this paper, it needs 100cm. In this case, the availability or the price are not the major driver of this choice, but noticing that with 60cm, it can reach the grid below the Fujitsu original PSU.

Despite the relatively simplicity of the P910 model and the Fujitsu attitude to maniacally lock the cables in position, within the case, there are many cables. For sure more cables than available or free points for locking a relatively big cable like a power one.

While in the top of the case there is an almost lack of cabling and reaching the first grid available for hosting a C14F plug is quite straightforward. There are not any locking points for the cable, but a nice 3M duct-tape will be enough to win the gravity.

Too nice and easy to be true... In fact, compared with opening a hole at the end of storage bays row, going to tackle metals and possibly spread conductive crumbs which would go around for the circuitry in a brisky mood... is not the most appealing scenario.

+

`[... continuing ...]`

+

---

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
