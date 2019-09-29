---
title: "Thread Local Storage"
date: 2019-08-05
tags: ['c/c++']
comments: true
---

## In c

The key word `__thread` in gcc will specify the static storage symbol to each
thread. So each thread will own one instance of the symbol belong to itself.
Such as below:

```c
__thread int i;
extern __thread FILE* f;  // Just pointer, need create structure on each thread
static __thread char* s;  // Just pointer need create string on each thread
int func(void) {
    static __thread int b;
}
```

The macro `thread_local` in `threads.h` after c11 is same.

## c/c++ language storage modifier

There are 3 classic c language symbol lifetime, *auto*, *static*, *dynamic*.
*auto*, symbol creating and releasing with function stack.
*static*, symbol creating and releasing with process.
*dynamic*, symbol creating and releasing with user.

But the `__thread` key word make the new symbol lifetime *TLS*
(Thread Local Storage). The symbol creating and releasing with thread.

## `thread_local` in c++

The key word `thread_local` in c++ can also declare thread lifetime symbol, and
it can be specify to the *auto* symbol make it to *thread life time*.

## Concurrency

The TLS symbol is useful to multiple threads program. In some cases, we can
using TLS to make thread has own instance to one symbol instead of same instance
with locked access.

This brings less lock but more memory consumption.

## Reference

[0](https://gcc.gnu.org/onlinedocs/gcc-8.3.0/gcc/Thread-Local.html#Thread-Local)
