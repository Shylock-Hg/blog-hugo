---
title: "Mechanism Of Typedef"
date: 2018-09-25
tags: ['c','c++']
published: true
comments: true
---

The mechanism of `typedef` in c/c++ is substitution of symbol.In detail, the declaration of typedef consist with *undeclared symbol* and *declared symbol*, the *undeclared symbol* is just the new type.Using new type to declare identifier means substituting the new type symbol by identifier.Such as bellow:

```c
typedef void (*func)(void);
func f = NULL;  //!< means `void (*f)(void) = NULL;`

typedef unsigned long size_t;
size_t s = 0;  //!< means `unsigend long s = 0;`
```
