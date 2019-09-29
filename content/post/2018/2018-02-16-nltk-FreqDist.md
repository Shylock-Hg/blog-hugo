---
title:  "FreqDist in NLTK"
date:   2018-02-16
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.FreqDist.

  Usage as bellow:

```python
from nltk import FreqDist
fdist = FreqDist([items])
```

  This API FreqDist counting the count of each item in sequence and return the results as a list.
  But,it is one-dimensional frequency distribution.So you can just apply to one type items.

## API of FreqDist

|API|description|
|:--|:--|
|FreqDist(samples)|create the FreqDsit object|
|fdist.inc(sample)|increment the count of this sample|
|fdist['sample']|return the count of 'sample'|
|fdist.freq('sample')|return the frequency of 'sample'|
|fdist.N()|total number of samples|
|fdist.keys()|return the samples sorted by decreasing frequency|
|for sample in fdist|iterate samples in order of decreasing frequency|
|fdist.max()|return the sample with max count|
|len(fdist)|return the count of items of freqdist |
|fdist.tabulate()|display a tab of freqdist|
|fdist.plot()|display a figure of freqdist|
|fdist1 < fdist2|test if samples in fdist1 occur less than in fdist2|

## 2.ConditionalFreqDist

  Usage as bellow:

```python
from nltk import ConditionalFreqDist
cfd = ConditionalFreqDsit(
          (cond,sample)
          for cond in [conds] if <xxx>
          for sample in [samples] if <xxx>
          )
```

  With Conditional Frequency Distribution,you can count multi-dimension(each cond) item.

## API of ConditionalFreqDist

|API|description|
|:--|:--|
|ConditionalFreqDist(cond_sample)|create a ConditionalFreqDist object|
|cfd.conditions()|return alphabetically sorted list of conditions|
|cfd[condition]|return the frequency distribution of this condition|
|cfd[condition][sample]|return the frequency of this sample in this condition|
|cfd.tabulate()|print the tab of cfd|
|cfd.tabulate(samples,conditions)|print the tab of these samples in these conditions|
|cfd.plot()|plot the conditional frequency distribution|
|cfd.plot(samples,conditions)|plot the cfd of these samples in these conditions|
|cfd1 < cfd2|test if the frequency in cfd1 less than cfd2|
