---
title:  "Tips of Constructing Environment for xtensa-esp32-elf"
date:   2018-02-25
tags: ['arch','embedded-system']
published: true
comments: true
---

## 1.Environment 

  1.x86_64 Linux 4.14.14-1-ARCH 

## 2.Tips of build cross-toolchain

  1.Need to build xtensa-esp32-elf toolchain locally.

  2.If build fail for mistake of scm_ports.o interface.Then change the value of *CT_GDB_CROSS_EXTRA_CONFIG_ARRAY* to *"--with-guile=guile-2.0"* in file *crosstool-NG/.config*.

  3.The tookchain built included in *crosstool-NG/builds/xtensa-esp32-elf/bin*.

## 3.Tips of ESP-IDF

  ESP-IDF:The specific API/lib of esp-32.
