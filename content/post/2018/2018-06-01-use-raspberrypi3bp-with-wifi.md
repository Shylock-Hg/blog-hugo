---
title: "Use Raspberrypi3bp With Wifi"
date: 2018-06-01
tags: ['linux']
published: true
comments: true
---

## burn raspbian to sdcard

refer raspberrypi.org

## start ssh service

1. create empty **file** `ssh` in sdcard **boot** partition.
2. create empty **folder** `ssh` in sdcard **root-fs**.

## enable wifi connection

0. `nmap` scan LAN to get raspberry pi ip address.
1. `ssh` login to raspberry pi.
2. generate wap_supplicant config file to **/etc/wpa_supplicant/wpa_supplicant.conf**.
3. `sudo ip link set wlan0 up`
4. `sudo dhcpcd wlan0`
5. `sudo ip link set eth0 down`
6. `sudo reboot`
