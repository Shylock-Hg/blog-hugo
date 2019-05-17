---
title: "Memory Padding And Packing"
date: 2018-04-04
tags: ['c']
published: true
comments: true
---

## Alignment requirements
 
  To speed memory accessing,the modern processor reuire to store base data from special address.The base rule is start address must can be divisible by size of corressponding base data.For example, ARM-32 processor,`byte` data start address must be divisible by `1`,`half word` data start address must be divisible by `2` and `word` data start address must be divisible by `4`.

## Padding

  For satisfiying the alignment requirements,padding rules occurs to solve several base data arrangement in continue memory segment,such as `c structrue` ,`c function stack` even `c bitfield`.

  The detail of padding rule is just to satisfy alignment in continue memory segment.The start base data of the continue memory segment is aligned and same to the all after it.
