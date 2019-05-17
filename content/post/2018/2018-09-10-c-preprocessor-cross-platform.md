---
title: "C Preprocessor Cross Platform"
date: 2018-09-10
tags: ['c']
published: true
comments: true
---

## Macro of compiler

|Compiler|Macro|
|:--     |:--  |
|gcc|__GNUC__,__GNUC_MINOR__,__GNUC_PATCHLEVEL__|
|clang|__clang__,__clang_major__,__clang_minor__,__clang_patchlevel__|
|msvc|__MSVC__|

## Macro of OS

|OS  |Macro|Prerequirements|
|:-- |:--  |:--            |
|linux|__linux__,__unix__,__gnu_linux__|unstd.h|
|macos|__APPLE__|some headers|
|windows|_WIN32,_WIN64|windows.h|

## Check Macro

```c
#if defined(MACRO0)
#elif defined(MACRO1)
#elif !defined(MQCRO2)
#endif
```

## Check Function Definition

### AutoTools

### CMake
