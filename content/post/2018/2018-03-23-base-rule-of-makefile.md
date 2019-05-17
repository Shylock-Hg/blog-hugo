---
title:  "Base rule of makefile!"
date:   2018-03-23
tags: ['make','linux','c']
published: true
comments: true
---

Base rule of makefile
=====================

## Base rule

target ... : prerequisites ... <br/>
&nbsp;&nbsp;&nbsp;&nbsp; recipe <br/>
&nbsp;&nbsp;&nbsp;&nbsp; recipe <br/>
&nbsp;&nbsp;&nbsp;&nbsp; ...    <br/>

## Target

  - generated file name
  - phony target

*note:make search target in `.` and `$(VPATH)` directories.*

## Prerequisites
  
  - file(directory) name
  - target

*note:make search prerequisites in `.` and `$(VPATH)` directories.*

## Recipe
  
  shell command.
