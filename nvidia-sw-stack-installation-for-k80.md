<div id="firstdiv" created="2025-02-18:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/nvidia-tesla-k80.jpg" width="800"><br></div>

## Nvidia Tesla K80 installation

- This paper is part of the [Fujitsu P910 w/ Tesla K80 installation manual](p910-k80-installation-manual-intro.md#?target=_blank) serie.

Let me introduce the Nvidia Tesla K80 accelerator board, which is not a graphic card for the consumer market but an accelerator for data centers.

- 4992 NVIDIA CUDA cores with dual GPU design each with 12Gb of RAM
- Up to 2.91 teraflops of double precision performance with NVIDIA GPU Boost
- Up to 8.73 teraflops of single precision performance with NVIDIA GPU Boost
- 24GB GDDR5 memory with 480GB/s aggregate memory bandwidth
- Server optimised with ECC protection for maximum reliability
- 1 PCI express 3.0 16x bus, 2 slots large, 225W TDP 300W max.
- Kepler architecture, market entry 17 November 2014 at $7.000

It is a 10yo hardware which has NOT been designed for being put into a desktop computer, so it does not have an active cooling system by itself. Currently, its support is DEPRECATED and it will not be ported further to the 470 series of drivers and CUDA software stack, officially. Which is one of the reasons because it can be bought for something between $100 and $200 on the refurbished market. The other main reason for its relatively cheap price is a sort of gambling/bricolage activity to make it work with desktop hardware. So, here we are! {:-)}

---

### Alternatives GPU cards

First of all, we need to establish the main reason for adopting a Tesla K80: locally running AI models mainly and occasionally their training, fine-tuning, and similar activities. This is essential to prioritise the memory size in GB versus the computational power expressed in CUDA cores.

For a comparison, to have the same CUDA cores and RAM, it is necessary to have 2x GeForce RTX 2060 12GB which requires 2x PCI-express 3.0 16x slots but occupies 4 slots and consumes 184W max. each, for a 312W TDP and 370W max. While using 2x GeForce RTX 3060 12 GB requires the newer PCI express 4.0 bus, sharply increasing the cost of the supporting hardware. Another option is combining 2x GeForce GTX 1080 8GB. All these options are facing the challenge to allocate 2 PCI-express 3.0 16x slots using 4 slots space. All these options go from €400 and €800 on Amazon and their prices are not much lower on the used market.

Therefore a competitive alternative to the Tesla K80/K40 is the Quadro M6000 with 24GB or 12GB. The sensitive advantages are 24GB available on a single GPU with 3072 CUDA cores, a video card designed for PC desktop installation and 250W max. consumption. Likely the Tesla K80/K40 the support is limited to the version 470 (LTS) but its price on the refurbished market is much higher and on the private used market it stays above €400, usually. The reason is clear, it is a PC desktop graphic card highly performant. While an accelerator card for scientific purposes designed for the server market is not so much appreciated.

> [!WARN]
> 
> Prices might vary and in particular on the refurbished and used markets can be greatly volatile. The prices provided here should be considered as a rule-of-thumb reference within the limitation of a snapshot taken in early 2025.

> [!INFO]
> 
> Price ranges have been presented here to provide to the readers the information that they have to expect to spend x2 at least on the used market for a M6000 solution compared with one based on K80/K40 cards. Up to 4x when a new dual card PCIe 3.0 gets into the picture and up to 8x for a new PCIe 4.0 solution. This means that from €200-€250 of a K80 cheap home-assembled solution, the price can sharply increase up to €2.000 when more comfortable (no gambling, no bricolage) and gaming oriented solutions are considered.

---

### Ubuntu as operative system

Ubuntu Linux is a well-known widely-spread GNU/Linux distribution which has the vastest hardware support and an user-friendly eye-candy looking graphical user interface. Despite all its whistle and bells, it still pretty usable with old hardware even 10yo architectures and on top of this, it is a solid, full-fledged UNIX/Posix operating system with all the benefits of an Open-Source Software Libre solution included a relatively large user-base and commercial support for enterprises including server, data-center and cloud applications, also.

