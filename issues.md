Issues
---


# [SORTED] no paired kb

* In case of problems with pairing your keyboard with the bluetoth CSR 4.0 dongle,
I run the following commmands to pair HHKB again  [:link:](https://askubuntu.com/questions/787023/bluetooth-not-working-on-ubuntu-16-04-lts)

```
rfkill block bluetooth
rfkill unblock bluetooth
```



# [SORTED] not paired with new installations

The problem is that ubuntu16.04 has been reinstalled into 
a machine and then the HHKB would not able to be connected. 
So, the following points describes some possible solutions
that for the moment have not worked. 


## * using dialout gruop to have access to bluetooth dongles

check groups
```
groups
```

add user to dialout group
```
sudo adduser USERNAME dialout
sudo reboot
```

nosucess: Wed 29 Aug 2018

## * Bluetooth pairing

```
 [fn]+Q 
```

nosucess: Wed 29 Aug 2018


## SORTED OUT 

When connecting the keyboard first time, 
one have to push the on/off power button many times
until appears in the detected devices!

sorted: Sun Sep 23 14:37:24 BST 2018







# Other references

refs:

https://askubuntu.com/questions/1032417/ubuntu-18-04-lts-bluetooth-0cf33004-discovery-not-working

https://askubuntu.com/questions/612399/hp-15-r212nl-ubuntu-14-04-bluetooth-dont-find-device


added: Mon Sep  3 12:35:22 BST 2018



