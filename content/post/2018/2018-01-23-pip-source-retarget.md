---
title:  "Retarget source of pip"
date:   2018-01-23
tags: ['python']
published: true
comments: true
---

## Change source of pip

  Some times,we need to change source of pip.We can just get it by:

```bash
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
```
  Where **[global]** means apply source to any action(such as install) of pip.Then add this to */user/.pip/pip.conf*,the corresponding user can use the source.
  So,if you run **sudo pip** you need add *.pip/pip.conf* to *root* dir.
