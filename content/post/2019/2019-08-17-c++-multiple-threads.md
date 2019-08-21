---
title: "C++ Multiple Threads"
date: 2019-08-17T15:29:09+08:00
tags: ['c/c++']
comments: true
---

## thread

The c++ thread object handle the thread provided by the platform. We can create
thread object from function pointer, functor, lambda; and do yield, sleep, join
to the thread.

## mutual exclusion

|Mutex|Note|
|:--|:--|
|mutex|Simple mutex, can't lock multiple time|
|recursive_mutex|Mutex can lock multiple time|
|shared_mutex|Shared Mutex|

|Guard|Note|
|:--|:--|
|lock_guard|Just lock guard in scope|
|scoped_lock|Just lock guard in scope, can lock multiple mutex and avoid dead lock|
|unique_lock|Own mutex, Can lock/release manually|
|shared_lock|Shared mutex, Can lock/release manually|

`call_once` make the function called just once in `once_flag` lifetime.

## condition variable

Provide inter-thread `wait` and `notify`.

## futures

Can get `future` from `promise`, `packaged_task` and `async`. `wait` or `get`
the value of future.

## atomic

Add atomic operation constraint to primitive type.
