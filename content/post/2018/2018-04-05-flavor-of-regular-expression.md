---
title: "Flavor Of Regular Expression"
date: 2018-04-05
tags: ['regex']
published: true
comments: true
---

## POSIX

  It's POSIX specification for regular expression in UNIX-like environment tools,such as vim,sed,awk,grep.

### BRE

  |Metacharacters|Meaning|
  |:--|:--|
  |`.`|match any one character|
  |`\\`|escape character|
  |`[`||
  |`^`|anchor for start of characters,complement set in backet expression|
  |`$`|anchor for end of characters|
  |`*`||

*note:in GNU implement,you can use ERE special metacharacters by `\\`.*
**BRE tools:sed,grep**

### ERE

  |Metacharacters|Meaning|
  |:--|:--|
  |`(`||
  |`)`||
  |`{`||
  |`}`||
  |`+`||
  |`?`||
  |`\|`||

*note:ERE include all BRE metachatacters.*
**ERE tools:awk,egrep,sed -E**

### POSIT character class
  
  example: [:digit:]

## PCRE

  *PCRE include all ERE metacharacters.*
  **PCRE used in most common program language.**
