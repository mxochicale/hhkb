Working Machine
---

```
hciconfig -a; dmesg | egrep -i 'blue|firm'
```

```
$ hciconfig -a; dmesg | egrep -i 'blue|firm'
hci0:	Type: BR/EDR  Bus: USB
	BD Address: XX:XX:XX:XX:XX:XX  ACL MTU: 310:10  SCO MTU: 64:8
	UP RUNNING PSCAN ISCAN 
	RX bytes:54412 acl:2702 sco:0 events:477 errors:0
	TX bytes:3467 acl:95 sco:0 commands:187 errors:0
	Features: 0xff 0xff 0x8f 0xfe 0xdb 0xff 0x5b 0x87
	Packet type: DM1 DM3 DM5 DH1 DH3 DH5 HV1 HV2 HV3 
	Link policy: RSWITCH HOLD SNIFF PARK 
	Link mode: SLAVE ACCEPT 
	Name: 'ubuntu-0'
	Class: 0x600100
	Service Classes: Audio, Telephony
	Device Class: Computer, Uncategorized
	HCI Version: 4.0 (0x6)  Revision: 0x1ebd
	LMP Version: 4.0 (0x6)  Subversion: 0xfc00
	Manufacturer: Intel Corp. (2)

[    1.891984] psmouse serio1: elantech: assuming hardware version 4 (with firmware version 0x361f01)
[    2.838849] iwlwifi 0000:01:00.0: loaded firmware version 18.168.6.1 op_mode iwldvm
[    2.890319] Bluetooth: Core ver 2.21
[    2.890369] Bluetooth: HCI device and connection manager initialized
[    2.890373] Bluetooth: HCI socket layer initialized
[    2.890377] Bluetooth: L2CAP socket layer initialized
[    2.890383] Bluetooth: SCO socket layer initialized
[    3.485700] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    3.485704] Bluetooth: BNEP filters: protocol multicast
[    3.485708] Bluetooth: BNEP socket layer initialized
[    3.504942] Bluetooth: RFCOMM TTY layer initialized
[    3.504951] Bluetooth: RFCOMM socket layer initialized
[    3.504956] Bluetooth: RFCOMM ver 1.11
[ 9090.135788] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[ 9090.135798] Bluetooth: HIDP socket layer initialized
[ 9099.529612] input: HHKB-BT as /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/bluetooth/hci0/hci0:xx/xxxx:xxxx:xxxx.xxx/input/input11
[ 9099.530234] hid-generic 0005:04FE:0202.0001: input,hidraw0: BLUETOOTH HID v1.11 Keyboard [HHKB-BT] on xx:xx:xx:xx:xx:xx
[11213.363807] input: HHKB-BT as /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/bluetooth/hci0/hci0:xx/xxxx:xxxx:xxxx.xxxx/input/input12
[11213.365220] hid-generic xxxx:xxx:xxxx.xxxx: input,hidraw0: BLUETOOTH HID v1.11 Keyboard [HHKB-BT] on xx:xx:xx:xx:xx:xx


```
	

ref:  https://ubuntuforums.org/showthread.php?t=2338474




```
$ dpkg -l | grep blue
```


```
ii  bluez              		4.101-0ubuntu13.1	amd64        Bluetooth tools and daemons
ii  bluez-alsa:amd64   		4.101-0ubuntu13.1       amd64        Bluetooth ALSA support
ii  bluez-cups         		4.101-0ubuntu13.1       amd64        Bluetooth printer driver for CUPS
ii  gir1.2-gnomebluetooth-1.0	3.8.2.1-0ubuntu4.2     	amd64        Introspection data for GnomeBluetooth
ii  gnome-bluetooth             3.8.2.1-0ubuntu4.2     	amd64        GNOME Bluetooth tools
ii  indicator-bluetooth         0.0.6+14.04.20140207-0ubuntu2     amd64        System bluetooth indicator.
ii  libbluetooth3:amd64         4.101-0ubuntu13.1       amd64        Library to use the BlueZ Linux Bluetooth stack
ii  libgnome-bluetooth11        3.8.2.1-0ubuntu4.2       amd64        GNOME Bluetooth tools - support library
ii  pulseaudio-module-bluetooth 1:4.0-0ubuntu11.1        amd64        Bluetooth module for PulseAudio sound server
```


ref: https://books.google.co.uk/books?id=SaeIDQAAQBAJ&pg=PA59&lpg=PA59&dq=Bluetooth:+HIDP+(Human+Interface+Emulation)+ver+1.2&source=bl&ots=m7wcZ2MPsf&sig=9b8X0yMgz4sG0LCsM1GLQjcdfNo&hl=en&sa=X&ved=2ahUKEwi736vjzp7dAhXHN8AKHd3pAPQQ6AEwA3oECAcQAQ#v=onepage&q=Bluetooth%3A%20HIDP%20(Human%20Interface%20Emulation)%20ver%201.2&f=false





## machine features


`~/github/gnu-LINUX-tools/machineFeatures/./machineinfo.sh`


```
#################################################################
## Ubuntu Version: $lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 14.04.5 LTS
Release:	14.04
Codename:	trusty
#################################################################
## Machine Arquitecture: $uname -a
Linux EEE-003124 4.4.0-36-generic #55~14.04.1-Ubuntu SMP Fri Aug 12 11:49:30 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
#################################################################
## CPU INFO: $grep -E: (^model name|^vendor_id|^flags) /proc/cpuinfo | sort | uniq
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm epb tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms xsaveopt dtherm ida arat pln pts
model name	: Intel(R) Core(TM) i5-3317U CPU @ 1.70GHz
vendor_id	: GenuineIntel
#################################################################
#GRAPHIC CARD INFO:  $lspci -vnn | grep VGA -A 12
00:02.0 VGA compatible controller [0300]: Intel Corporation 3rd Gen Core processor Graphics Controller [8086:0166] (rev 09) (prog-if 00 [VGA controller])
	Subsystem: Samsung Electronics Co Ltd Device [144d:c0d3]
	Flags: bus master, fast devsel, latency 0, IRQ 34
	Memory at f0000000 (64-bit, non-prefetchable) [size=4M]
	Memory at e0000000 (64-bit, prefetchable) [size=256M]
	I/O ports at 3000 [size=64]
	Expansion ROM at <unassigned> [disabled]
	Capabilities: <access denied>
	Kernel driver in use: i915

00:16.0 Communication controller [0780]: Intel Corporation 7 Series/C210 Series Chipset Family MEI Controller #1 [8086:1e3a] (rev 04)
	Subsystem: Samsung Electronics Co Ltd Device [144d:c0d3]
	Flags: bus master, fast devsel, latency 0, IRQ 31
#################################################################
## gcc version: $gcc --version -O3 -std=c99
gcc (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4
Copyright (C) 2013 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.



```
