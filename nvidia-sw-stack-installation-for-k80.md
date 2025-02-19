<div id="firstdiv" created="2025-01-25:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="bwsketch" src="img/nvidia-tesla-k80.png" width="800"><br></div>

## Nvidia Tesla K80 installation

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

++++

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


+
===

|x|>
## WORKING IN PROGRESS
<|x|

===
+

## PCIe 3.0 GPU cards

All the GPU cards listed below are

- double-slot width form factor, unless otherwise specified;
- PCIe 3.0 16x, apart the Tesla K20c/m/s for which 2.0 is fine, also;
- primarily designed for data center use, apart from those marked for PC use;
- within a 250W maximum power consumption, apart dual-GPU models at 300W;
- those cards consuming over 75W require an auxiliary power cable.

All the GPU cards listed below have

- more than 4GB of on board RAM , require "Above 4G Decoding" support by mobo/BIOS;
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

| model              | arch.    | GPU      | CUDA | cores   | RAM           | use    | W-max| alim.|size|
|--------------------|----------|----------|------|---------|---------------|--------|------|------|----|
| RTX 2060           | Turing   | TU106    | 7.5  | 1920    | 6 GB GDDR6    | PC     | 160W | 8p   |    |
| RTX 2060 12GB      | Turing   | TU106    | 7.5  | 2176    | 12GB GDDR6    | PC     | 184W | 8p   |    |
| Quadro RTX 2070    | Turing   | TU106    | 7.5  | 2304    | 8 GB GDDR6    | PC     | 175W | 8p   |    |
| Quadro RTX 2070S   | Turing   | TU104    | 7.5  | 2560    | 8 GB GDDR6    | PC     | 215W | 6+8p |    |
| Quadro RTX 2080    | Turing   | TU104    | 7.5  | 2944    | 8 GB GDDR6    | PC     | 215W | 6+8p |    |
| Quadro RTX 4000    | Turing   | TU104    | 7.5  | 2304    | 8 GB GDDR6    | PC     | 160W | 8p   | 1x |
| Quadro RTX 5000    | Turing   | TU104    | 7.5  | 3072    | 16GB GDDR6    | PC     | 230W | 6+8p |    |
| Tesla T4/G         | Turing   | TU104    | 7.5  | 2560    | 16GB GDDR6    |        | 75 W |      | 1x |
| CMP 50HX           | Turing   | TU102    | 7.5  | 3584    | 10GB GDDR6    |        | 250W | 2x8p |    |
| RTX 2080 Ti        | Turing   | TU102    | 7.5  | 4352    | 11GB GDDR6    | PC     | 250W | 6+8p |    |
| RTX 2080 Ti 12 GB  | Turing   | TU102    | 7.5  | 4608    | 12GB GDDR6    | PC     | 260W | 6+8p |    |
| Tesla T10 16 GB    | Turing   | TU102    | 7.5  | 3072    | 16GB GDDR6    |        | 150W | 1x8p |    |
| Tesla T40 24 GB    | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    |        | 260W | 6+8p |    |
| Titan RTX          | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    | PC     | 280W | 2x8p |    |
| Quadro RTX 6000    | Turing   | TU102    | 7.5  | 4608    | 24GB GDDR6    | PC     | 260W | 6+8p |    |
| Quadro RTX 8000    | Turing   | TU102    | 7.5  | 4608    | 48GB GDDR6    | PC     | 260W | 6+8p |    |
| Titan V            | Volta    | GV100    | 7.0  | 5120    | 12GB HBM2     | PC     | 250W | 6+8p |    |
| Titan V 32GB       | Volta    | GV100    | 7.0  | 5120    | 32GB HBM2     | PC     | 250W | 6+8p |    |
| Tesla V100         | Volta    | GV100    | 7.0  | 5120    | 16GB HBM2     |        | 250W | 2x8p |    |
| Tesla V100 32GB    | Volta    | GV100    | 7.0  | 5120    | 32GB HBM2     |        | 250W | 2x8p |    |
| Quadro GP100       | Pascal   | GP100    | 6.0  | 3584    | 16GB HBM2     | PC     | 235W | 8p   |    |
| Tesla P100         | Pascal   | GP100    | 6.0  | 3584    | 12GB HBM2     |        | 250W | 8p   |    |
| Tesla P100 16GB    | Pascal   | GP100    | 6.0  | 3584    | 16GB HBM2     |        | 250W | 8p   |    |
| Tesla P40          | Pascal   | GP102    | 6.1  | 3840    | 24GB GDDR5    |        | 250W | 8p   |    |
| GTX 1060           | Pascal   | GP106    | 6.1  | 1280    | 8 GB GDDR5    | PC     | 120W | 6p   |    |
| GTX 1070           | Pascal   | GP104    | 6.1  | 1920    | 8 GB GDDR5    | PC     | 150W | 8p   |    |
| GTX 1080           | Pascal   | GP104    | 6.1  | 2560    | 8 GB GDDR5X   | PC     | 180W | 8p   |    |
| Quadro P4000       | Pascal   | GP104    | 6.1  | 1792    | 8 GB GDDR5    | PC     | 105W | 6p   | 1x |
| Quadro P5000       | Pascal   | GP104    | 6.1  | 2560    | 16GB GDDR5    | PC     | 180W | 8p   |    |
| Tesla P4           | Pascal   | GP104    | 6.1  | 2560    | 8 GB GDDR5    |        | 75 W |      | 1x |
| Quadro M4000       | Maxwell2 | GM204    | 5.2  | 1664    | 8 GB GDDR5    | PC     | 120W | 6p   | 1x |
| Quadro M5000       | Maxwell2 | GM204    | 5.2  | 2048    | 8 GB GDDR5    | PC     | 150W | 6p   |    |
| Tesla M60          | Maxwell2 | 2x GM204 | 5.2  | 2x 2048 | 2x 8GB GDDR5  |        | 300W | 8p   |    |
| GTX 980 Ti         | Maxwell2 | GM200    | 5.2  | 2816    | 6 GB GDDR5    | PC     | 250W | 6+8p |    |   
| GTX Titan X        | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    | PC     | 250W | 6+8p |    |   
| Quadro M6000 24GB  | Maxwell2 | GM200    | 5.2  | 3072    | 24GB GDDR5    | PC     | 250W | 8p   |    |
| Quadro M6000       | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    | PC     | 250W | 8p   |    |
| Tesla M40 24GB     | Maxwell2 | GM200    | 5.2  | 3072    | 24GB GDDR5    |        | 250W | 8p   |    |
| Tesla M40          | Maxwell2 | GM200    | 5.2  | 3072    | 12GB GDDR5    |        | 250W | 8p   |    |
|                    |          |          |      |         |               |        |      |      |    |
| Tesla K80          | Kepler   | 2x GK210 | 3.7  | 2x 2496 | 2x 12GB GDDR5 |        | 300W | 8p   |    |
|                    |          |          |      |         |               |        |      |      |    |
| Tesla K40c         | Kepler   | GK180    | 3.5  | 2880    | 12GB GDDR5    |        | 245W | 6+8p |    |
| Quadro K6000 SDI   | Kepler   | GK110    | 3.5  | 2880    | 12GB GDDR5    | PC     | 239W | 2x6p |    |
| GTX Titan          | Kepler   | GK110    | 3.5  | 2880    | 6 GB GDDR5    | PC     | 250W | 6+8p |    |
| Tesla K20X/Xm      | Kepler   | GK110    | 3.5  | 2688    | 6 GB GDDR5    |        | 235W | 6+8p |    |
| Tesla K20c/m/s     | Kepler   | GK110    | 3.5  | 2496    | 5 GB GDDR5    |        | 225W | 6+8p |    |

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