Ubuntu can be installed from a [bootable USB drive](https://help.ubuntu.com/stable/ubuntu-help/addremove-creator.html.en) or even directly onto one as a system disk. Based on my experience, I recommend the SanDisk Ultra USB 3.1 (130 MB/s) in 64GB or 128GB as a reasonably priced, entry-level option for a portable installation. However, SATA3 6Gbit/s SSDs are faster and more convenient.

#### Checking the boot

After having installed the Tesla K80, provided to it the necessary power with a dual-PSU cheap solution and a reasonable cooling system at least for the early testing, it is the right time for checking the `dmesg -l err,warn,crit` output in search of troubles. Troubles, the kind of flowers that bloom in every season! {;-)}

[!CODE]
pnp 00:05: disabling [mem 0xfed1c000-0xfed1ffff disabled] because it overlaps<br>
\_0000:04:00.0 BAR 1 [mem 0x00000000-0x3ffffffff 64bit pref]<br>
 ...<br>
pnp 00:05: disabling [mem 0xdfa00000-0xdfa00fff disabled] because it overlaps<br>
\_0000:04:00.0 BAR 1 [mem 0x00000000-0x3ffffffff 64bit pref]<br>
pnp 00:06: disabling [mem 0x20000000-0x201fffff] because it overlaps<br> 
\_0000:03:00.0 BAR 1 [mem 0x00000000-0x3ffffffff 64bit pref]<br>
 ...<br>
pnp 00:06: disabling [mem 0x20000000-0x201fffff disabled] because it overlaps<br>
\_0000:04:00.0 BAR 1 [mem 0x00000000-0x3ffffffff 64bit pref]<br>
 ...<br>
[/CODE]

In fact, these strings do not promise anything good or easy to cope with. However, similar strings are present also on my Thinkpad x390 and everything is working fine. Unfortunately, `lspci -vt` confirms that `03:00.0` and `04:00.0` are related to the Tesla K80. Fortunately, the `dmesg -l err,crit` output is void which means that they are warnings.

----

#### Disabling nouveau

The next step to take is adding `nouveau.modeset=0` to the kernel command line because nouveau is the generic open-source driver for Nvidia graphic cards, we do not want it because we need to rely on the Nvidia driver to leverage the CUDA software stack plus the Tesla K80 is headless, it has no video monitor support, which means `modeset=0` anyway. For the same reason we do not need also nvidia_drm and nvidia_modeset modules because they are related to graphic functioning while in our case is compute-only installation.

1. open for editing `/etc/default/grub` which requires `sudo` root permission
2. add the `nouveau.modeset=0` parameter into `GRUB_CMDLINE_LINUX_DEFAULT`
3. save the file, `update-grub` to write the change in boot sector
4. reboot the system and check the change with `grep modeset /proc/cmdline`

With this change in place, we are ready to engage the Nvidia driver and CUDA software stack installation.

#### CUDA support

The command `nvcc --version` will display the version of CUDA installed. The Tesla K80 has CUDA compute capability 3.7 which is deprecated but still supported, while Kepler architecture was supported until CUDA version 11.8.

> While some elements might function, relying on CUDA 11.8 for full Kepler support is incorrect. It's safer to say CUDA 11.4 is the practical and fully supported limit. Based on Nvidia documentation, for that driver series, the 11.4 is the most stable and reliable version to use. -- Gemini 2

Ubuntu 22.04 and 24.04 LTS are offering CUDA 11.5 with the 470 driver series which reasonably suggests that the system can work but is not certifiable under Nvidia's recommendations. Therefore, the K80 is the most powerful among old deprecated but still supported GPU cards by upstream sources.

---

### Ubuntu Nvidia SW installation

First of all, some basic information about installing Nvidia SW stack and drivers which releases comes in two packages types:

