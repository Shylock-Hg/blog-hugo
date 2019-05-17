---
title: "Add Msp430 Register"
date: 2018-06-06
tags: ['msp430']
published: true
comments: true
---

## add register definition of msp430

1. add msp430 register address to *msp430fxxxx_symbol.ld* or *msp430fxxxx.cmd*.
2. define register by *sfr_w* or *sfr_b* in *msp430fxxxx.h* by symbol of register address.
3. include the header file to access register of msp430.
