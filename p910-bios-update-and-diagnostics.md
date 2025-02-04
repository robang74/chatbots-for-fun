<div id="firstdiv" created="2025-02-04:EN" style="max-width: 800px; margin: auto; white-space: pre-wrap; text-align: justify;">
<style>#printlink { display: inline; } @page { size: a4; margin: 0.36in 13.88mm 0.50in 13.88mm; zoom: 100%; } @media print { html { zoom: 100%; } }</style>

<div align="center"><img class="wbsketch inksave" src="img/fujitsu-p910-e85plus-bios-screen-2s.jpg"><br></div>

## Fujistus P910 E85+ BIOS update & diagnostics

---

### 1. FreeDOS bootable USB image

   - **source**: [download area](https://www.freedos.org/download/)

...

### 2. Last stable LiteUSB 

   - **source**: [FreeDOS 1.3 Lite USB](https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.3/official/FD13-LiteUSB.zip)

   - wget; unzip; dd; gparted:resize:63MiB; mount:usbdisk1

...

### 3. Fujitsu support

   - **source**: [Quick search](https://support.ts.fujitsu.com/IndexQuickSearchResult.asp) keyword: D3162-A1x

...

### 4. Lastest diagnostic tools available

[!INFO]

System Diagnostics DOS (USB Stick)

Versione: 4.06.131206 (05/12/2013)

Dimensione: 10.43 MB

MD5: EA755F40B1156A12A0DC23707BB539ED

SHA256: 32EF5E94C820745C19323BC039186E253D7C2153C2F783667C9D8F17C6857D86

[/INFO]

   - **source**: [FTS System Diagnostics DOS USB Stick](https://support.ts.fujitsu.com/IndexDownload.asp?SoftwareGuid=DCC1A861-C236-4D84-ADBA-FC78E0B51D7E)

   - wget; unzip; cp:unzip/&ast;/data/&ast;:usb1dir; mkdir:usb1dir/temp;

[!CODE]
usb1=[usb1 mount-point path]

sed -e '/\.sys/ s,FREEDOS\\BIN,\FDOS,I' -i ${usb1}/CONFIG.SYS

sed -e 's,=[^ ]&ast;\(\\COMMAND.COM\),=\1,gI' -i ${usb1}/fdconfig.sys

sed -e 's,\(SET DOSDIR=\).*,\1\\FDOS,I' -e 's,\(%dosdir%\)\\bin,\1,gI' -i ${usb1}/fdauto.bat

sed -e "s/%[bram]\{0,3\}DRV%://gI" -e "s,%1:[%\\],,g" -i $(find ${usb1} -iname \&ast;.bat)

sed -e "s/bat %DRV%/bat ''/" -i ${usb1}/TOOLS/BASE/me.bat

mv ${usb1}/AUTOEXEC.BAT ${usb1}/diag.bat
[/CODE]

...

### 5. Lastest BIOS available admin package

[!INFO]

D3162-A1x - Admin package - Compressed Flash Files

Versione: V4.6.5.3 - R1.23.0 (01/12/2014)

Dimensione 43.12 MB

MD5: 0149B86EB671F1F60975E1B40445260E

SHA256: 25832921C80C0FEFD8E92574F7138C0CBFFDC11DA0DD5F3FAFF1DCDED49BD881

[/INFO]

   - **source**: [FTS D3162A1x Admin package](https://support.ts.fujitsu.com/IndexDownload.asp?SoftwareGuid=38A1936D-6452-44EC-A10C-A42039C6F5A2)

   - wget; unzip; cp:unzip/DOS/&ast;:usb1dir
   - umount:usb1dir

...

### 6. Customised bootable image backup (optional)

[!CODE]
usbdisk=[usb disk device]

img="fdos-p910-bios-diag.img"

fdisk -l ${usbdisk} | grep ${usbdisk}1

sectors=[usb disk p1 size in 512 byte sectors, biggest number]

dd if=${usbdisk} count=${sectors} | pigz - >${img}.gz
[/CODE]

....

### 7. Post archiving image modding (optional, not required)

[!CODE]
pigz -dc ${img}.gz > ${img}; losetup -Pf ${img}

[do whatever you like on loop device 1st partition]

losetup -l | grep ${img}; losetup -D ${loop}
[/CODE]

...

### 8. Usage

> [!WARN]
> 
> It is strongly suggested a cold reboot between HW diagnosys and BIOS update.

   - **keyb it** - for the italian keyboard

   - **diag.bat** - for hardware diagnosys

   - **dosflash.bat** - for the bios update

+

## Copyright

&copy; 2025, **Roberto A. Foglietta** &lt;roberto.foglietta<span>@</span>gmail.com&gt;, [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/)

</div>
