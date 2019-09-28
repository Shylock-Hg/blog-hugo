---
title:  "Usage Of Sed"
date:   2018-04-02
tags: ['sed','linux']
published: true
comments: true
---

## Typical usage

  `sed SCRIPT INPUTFILE... > OUTPUTFILE`

*note:if INPUTFILE==OUTPUFILE must call sed with option `-i`.*
*note:default INPUTFILE is stdin,default OUTPUTFILE is stdout.*

## Characters substitution

  - `sed "3,5s/pattern/object/1" inputfile > outputfile`:replace the first matched characters in 3-5th lines by `pattern` with `object`. <br/>
  - `sed "s/pattern/object/3g" inputfile > outputfile`:replace the 3-infinite matched characters in each line by `pattern` with `object`. <br/>
