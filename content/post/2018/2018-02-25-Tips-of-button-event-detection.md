---
layout: post
title: "Tips of button detect"
date:  2018-02-06
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.Problems

  There is a problem in usr button events detection of embeded system,when you need to detect multi events(such as click , double click and long press) in one button.

  As shown bellow:
![button.png](/assets/images/posts/button.png)

  In the picture , you can see that there is a gap of time between click can be sured and double click and long press can be sured.So,you can't handle click event right now before double click or long press can be sured.

## 2.Solution

  Maybe,you will ask for why pc responds your click,double click and long press very quickly.That's a trick that the deal of double click or long press can cover deal of click.So you won't feel the delay of click because it will be handle before we can really detect it.
  But what can we do,if the deal of double click or long press can't cover deal of click?There is a imperfect method that you can cancel the deal of click after detect double click or long press.

  Good luck!
