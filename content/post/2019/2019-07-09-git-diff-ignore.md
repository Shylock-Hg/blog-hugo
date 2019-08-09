---
title: "Git Diff Ignore"
date: 2019-07-09T21:15:43+08:00
tags: ['git']
comments: true
---

We can ignore files or directories when using `git diff` as below:

```bash
git diff master...head -- . ':(exclude)/tests/*' ':(exclude)/miscs/*' ...
```
