---
title: "Reference And Dereference In Programming Language"
date: 2019-01-14
tags: ['abstract']
published: true
comments: true
---

## Naive Stage

The naive reference is the pointer in c programming language.In c language, we use & and * operator to reference and dereference one data structure, such as bellow:<br/>

```c
data_t *p = &data;  //!< reference `data`
*p;  //!< dereference `data`
```

## Primitive reference type

The modern programming language not recommend pointer but independent reference type.In c++ language, we use & operator to reference data structure and automatic dereference the reference by compiler, such as bellow:<br/>

```c++
data_t &r = data;  //!< reference `data`
r;  //!< automatic dereference `data`
```

## The difference of Pointer, Reference

|Difference           |Pointer|Reference|
|:--                  |:--    |:--      |
|Automatic dereference|N      |Y        |
|Immutable            |N      |Y        |

## The Ownership and Borrowing

The Ownership and Borrowing is the concepts in RUST programming language.But they are related to reference for that reference is one implementation of Borrowing.<br/>
The main difference of Ownership and Borrowing is the `Drop` trait, Owner implement it but Borrower not.There are some same concepts in other languages, such as *Smart Pointer*(One implementations of Ownership) and reference(One implementation of Borrowing) in c++, through they distinguish Ownership by *destructor*.<br/>
There are some typical implementations of Ownership and Borrowing in RUST as bellow:<br/>

|Owner                  |Borrower                      |
|:--                    |:--                           |
|Box, Rc and String etc.|reference, slice and Iter etc.|
