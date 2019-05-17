---
title:  "Simple statistics in NLP"
date:   2018-02-14
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.Frequency Distributions of words.
  At most time,we can know topic about a text from the frequent words or infrequent words.
  So,in this case,we should know the Frequency Distribution of words or collocations.

  We can do this with nltk as bellow:

```python
fdist = FreqDist(text)
```

## 2.Select words by length.
  Sometime,the length of words will tell us some information of text,specially 
with distribution of length of words.
  We can do this with nltk as bellow:

```python
#select words by length
val = set(text)
uwords = [w for w in val if len(w)>7]

#get distribution of words length
ldist = FreqDist[len(w) for w in text]
```

## 3.Collocations & Bigrams.

  Collocations:a sequence of words that occur together unusually often.
  Bigrams:the method provided by nltk to get pair of words in a text.

  We can do this with nltk as bellow:

```python
#get bigrams of list of words
pairs = bigrams(['word0','word1','word2','word3'])

#get collocatios of text
col = text.collocations()
```
