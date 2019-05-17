---
title: "Difference Between C Flavor Pointer And Array"
date: 2018-09-11
tags: ['c']
published: true
comments: true
---

- The major difference between c flavor pointer and array is that defining pointer only assign pointer own memory in stack,but defining array will assign all memory of array in stack.
- The pointer need point to one memory by user and the array name point to array start when defining.
- The pointer is a independent variable in stack,array name is syntactic sugar of address computing.So pointer is assignable(L-value) and array name is not assignable(R-value).
- Finally, array name is address with syntactic sugar(array computing and dereferencing) and pointer is variable store address with syntactic sugar(pointer computing and dereferencing).