- UDA (Unified Driver Architecture) drivers which are recommended for the generic desktop use, and it is available here: [nvidia.com about unix drivers](https://www.nvidia.com/en-us/drivers/unix/)

- ERD (Enterprise Ready Drivers) which are recommended on servers, and for computing tasks. Their packages can be recognised by the `-server` suffix. More information about
these drivers are available here: [docs.nvidia.com about tesla](https://docs.nvidia.com/datacenter/tesla/index.html)

The recommended way to install on Ubuntu is to leverage its tools:

- The ubuntu-drivers tool relies on the same logic as the "Additional Drivers" graphical tool, and allows more flexibility on desktops and on servers.

- The ubuntu-drivers tool is recommended if Secure Boot is in use, since it always tries to install signed drivers which are known to work with it.

Check the available drivers for the hardware with `sudo ubuntu-drivers list` and use the `--gpgpu` for the server version. To install the drivers: `sudo ubuntu-drivers install` which allows us to specify the version `nvidia:470` and the `--gpgpu` server edition. To check the version of the currently running driver: `cat /proc/driver/nvidia/version`.

Following the most straightforward installation procedure, plus adding some useful tools:

[!CODE]
root@p910:~# update-pciids<br>

root@p910:~# ubuntu-drivers list<br>
nvidia-driver-470-server, (linux-modules-nvidia-470-server-generic-hwe-24.04)<br>
nvidia-driver-470, (linux-modules-nvidia-470-generic-hwe-24.04)<br>

root@p910:~# ubuntu-drivers install<br>
 ...<br>
done<br>

root@p910:~# add-apt-repository ppa:danielrichter2007/grub-customizer -y<br>
root@p910:~# apt-get install grub-customizer modprobe-nvidia nvtop -y<br>
[/CODE]

and before rebooting the system, adding a kernel command line parameters `modprobe.blacklist=nouveau` in `/etc/default/grub` file to prevent nvidia generic driver mess up things, then update the initramfs and the grub boot record, as shown here below:

[!CODE]
echo "blacklist nouveau" >> /etc/modprobe.d/blacklist.conf

root@p910:~# update-initramfs -u<br>
update-initramfs: Generating /boot/initrd.img-6.11.0-17-generic<br>

root@p910:~# update-grub<br>
 ...<br>
done<br>
[/CODE]

After the reboot:

[!CODE]
root@p910:~# cat /proc/driver/nvidia/version<br>
NVRM version: NVIDIA UNIX x86_64 Kernel Module 470.256.02 Thu May  2 14:37:44 UTC 2024<br>

root@p910:~# nvidia-smi<br>
No devices were found<br>

root@p910:~# dmesg -l err,crit<br>

root@p910:~# dmesg -l err,warn,crit  | grep NV | cut -d] -f2-<br>
 nvidia: module license 'NVIDIA' taints kernel.<br>
 NVRM: loading NVIDIA UNIX x86_64 Kernel Module  470.256.02 Thu May  2 14:37:44 UTC 2024<br>
 NVRM: GPU 0000:03:00.0: RmInitAdapter failed! (0x22:0xffff:667)<br>
 NVRM: GPU 0000:03:00.0: rm_init_adapter failed, device minor number 0<br>
 ...<br>
 NVRM: GPU 0000:04:00.0: RmInitAdapter failed! (0x22:0xffff:667)<br>
 NVRM: GPU 0000:04:00.0: rm_init_adapter failed, device minor number 1<br>
[/CODE]

Trying with a manual installation does not help:

[!CODE]
root@p910:~# apt list --installed | grep nvidia | cut -d, -f1<br>
libnvidia-cfg1-470/noble-updates<br>
libnvidia-common-470/noble-updates<br>
libnvidia-compute-470/noble-updates<br>
libnvidia-extra-470/noble-updates<br>
linux-modules-nvidia-470-6.11.0-17-generic/noble-updates<br>
linux-modules-nvidia-470-generic-hwe-24.04/noble-updates<br>
linux-objects-nvidia-470-6.11.0-17-generic/noble-updates<br>
linux-signatures-nvidia-6.11.0-17-generic/noble-updates<br>
nvidia-compute-utils-470/noble-updates<br>
nvidia-kernel-common-470/noble-updates<br>
nvidia-utils-470/noble-updates<br>
[/CODE]

Which is not good at all, but the following is even worse:

[!CODE]
root@p910:~# cat /proc/driver/nvidia/gpus/*/information<br>
Model: Tesla K80<br>
IRQ:    39<br>
GPU UUID: GPU-????????-????-????-????-????????????<br>
Video BIOS: ??.??.??.??.??<br>
Bus Type: PCIe<br>
DMA Size: 36 bits<br>
DMA Mask: 0xfffffffff<br>
Bus Location: 0000:03:00.0<br>
Device Minor: 0<br>
GPU Excluded: No<br>
Model: Tesla K80<br>
IRQ:    39<br>
GPU UUID: GPU-????????-????-????-????-????????????<br>
Video BIOS: ??.??.??.??.??<br>
Bus Type: PCIe<br>
DMA Size: 36 bits<br>
DMA Mask: 0xfffffffff<br>
Bus Location: 0000:04:00.0<br>
Device Minor: 1<br>
GPU Excluded: No<br>
[/CODE]

---

<span id="is-eol-green"></span>
### P910 E85+ PCIe support 4GB only

This is **VERY BAD** because indicates a hardware incompatibility with the motherboard or its BIOS. Considering that the Esprimo P910 has its own Fujitsu ATX power unit with a custom 16-pin connector, changing the motherboard is furtherly complicated by the challenge to find one within the P910 family by Fujitsu. Otherwise, it is easier to change the whole P910 for something else, completely.

[!CODE]
root@p910:~# mokutil --sb-state<br>
SecureBoot disabled<br>

root@p910:~# lsmod | grep -e video -e nvidia<br>
nvidia_uvm           1437696  0<br>
nvidia_drm             77824  2<br>
nvidia_modeset       1212416  1 nvidia_drm<br>
nvidia              35643392  2 nvidia_uvm,nvidia_modeset<br>
video                  73728  2 i915,nvidia_modeset<br>
wmi                    28672  1 video<br>

root@p910:~# systemctl status nvidia-persistenced | grep active<br>
 &nbsp; Active: active (running) since Thu 2025-02-20 05:10:08 CET; 10min ago<br>

root@p910:~# lspci -vvv |grep -iA 20 nvidia|grep -ie region -ie lnkcap:<br>
 &nbsp; Region 0: Memory at f0000000 (32-bit, non-prefetchable) [size=16M]<br>
 &nbsp; &nbsp; LnkCap: Port #8, Speed 8GT/s, Width x16, ASPM not supported<br>
 &nbsp; Region 0: Memory at f1000000 (32-bit, non-prefetchable) [size=16M]<br>
 &nbsp; &nbsp; LnkCap: Port #16, Speed 8GT/s, Width x16, ASPM not supported<br>
[/CODE]

Which is **WAY** different than the expected output, which should be something like this:

[!CODE]
 &nbsp; Region 0: Memory at f8000000 (32-bit, non-prefetchable)<br>
 &nbsp; Region 1: Memory at d8000000 (64-bit, prefetchable)<br>
 &nbsp; Region 3: Memory at d4000000 (64-bit, prefetchable)<br>
[/CODE]

In fact, the problem is that BAR1 and BAR2, both 64-bit prefetchable, are missing for both devices which means that the PCIe is 4GB addressable but not beyond that limit.

#### Ubuntu 20.04.6 LTS

I gave a try with Ubuntu 20.04.6 LTS which is running, after the update, with a Linux 5.15.0-131-generic and installed by default the Nvidia driver 470 serie.

[!CODE]
root@P910:~# lspci -vvv |grep -iA 20 nvidia|grep -ie region -ie lnkcap:<br>
 &nbsp; Region 0: Memory at f0000000 (32-bit, non-prefetchable) [size=16M]<br>
 &nbsp; Region 1: Memory at <unassigned> (64-bit, prefetchable)<br>
 &nbsp; Region 3: Memory at <unassigned> (64-bit, prefetchable)<br>
 &nbsp; &nbsp; LnkCap:	Port #8, Speed 8GT/s, Width x16, ASPM not supported<br>
 &nbsp; Region 0: Memory at f1000000 (32-bit, non-prefetchable) [size=16M]<br>
 &nbsp; Region 1: Memory at <unassigned> (64-bit, prefetchable)<br>
 &nbsp; Region 3: Memory at <unassigned> (64-bit, prefetchable)<br>
 &nbsp; &nbsp; LnkCap:	Port #16, Speed 8GT/s, Width x16, ASPM not supported<br>

root@P910:~# lspci -vvv | grep -i -e nvidia -e PLX<br>
01:00.0 PCI bridge: PLX Technology, Inc. PEX 8747 48-Lane, 5-Port PCI Express Gen 3 (8.0 GT/s)<br>
\_Switch (rev ca) (prog-if 00 [Normal decode])<br>
 ...<br>
02:08.0 PCI bridge: PLX Technology, Inc. PEX 8747 48-Lane, 5-Port PCI Express Gen 3 (8.0 GT/s)<br>
\_Switch (rev ca) (prog-if 00 [Normal decode])<br>
 ...<br>
02:10.0 PCI bridge: PLX Technology, Inc. PEX 8747 48-Lane, 5-Port PCI Express Gen 3 (8.0 GT/s)<br>
\_Switch (rev ca) (prog-if 00 [Normal decode])<br>
 ...<br>
03:00.0 3D controller: NVIDIA Corporation GK210GL [Tesla K80] (rev a1)<br>
 ...<br>
04:00.0 3D controller: NVIDIA Corporation GK210GL [Tesla K80] (rev a1)<br>
 ...<br>
[/CODE]

The output is much more comforting because all the memory BARs are present but still not assigned. While the warnings in the kernel log remained alike the same.

<!--

root@P910:~# apt list --installed  | grep -i nvidia | cut -d/ -f1

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

libnvidia-common-470
libnvidia-compute-470
libnvidia-extra-470
linux-modules-nvidia-470-5.15.0-131-generic
linux-modules-nvidia-470-5.15.0-67-generic
linux-modules-nvidia-470-generic-hwe-20.04
linux-objects-nvidia-470-5.15.0-131-generic
linux-objects-nvidia-470-5.15.0-67-generic
linux-signatures-nvidia-5.15.0-131-generic
linux-signatures-nvidia-5.15.0-67-generic
nvidia-compute-utils-470
nvidia-kernel-common-470
nvidia-kernel-source-470
nvidia-modprobe
nvidia-prime


//-->

+
===

|x|>
## WORK IN PROGRESS
<|x|

===
+

<span id="bios-as-fw"></span>
### Why do PCs still have a BIOS?

The BIOS (Basic Input Output System) is a firmware stored in a separate chip, but why does a modern Personal Computer still have a troubles-maker firmware for booting?

Even an ARM system requires some kind of hardware initialisation at boot time, but why put such a thing into a separate chip instead of into UEFI (Unified Extensible Firmware Interface)?

> The 80286 was released in early 1982. The IBM PC AT, which used it, was released in late 1984.

This is the reason why we still have a BIOS on PC architecture in 2024, to be "back-compatible" with a design from 1981 as powerful as a modern $5-priced college "scientific" calculator made in China. Which is NOT the funniest part of the story, obviously. {;-)}

Fujitsu developed a 0-Watt ATX solution which is included into Esprimo P910 E85+ but has not provided a BIOS update for that model since 2014 and it lacks "Above 4GB decoding" to leverage PCIe 64-bit addressing. Saving energy is green but what about EoSL?

> The system model in question has reached EoSL (End of Support Life) status since 2021. Hence all available support and information regarding this model beyond what is provided in the FTS Support site for this model, is no longer available. -- Specialisti Fujitsu di 2nd Level.

Please notice that the last BIOS release for the P910 E85+ model is dated back in 2014, seven years before the EoSL. It is bold from their side to provide such a kind of answer! 

Especially because the Nvidia Tesla K80 was designed for the workstation and data-center markets, which fits perfectly in the definition of Fujitsu P910 platform: a workstation.

> The Tesla K80 was a professional graphics card by NVIDIA, launched on November 17th, 2014.

Despite this, and despite not being the only 4GB+ PCIe 3.0 device on the market at that time, seven years - let me underline this number saying 2500+ days - have passed away without someone addressing this limitation which is not even publicised into the product specifications. We have to discover it by ourselves!

Are we sharing the same feeling about putting an end to the BIOS-as-FW paradigm?

+

## PCIe 3.0 GPU cards

All the GPU cards listed below are

- double-slot width form factor, unless otherwise specified;
- PCIe 3.0 16x, apart the Tesla K20c/m/s for which 2.0 is fine, also;
- primarily designed for data center use, apart from those marked for PC use;
- within a 250W maximum power consumption, apart dual-GPU models at 300W;
- those cards consuming over 75W require an auxiliary power cable.

All the GPU cards listed below have

- more than 4GB of on board RAM , require "Above 4GB Decoding" support by mobo/BIOS;
- GDDR5 bandwidth range is 190-350 GB/s, dual-GPU aggregate range is 320-480 GB/s;
- GDDR6 bandwidth range is 320-450 GB/s. HBM2 bandwidth range is 450-900 GB/s.

As per rules of thumb:

- power cables have a standard 11A limit per line, each 12V line takes 2 pins for 132W max;
- each power cable line is usually limited to 50% of its nominal current due to adapters use;
- dual-GPU cards' 8-pin CPU cable powered by 4-pin CPU adapter is exceeding nominal values;
- nominal values of power wires are intended for constant and sustained power load (TDP);
- the GPU card TDP is 85% c.a. of the max power consumption, 75% for the dual-GPU cards.

For local AI workloads, among the listed GPU cards:

- top models: Quadro RTX 8000, Tesla V100 32GB or Titan V 32GB, 2x Tesla T4/G;
- resourceful: Quadro RTX 6000, Titan RTX, Tesla K80;
- reference level: 2048 CUDA cores with 12GB of RAM;
- entry level: 1280 CUDA cores with 8GB of RAM;
- essentials: CUDA 3.7 on PCIe 3.0 x16.

This list may contain inaccuracies. Always rely on official manufacturer documentation before making any purchasing or configuration decisions.

++++

| model             | arch.    | GPU      | CUDA | cores   | RAM           | use | W-max| alim.|size|
|-------------------|----------|----------|------|---------|---------------|-----|------|------|----|
| RTX 2060          | Turing   | TU106    | 7.5  | 1920    | 6 GB GDDR6    | PC  | 160W | 8p   |    |
| RTX 2060 12GB     | Turing   | TU106    | 7.5  | 2176    | 12GB GDDR6    | PC  | 184W | 8p   |    |
| Quadro RTX 2070   | Turing   | TU106    | 7.5  | 2304    | 8 GB GDDR6    | PC  | 175W | 8p   |    |
| Quadro RTX 2070S  | Turing   | TU104    | 7.5  | 2560    | 8 GB GDDR6    | PC  | 215W | 6+8p |    |
| Quadro RTX 2080   | Turing   | TU104    | 7.5  | 2944    | 8 GB GDDR6    | PC  | 215W | 6+8p |    |
| Quadro RTX 4000   | Turing   | TU104    | 7.5  | 2304    | 8 GB GDDR6    | PC  | 160W | 8p   | 1x |
| Quadro RTX 5000   | Turing   | TU104    | 7.5  | 3072    | 16GB GDDR6    | PC  | 230W | 6+8p |    |
| Tesla T4/G        | Turing   | TU104    | 7.5  | 2560    | 16GB GDDR6    |     | 75 W |      | 1x |
| CMP 50HX          | Turing   | TU102    | 7.5  | 3584    | 10GB GDDR6    |     | 250W | 2x8p |    |
| RTX 2080 Ti       | Turing   | TU102    | 7.5  | 4352    | 11GB GDDR6    | PC  | 250W | 6+8p |    |
| RTX 2080 Ti 12 GB | Turing   | TU102    | 7.5  | 4608    | 12GB GDDR6    | PC  | 260W | 6+8p |    |
| Tesla T10 16 GB   | Turing   | TU102    | 7.5  | 3072    | 16GB GDDR6    |     | 150W | 1x8p |    |
| Tesla T40 24 GB   | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    |     | 260W | 6+8p |    |
| Titan RTX         | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    | PC  | 280W | 2x8p |    |
| Quadro RTX 6000   | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    | PC  | 260W | 6+8p |    |
| Quadro RTX 8000   | Turing   | TU102    | 7.5  | 4608    | 48GB GDDR6    | PC  | 260W | 6+8p |    |
| Titan V           | Volta    | GV100    | 7.0  | 5120    | 12GB HBM2     | PC  | 250W | 6+8p |    |
| Titan V 32GB      | Volta    | GV100    | 7.0  | 5120    | 32GB HBM2     | PC  | 250W | 6+8p |    |
| Tesla V100        | Volta    | GV100    | 7.0  | 5120    | 16GB HBM2     |     | 250W | 2x8p |    |
| Tesla V100 32GB   | Volta    | GV100    | 7.0  | 5120    | 32GB HBM2     |     | 250W | 2x8p |    |
| Quadro GP100      | Pascal   | GP100    | 6.0  | 3584    | 16GB HBM2     | PC  | 235W | 8p   |    |
| Tesla P100        | Pascal   | GP100    | 6.0  | 3584    | 12GB HBM2     |     | 250W | 8p   |    |
| Tesla P100 16GB   | Pascal   | GP100    | 6.0  | 3584    | 16GB HBM2     |     | 250W | 8p   |    |
| Tesla P40         | Pascal   | GP102    | 6.1  | 3840    | 24GB GDDR5    |     | 250W | 8p   |    |
| GTX 1060          | Pascal   | GP106    | 6.1  | 1280    | 8 GB GDDR5    | PC  | 120W | 6p   |    |
| GTX 1070          | Pascal   | GP104    | 6.1  | 1920    | 8 GB GDDR5    | PC  | 150W | 8p   |    |
| GTX 1080          | Pascal   | GP104    | 6.1  | 2560    | 8 GB GDDR5X   | PC  | 180W | 8p   |    |
| Quadro P4000      | Pascal   | GP104    | 6.1  | 1792    | 8 GB GDDR5    | PC  | 105W | 6p   | 1x |
| Quadro P5000      | Pascal   | GP104    | 6.1  | 2560    | 16GB GDDR5    | PC  | 180W | 8p   |    |
| Tesla P4          | Pascal   | GP104    | 6.1  | 2560    | 8 GB GDDR5    |     | 75 W |      | 1x |
|-------------------|----------|----------|------|---------|---------------|-----|------|------|----|
| **model**       |**arch.**|**GPU**|**CUDA**|**cores**|**RAM**|**use**|**W-max**|**alim.**|**size**|
|-------------------|----------|----------|------|---------|---------------|-----|------|------|----|
| Quadro M4000      | Maxwell2 | GM204    | 5.2  | 1664    | 8 GB GDDR5    | PC  | 120W | 6p   | 1x |
| Quadro M5000      | Maxwell2 | GM204    | 5.2  | 2048    | 8 GB GDDR5    | PC  | 150W | 6p   |    |
| Tesla M60         | Maxwell2 | 2x GM204 | 5.2  | 2x 2048 | 2x 8GB GDDR5  |     | 300W | 8p   |    |
| GTX 980 Ti        | Maxwell2 | GM200    | 5.2  | 2816    | 6 GB GDDR5    | PC  | 250W | 6+8p |    |   
| GTX Titan X       | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    | PC  | 250W | 6+8p |    |   
| Quadro M6000 24GB | Maxwell2 | GM200    | 5.2  | 3072    | 24GB GDDR5    | PC  | 250W | 8p   |    |
| Quadro M6000      | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    | PC  | 250W | 8p   |    |
| Tesla M40 24GB    | Maxwell2 | GM200    | 5.2  | 3072    | 24GB GDDR5    |     | 250W | 8p   |    |
| Tesla M40         | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    |     | 250W | 8p   |    |
|                   |          |          |      |         |               |     |      |      |    |
| Tesla K80         | Kepler   | 2x GK210 | 3.7  | 2x 2496 | 2x 12GB GDDR5 |     | 300W | 8p   |    |
|                   |          |          |      |         |               |     |      |      |    |
| Tesla K40c        | Kepler   | GK180    | 3.5  | 2880    | 12GB GDDR5    |     | 245W | 6+8p |    |
| Quadro K6000 SDI  | Kepler   | GK110    | 3.5  | 2880    | 12GB GDDR5    | PC  | 239W | 2x6p |    |
| GTX Titan         | Kepler   | GK110    | 3.5  | 2880    | 6 GB GDDR5    | PC  | 250W | 6+8p |    |
| Tesla K20X/Xm     | Kepler   | GK110    | 3.5  | 2688    | 6 GB GDDR5    |     | 235W | 6+8p |    |
| Tesla K20c/m/s    | Kepler   | GK110    | 3.5  | 2496    | 5 GB GDDR5    |     | 225W | 6+8p |    |

The CUDA support for compute capability 3.5 can be obtained via third party support for PyTorch, also.

#### Data sources

- [www.techpowerup.com](https://www.techpowerup.com/gpu-specs)
- [developer.nvidia.com](https://developer.nvidia.com/cuda-gpus)

+

## External resources

- [Newer PyTorch Binaries for Older GPUs](https://blog.nelsonliu.me/2020/10/13/newer-pytorch-binaries-for-older-gpus) (October 13, 2020)
  - [Nvidia K40 GPUs PyTorch v1.13.1](https://github.com/nelson-liu/pytorch-manylinux-binaries/releases)

- [techpowerup vgabios](https://www.techpowerup.com/vgabios)

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
