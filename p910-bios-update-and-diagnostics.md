<div id="firstdiv" created="2025-02-04:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: legal; margin: 0.50in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch paleinv inksave" src="img/fujitsu-p910-e85plus-bios-screen-2s.jpg"><br></div>

## Fujitsu P910 E85+ BIOS update & HW diagnostics

- This paper is part of the [Fujitsu P910 w/ Tesla K80 installation manual](p910-k80-installation-manual-intro.md#?target=_blank) serie.

This document provides a guide for creating a bootable FreeDOS USB 64MB drive for BIOS updates and hardware diagnostics. It is specifically tailored for Esprimo P910 E85+ but it can be used as a canvas for every other PC/laptop for which DOS tools are available.

---

### 1. FreeDOS bootable USB image

- **Source**: [download page](https://www.freedos.org/download/)

...

### 2. Last stable LiteUSB 

- **Source**: [FreeDOS 1.3 Lite USB](https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.3/official/FD13-LiteUSB.zip)

   - wget : $archive
   - unzip : $archive
   - dd : $image : $usbdisk
   - gparted : $usbdisk : resize : 63MiB
   - mount : $usbdisk1 : $usb1dir

...

### 3. Fujitsu support

- **Source**: [Quick search](https://support.ts.fujitsu.com/IndexQuickSearchResult.asp) &nbsp;&ndash;&nbsp; **keyword**: D3162-A1x

...

### 4. Latest diagnostic tools available

[!INFO]

System Diagnostics DOS (USB Stick)<br>
Versione: 4.06.131206 (05/12/2013)<br>
Dimensione: 10.43 MB<br>
MD5: EA755F40B1156A12A0DC23707BB539ED<br>
SHA256: 32EF5E94C820745C19323BC039186E253D7C2153C2F783667C9D8F17C6857D86

[/INFO]

- **Source**: [FTS System Diagnostics DOS USB Stick](https://support.ts.fujitsu.com/IndexDownload.asp?SoftwareGuid=DCC1A861-C236-4D84-ADBA-FC78E0B51D7E)

   - download : $archive
   - unzip : $archive : ./diag/

[!CODE]
dst &lt;= [usb1 mount-point path]

cp -arf ./diag/&ast;/data/&ast; ${dst}/<br>
sed -e '/\.sys/ s,FREEDOS\\BIN,\FDOS,I' -i ${dst}/CONFIG.SYS<br>
sed -e 's,=[^ ]&ast;\(\\COMMAND.COM\),=\1,gI' -i ${dst}/fdconfig.sys<br>
sed -e 's,\(SET DOSDIR=\).&ast;,\1\\FDOS,I' -e 's,\(%dosdir%\)\\bin,\1,gI' -i ${dst}/fdauto.bat<br>
sed -e "s/%[bram]\{0,3\}DRV%://gI" -e "s,%1:[%\\],,g" -i $(find ${dst} -iname \&ast;.bat)<br>
sed -e "s/bat %DRV%/bat ''/" -i ${dst}/TOOLS/BASE/me.bat<br>
mv ${dst}/AUTOEXEC.BAT ${dst}/diag.bat
[/CODE]

...

### 5. Latest BIOS available admin package

[!INFO]

D3162-A1x - Admin package - Compressed Flash Files<br>
Versione: V4.6.5.3 - R1.23.0 (01/12/2014)<br>
Dimensione 43.12 MB<br>
MD5: 0149B86EB671F1F60975E1B40445260E<br>
SHA256: 25832921C80C0FEFD8E92574F7138C0CBFFDC11DA0DD5F3FAFF1DCDED49BD881

[/INFO]

- **Source**: [FTS D3162A1x Admin package](https://support.ts.fujitsu.com/IndexDownload.asp?SoftwareGuid=38A1936D-6452-44EC-A10C-A42039C6F5A2)

   - download : $archive
   - unzip : $archive : ./bios/

[!CODE]
dst &lt;= [usb1 mount-point path]

cp -arf ./bios/DOS/&ast; ${dst}/<br>
umount ${dst}/
[/CODE]

...

### 6. Customised bootable image backup (optional)

The command `gzip` can be replaced to `pigz` which is parallel - hence faster - counterpart.

[!CODE]
usbdisk &lt;= [usb disk device]

umount ${usbdisk}&ast;<br>
fdisk -l ${usbdisk} | grep ${usbdisk}1<br>

sectors &lt;= [usb disk p1 size in 512 byte sectors, biggest number]

image="fdos-p910-bios-diag.img"<br>
dd if=${usbdisk} count=${sectors} | pigz - >${image}.gz
[/CODE]

This action is not strictly needed for an once-a-time BIOS update process. It is important for having a long-lasting archive of the bootable FreeDOS image. This archive serves also as a forensic-like record of the exact environment used.

...

### 7. Post archiving image deployment (optional)

[!CODE]
image="fdos-p910-bios-diag.img"<br>
pigz -dc ${image}.gz > ${image}; losetup -Pf ${image}

[do whatever you like on loop device 1st partition]

losetup -D $(losetup -l | grep ${image} | cut -d' ' -f1)
[/CODE]

.....

### 8. Bootable USB drive usage

> [!WARN]
> 
> It strongly suggested a cold reboot between HW diagnosys and BIOS update.

- **keyb it** - for the italian keyboard
- **diag.bat** - for hardware diagnosys
- **dosflash.bat** - for the bios update

...

### 9. Default settings

At the first boot, enter in the BIOS with **`F2`** and reset the setting to its optimal default. It should be considered a best-practice starting from the default settings proposed by the manufacturer to apply our settings changes and note them.

|x|>
<img class="bwsketch darkinv inksave" src="img/p910-system-bios-screenshot.png" width="800">
+
<sub>*right click menu to 2x-enlarge the image*</sub>
<|x|

#### About AMT settings

Suggestion -- when the P910 is newly bought, then enable the password-less unconfiguration of the [ATM](https://www.intel.com/content/www/us/en/support/articles/000091667/technologies/intel-active-management-technology-intel-amt.html#primary-content) sub-system which `admin` is default password, usually.

> [!INFO]
> 
> Intel Active Management Technology (AMT) is a hardware-based remote management system that allows IT administrators to monitor, maintain, and repair computers, even when they are powered off or the operating system is unresponsive.

[/INFO]

++++

#### Corner case settings

Suggestion -- provide yourself with an headless remotable alternative way to access the BIOS or to the system, as soon as possible.

> [!WARN]
> 
> Selecting `IDG` as a graphic card and disabling it, makes the system lose the monitor output. Moreover, removing the `CMOS` battery even for a long time, does not reset the BIOS configuration. To recover from that situation, I blindly tried sequences of `ESC`, `F3`, `F4` and `ENTER` key pressing and `CTRL-ALT-DEL` to reboot.

...

### 10. Serial console

The Esprimo P910’s BIOS allows to enable a serial console redirection which can provide - as expected - an headless and remotable access to the BIOS configuration. However, it requires a serial connection or an USB serial adapter and the related software like `minicom` to access it. 

Moreover, while the Fujitsu Esprimo P910 E85+ is considered a Workstation rather than an user-end Personal Computer, its motherboard is considered an industrial-grade hardware and it is largely adopted for Point-of-Sales machinery or for remote control edge-point for electric systems like shopping mall lighting or fire-fighting systems.

These two aspects, give us a reasonable hope about finding more fine-grained or extra-values BIOS settings accessing from the serial console, as professional system administration or engineers would do rather than end-users, which might include also enabling the "Above 4GB decoding" option which is needed for Tesla K80.

Unfortunately, this part is still under investigation because of the lack of a USB serial adapter, so it should be considered entirely speculative.

+

## Copyright

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
