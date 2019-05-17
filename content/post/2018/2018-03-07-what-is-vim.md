---
title:  "What's vim!"
date:   2018-03-07 
tags: ['editor','vim']
published: true
comments: true
---

# What's vim?

  In general,we classify *vim* to editor,but in fact it's not proper to vim.In the other hand,we can say vim is the *interpreter* of *vim script*.The all function modules of vim provided is based on vim script. Let's say following.

## How do we comminucate with vim?
  
  Obviously by vim script,all functions provided by vim are actually vim scripts.When we use vim,we just communicate with vim by vim script language,such as `hjkl`,they are script binded to keys.

## How vim interpret what we say?
  
  It's key stream,vim receive key stream we typed and interprete them then act(such as open file,move cursor and exit vim).
