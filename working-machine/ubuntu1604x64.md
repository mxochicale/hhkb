Ubuntu 1604x64
---


## machine features

* `./machineinfo.sh`


```
#################################################################
## Ubuntu Version: $lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 16.04.5 LTS
Release:	16.04
Codename:	xenial
#################################################################
## Machine Arquitecture: $uname -a
Linux machine 4.15.0-34-generic #37~16.04.1-Ubuntu SMP Tue Aug 28 10:44:06 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
#################################################################
## CPU INFO: $grep -E: (^model name|^vendor_id|^flags) /proc/cpuinfo | sort | uniq
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt dtherm ida arat pln pts flush_l1d
model name	: Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz
vendor_id	: GenuineIntel
#################################################################
#GRAPHIC CARD INFO:  $lspci -vnn | grep VGA -A 12
01:00.0 VGA compatible controller [0300]: NVIDIA Corporation GM206 [GeForce GTX 960] [10de:1401] (rev a1) (prog-if 00 [VGA controller])
	Subsystem: ASUSTeK Computer Inc. GM206 [GeForce GTX 960] [1043:8563]
	Flags: bus master, fast devsel, latency 0, IRQ 27
	Memory at f6000000 (32-bit, non-prefetchable) [size=16M]
	Memory at e0000000 (64-bit, prefetchable) [size=256M]
	Memory at f0000000 (64-bit, prefetchable) [size=32M]
	I/O ports at e000 [size=128]
	Expansion ROM at 000c0000 [disabled] [size=128K]
	Capabilities: <access denied>
	Kernel driver in use: nouveau
	Kernel modules: nvidiafb, nouveau

01:00.1 Audio device [0403]: NVIDIA Corporation Device [10de:0fba] (rev a1)
#################################################################
## gcc version: $gcc --version -O3 -std=c99
gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```



## bluetooth features and hhkb

`./bluehhkb`


```
#################################################################
## Bluetooth Dongle: lsusb | grep Bluetooth
Bus 003 Device 005: ID 0a12:0001 Cambridge Silicon Radio, Ltd Bluetooth Dongle (HCI mode)


#################################################################
## Ubuntu Version: $hciconfig -a; dmesg | egrep -i blue|firm
hci0:	Type: BR/EDR  Bus: USB
	BD Address: 00:1A:7D:DA:71:13  ACL MTU: 310:10  SCO MTU: 64:8
	UP RUNNING 
	RX bytes:705537 acl:38782 sco:0 events:283 errors:0
	TX bytes:4059 acl:60 sco:0 commands:102 errors:0
	Features: 0xff 0xff 0x8f 0xfe 0xdb 0xff 0x5b 0x87
	Packet type: DM1 DM3 DM5 DH1 DH3 DH5 HV1 HV2 HV3 
	Link policy: RSWITCH HOLD SNIFF PARK 
	Link mode: SLAVE ACCEPT 
	Name: 'machine'
	Class: 0x0c0104
	Service Classes: Rendering, Capturing
	Device Class: Computer, Desktop workstation
	HCI Version: 4.0 (0x6)  Revision: 0x22bb
	LMP Version: 4.0 (0x6)  Subversion: 0x22bb
	Manufacturer: Cambridge Silicon Radio (10)

[    0.028828] Spectre V2 : Enabling Restricted Speculation for firmware calls
[    0.048921] ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
[    2.714655] Bluetooth: Core ver 2.22
[    2.714666] Bluetooth: HCI device and connection manager initialized
[    2.714668] Bluetooth: HCI socket layer initialized
[    2.714669] Bluetooth: L2CAP socket layer initialized
[    2.714672] Bluetooth: SCO socket layer initialized
[    2.963066] Bluetooth: hci0: hardware error 0x37
[    3.191703] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    3.191704] Bluetooth: BNEP filters: protocol multicast
[    3.191706] Bluetooth: BNEP socket layer initialized
[   10.073511] Bluetooth: RFCOMM TTY layer initialized
[   10.073516] Bluetooth: RFCOMM socket layer initialized
[   10.073518] Bluetooth: RFCOMM ver 1.11
[   18.838574] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[   18.838577] Bluetooth: HIDP socket layer initialized
[  180.780017] input: HHKB-BT as /devices/pci0000:00/0000:00:14.0/usb3/3-14/3-14:1.0/bluetooth/hci0/hci0:70/NNNN:NNXX:NNNN.NNNN/input/input16
[  180.780243] hid-generic NNNN:NNXX:NNNN.NNNN: input,hidraw3: BLUETOOTH HID v1.11 Keyboard [HHKB-BT] on NN:NX:NX:XX:NN:NN



#################################################################
## Drivers: $ dpkg -l | grep blue
ii  bluez                                      5.37-0ubuntu5.1                              amd64        Bluetooth tools and daemons
ii  bluez-cups                                 5.37-0ubuntu5.1                              amd64        Bluetooth printer driver for CUPS
ii  bluez-obexd                                5.37-0ubuntu5.1                              amd64        bluez obex daemon
ii  gnome-bluetooth                            3.18.2-1ubuntu2                              amd64        GNOME Bluetooth tools
ii  indicator-bluetooth                        0.0.6+16.04.20160526-0ubuntu1                amd64        System bluetooth indicator.
ii  libbluetooth3:amd64                        5.37-0ubuntu5.1                              amd64        Library to use the BlueZ Linux Bluetooth stack
ii  libgnome-bluetooth13:amd64                 3.18.2-1ubuntu2                              amd64        GNOME Bluetooth tools - support library
ii  pulseaudio-module-bluetooth                1:8.0-0ubuntu3.10                            amd64        Bluetooth module for PulseAudio sound server

```






