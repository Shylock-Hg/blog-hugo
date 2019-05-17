---
title: "Cross Develop In Linux"
date: 2018-05-31
tags: ['embedded-system','linux']
published: true
comments: true
---

## Architecture

### build system

1. cross compiler toolchain such as *gcc-xxx-xxx-xxx*.
2. support files such as *SDK(ARCH, register, HAL)*, *linker script*, *Makefile*.
option:

### debug architecture

1. debugger driver such as *jlink* , *stlink*.
2. debugger gdb server.
3. gdb of toolchain.

![cross-debug-in-linux](/assets/images/posts/cross-debug-in-linux.png)
