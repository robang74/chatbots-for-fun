<div id="firstdiv" created="20125-01-25:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">

<div align="center"><img class="bwsketch" src="img/dual-psu-fujutsu-esprimo-p910.jpg" width="800"><br/></div>

## Dual PSU for Fujitsu Esprimo P910

In the previous article I presented the project of adapting a Nvidia Tesla K80 for being used within a PC/Desktop in particular for locally running an AI model.

* [Tesla K80 with Esprimo P910](tesla-k80-with-esprimo-p910.md#?target=_blank) &nbsp; (20125-01-24)

While, this paper is going to present the way in which I decided to provide that system with a secondary 350W power supply unit in order to sustain the K80 consumption.

The 2nd edition (since rev. 6) includes the [external sources](#external-sources) session and a more comprehensible English language.

---

### Introduction

Among the main issues one in particular was related to the Fujitsu Esprimo P910 which like many others slim-tower with Zero-Watt technology includes a customised power supply unit which has a single connection to the mainboard with a 16-pin connector and cannot be replaced with any standard ATX PSU also because its own way of being fixed to the case.

Well - *cannot be replaced* - in the sense of a spare part because mechanical changes to the case in order to fit a standard PSU supply as well as providing a cable for adapting the standard 20/24-pins ATX connector to the motherboard 16-pin one, is always possible.

However, as you can imagine some mods' outcomes are way unpredictable compared to assembly of commercially available parts. In particular when 220V power supply is involved.

---

### The DVD bay

A place in which a secondary PSU can be installed in the Esprimo P910 case is the DVD reader bay, and there are two. I am not going to use that device, hence both are available.

Despite this the two bays are separated with a frame that also provides a substantial distancing to the front side unless the PSU would have a size comparable with a DVD reader.

After a search on the Internet, I have found that an ATX PSU built for PoS devices which has a standard size of 1U = 1 rack Unit can fit into that area replacing the DVD reader.

---

### Powering up

Once decided where to place the 2nd PSU there are two more task to face:

1. make sure the two PSUs share the same ground line to avoid dangerous voltage fluctuations;

2. switch on the 2nd PSU when the PWR button is pressed and the 1st PSU sees grounded the PSU-ON line

To solve at once these two issues, I have decided to use an adaptor, specifically designed. Which is a quite common piece of hardware.

To be precise, I have found three kinds of these adaptors plus their different versions. Two seem very similar and are equally cheap, one has an on/off switch for disabling the secondary PSU when it is not in use. While the third offers more options and features. 

In this specific case, the simplest ATX 24-pins with SATA dual connectors is enough.

---

### PSU cabling 

The Nvidia Tesla K80 is quite old and it requires a basic 8-pin CPU male connector to be powered. Unfortunately, the 1U PSU that I have chosen has no such connector but the older 4-pin CPU male connector.

Fortunately, the 8-pin connector is nothing else than a power and ground lines duplication compared to the 4-pin and an adapting cable is very cheap and easy to buy.

The Fujitsu 250W PSU has the sole connection with the motherboard and everything else is connected to the motherboard and it does not offer a 4-pin molex connector to join the dual-PSU manager board.

For this reason, regarding the dual-PSU sync board, I chose the version with the SATA connection. Therefore, the common ground will be shared by the motherboard wiring, as well as the PSU-ON signal. While the Tesla K80 will receive the full power from the 2nd PSU by the 4-pin CPU connector converted into an 8-pin CPU male.

A very simple and straightforward connections schema for which the 220V socket will appear on the external front side of the case: a standard 3-poles cable will connect the 2nd PSU with the public 220V network.

Soon, I will check for a 90° 3-poles PC plug in order to avoid any stress to the cable and facilitate as much as possible its redirection on the back where the second 3-poles cable powers the 1st PSU, as usual.

---

### Conclusion

Yet, this dual-PSU configuration has to face the proof of the time but this also depends on the choices I made.Instead, the approach in general seems valid because it does not imply any particular mod that would be forbidden into a common PC shop or PC hardware support center, or reparation.

In fact, it is a matter of just assembling some spare parts and all these parts are available on different e-market, from different sellers and producers.

Making a comparison - with the mods that I have seen shared on Reddit and other similar forums, but some are 4 years old - this is a quite simple, comfortable, standard and safe way to go. Despite this, it is not for everyone because assembly or modification of a personal computer hardware configuration requires manual dexterity to use tools, and a little experience.

In short this project has a low entry barrier but still not for everyone.

<br/>

## External sources

In the first  link there is a practical example using the `nvidia-smi` command to cap the maximum power consumption in order to prevent overheating problems

* [Running a Nvidia Tesla K80 at home](https://blog.thomasjungblut.com/random/running-tesla-k80) &nbsp; (2021-05-26)

* [Using an Nvidia Tesla K80 for gaming](https://www.reddit.com/r/pcmods/comments/nhfwh7/guide_using_an_nvidia_tesla_k80_datacenter_gpu) &nbsp; (2021-05-20)

* [Kepler overclock, how to tweak the BIOS](https://linustechtips.com/topic/1058561-simple-tutorial-ish-for-kepler-and-probably-maxwell-ii-bios-tweaker) &nbsp; (2019-04-19)

at the opposite, in the last link there is the opposite: how to increase the voltage and the working frequency in order to squeeze all its computation power.

<br/>

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>

