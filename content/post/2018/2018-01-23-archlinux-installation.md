---
title:  "Tips in installation of Archlinux"
date:   2018-01-23
tags:   ['linux']
published: true
comments: true
---

## Overview

This is not a lesson for installation of Archlinux,
but list of tips for problem what I meet in installation for Arch.
There is lesson for [Arch](www.archlinux.org),if you want.

## Wireless network

```bash
#look for wireless device
ip link
#active wireless device, wlan is your wireless device name, if get err maybe install firmware for device
ip link set wlan up
#scan the available wireless network
iw dev wlan scan
#The fellow is for wpa/wpa2 wireless network
#generate wpa/wpa2 wireless network configuration file
wpa_passphrase SSID PASSWORD > ./wpa_supplicant.conf #where SSID is wireless network name, PASSWORD is key for wireless network
#connect to wireless network
wpa_supplicant -B -i wlan -c ./wpa_supplicnat.conf
#Start dhcpcd
dhcpcd wlan
#ping
ping google.com
```

## Simple partion

partion|format
-------|------
boot   |EFI
swap   |Linux Swap
\      |Linux Filesystem

Then format&mount partions:


```bash
#boot
mkfs.fat -F32 /dev/sda1
#swap
mkswap /dev/sda2
swapon /dev/sda2
#root
mkfs.ext4 /dev/sda3
#mount
mount /dev/sda3 /mnt
mount /dev/sda1 /mnt/boot
```

*tips:you can check file system in /etc/fstab*
