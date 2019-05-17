---
title: "Build Cross Develop Environment For Raspberrypi"
date: 2018-06-23
tags: ['linux']
published: true
comments: true
---

1. get kernel and toolchain from github.

```bash
git clone https://github.com/raspberrypi/linux.git
git clone https://github.com/raspberrypi/tools.git
```
2. config kernel source.
    1. generate *config.gz* from raspberry pi . <br/>
    `modprobe configs`
    2. get *config.gz* from raspberry pi. <br/>
    `scp pi@<raspberrypi ip>:/proc/config.gz $HOME/Workspace/raspberrypi/linux`
    3. decompress *config.gz* get *.config*. <br/>
    `zcat config.gz > .config`
    4. generate kernel config. <br/>
    `make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- oldconfig`

3. compile kernel. <br/>
  `make ARCH=arm CROSS_COMPIEL=arm-linux-gnueabihf- -j8`
