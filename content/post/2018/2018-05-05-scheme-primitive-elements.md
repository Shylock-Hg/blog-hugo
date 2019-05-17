---
title: "Scheme Primitive Elements"
date: 2018-05-05
tags: ['scheme','sicp']
published: true
comments: true
---

# Expression

  `666`,`(+ 4 5)` is typical scheme expression.`(+ 4 5 6)` is same as `(+ (+ 4 5) 6)`.

# Evaluation order

## Normal order(greedy)

  The interpreter first evaluates the operator and operands and the applies the resulting procedure to the resulting arguments.

## Applicative order(lazy)

  Not evaluate the operands until their value were needed.Instead it would extend the expression to only primitive operator.The evaluate the expression.

# Naming Expression

  `(define (<symbol> <formal parameters>) <expression>)` 
  `(define size 2)` naming `2` by `size`.

# Environment

  The predefined name-object paris.

# Condition Expression

  1. `cond` for conditional expression.
  ```scheme
  (cond (<p0> <e0>)
        (<p1> <e1>)
        ...
        (<pn> <en>)
        (else <e>) )
  ```
  2. `if` for conditional expression.
  ```scheme
  (if <predicate> <consequent> <alternative>)
  ```
  3. logic operator for conditional expression.
  ```scheme
  (and <e0> <e1> ... <en>)
  (or <e0> <e1> ... <en>)
  (not <e>)
  ```
