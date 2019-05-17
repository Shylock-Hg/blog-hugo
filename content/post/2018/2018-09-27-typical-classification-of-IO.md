---
title: "Typical Classification Of IO"
date: 2018-09-27
tags: ['abstract']
published: true
comments: true
---

## Basic conception

master <--IO--> slave

- blocking or noblocking, if master cant't do anything when IO.
- synchronous or asynchronous, if master need to query state of IO.

IO, data from one place to another.

## Classification

|            |blocking   |noblocking|
|:--         |:--        |:--       |
|synchronous |master can't do other things and need to query state of IO|master can do other things and need to query state of IO|
|asynchronous|master can't do other things and needn't to query state of IO|master can do other things and needn't to query state of IO|

## Linux network model
