---
title: "Haskell Types"
date: 2018-08-25
tags: ['haskell']
published: true
comments: true
---

## Atomic Types

- Bool
- Char
- Number

## Conbination Types

### List

- synopsis `[Type]`
- sequence of same type items
- type refer to type of items

List comprehension : <br/>

It's same as mathematic set comprehension(but list is sequence), such as $$S=\{2*x \| x \in \mathcal{N}, x \leqslant 10\}$$, it could also be expressed as `[x*2 | x <- [1..10]]` in *Haskell*(But it's sequence but set).

With condition : <br/>

`[x*2 | x <- [1..10], x*2 >= 12]`

With multi-conditions : <br/>

`[x*2 | x <- [1..10], x*2 >= 12, x*2 <= 16]`

Conditional Generator : <br/>

`boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]`

With multi-factor : <br/>

```haskell
let nouns = ["hobo","frog","pope"]
let adjectives = ["lazy","grouchy","scheming"]
[adjective ++ " " ++ noun | adjective <- adjectives , noun <- nouns]
```

With multi-dimensions : <br/>

```haskell
let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
[ [x | x <- xs, even x] | xs <- xxs ]
```

### Tuple

- synopsis `(Type0,Type1,Type3...)`
- sequence of items
- type refer to type and count of items
