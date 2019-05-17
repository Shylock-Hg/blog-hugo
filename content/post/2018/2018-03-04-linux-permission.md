---
title:  "Linux Permission"
date: 2018-03-04
tags: ['linux']
published: true
comments: true
---

# File permission of Linux

## Description

  Use `stat <file>` to check the permission of file(dir),its echo look like as `-rw-rw-rwx`.
  The first `'-'` , `'l'` , `d` means **regular file**, **link file** and **directory**.
  The the `'rwx-'` means **read**, **write**, **execute** and **no**.
  Finally,the three segments of `rwx` successively means **owner**, **group** and **all other users**.

## Simple of change permission
  
  Usage:

  - `chmod u+x file0 [file1 ...]`
  - `chmod g-x file0 [file1 ...]`
  - `chmod o=rw file0 [file1 ...]`
  - `chmod a=r file0 [file1 ...]`

  Detail as bellow:

|operation|description|
|:--|:--|
|+|add permission to specific user|
|-|delete permission to specific user|
|=|set permission to specific user|

|user|description|
|:--|:--|
|u|owner|
|g|group|
|o|other user|
|a|all user|

## Simple of change user

### Owner

  `chown root \dir [file1 ...]` -> change owner to root.

### Group
  `chgrp users file0 [file1 ...]` -> change group to users.
