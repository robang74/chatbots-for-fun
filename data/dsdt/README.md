## Fujitsu Esprimo P910 D3162-A1x DSDT OpRegion Conflicts

Here below few lines from the linux kernel 5.15.0-131-generic - which is the *at this time the last available HWE kernel on 20.04* - extracted with `dmesg` that indicates an issue into the DSDT of the Fujitsu Esprimo P910 E85+ BIOS *at this time the last version available* from the official Technical Support website.

```
ACPI Warning: SystemIO range 0x0000000000000428-0x000000000000042F conflicts with OpRegion
                             0x0000000000000400-0x000000000000047F (\PMIO) (20210730/utaddress-204)
ACPI Warning: SystemIO range 0x0000000000000540-0x000000000000054F conflicts with OpRegion
                             0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
ACPI Warning: 
SystemIO range 0x0000000000000530-0x000000000000053F conflicts with OpRegion
               0x0000000000000538-0x0000000000000538 (\_SB.PCI0.PEG0.SPWR) (20210730/utaddress-204)
ACPI Warning: SystemIO range 0x0000000000000530-0x000000000000053F conflicts with OpRegion
                             0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
ACPI Warning: SystemIO range 0x0000000000000500-0x000000000000052F conflicts with OpRegion
                             0x0000000000000500-0x0000000000000563 (\GPIO) (20210730/utaddress-204)
```

Check this [page](https://robang74.github.io/chatbots-for-fun/html/p910-bios-update-and-diagnostics.html) about the BIOS update, version etc).

To check if the running kernel has the ACPI table upgrade capability enabled execute this command in a console or terminal:

- `grep ACPI_TABLE_UPGRADE /lib/modules/$(uname -r)/build/.config`

Which for sake of completeness (`set -x` to show how it unfolds) this below is reported its output


```
root@P910:~# set -x
root@P910:~# grep ACPI_TABLE_UPGRADE /lib/modules/$(uname -r)/build/.config
++ uname -r
+ grep --color=auto ACPI_TABLE_UPGRADE /lib/modules/5.15.0-131-generic/build/.config
CONFIG_ARCH_HAS_ACPI_TABLE_UPGRADE=y
CONFIG_ACPI_TABLE_UPGRADE=y
```

<br>

### Dumped data

- [D3162-A1x DSDT](p910-d3162-a1x-dsdt-aml.gz) single file gzipped

- [/sys/firmware/acpi/tables](sys-firmware-acpi-tables.tar.gz) tarball archive

<br>

### External resources

- [wiki.archlinux.org/title/DSDT](https://wiki.archlinux.org/title/DSDT)

- [ubuntu.com/blog/debug-dsdt-ssdt-with-acpica-utilities](https://ubuntu.com/blog/debug-dsdt-ssdt-with-acpica-utilities)

- [tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)

- [fuchsia.googlesource.com/third_party/acpica/ ... /changes.txt](https://fuchsia.googlesource.com/third_party/acpica/+/d7bd2596db70275e5f0d0dab6e538c4d46a4cb54/changes.txt)

<br>

## Share alike

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)
