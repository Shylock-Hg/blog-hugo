---
title:  "Accessing Corpus by NLTK"
date:   2018-02-15
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.Inner corpus.

For inner corpus of NLTK , just import them as bellow:

``` python
from nltk.corpus import <****>
```

## 2.User corpus.

For user own corpus , you need load them by NLTK reader as bellow:

``` python
#for plain text
from nltk.corpus import PlaintextCorpusReader
path = '~/text'
pattern = r'*.txt'
texts = PlaintextCorpusReader(path,pattern)

#for mrg format text
from nltk.corpus import BracketParserCorpusReader
mrg_path = '~/mrg'
mrg_pattern = r'.*/wsj_.*\.mrg'
mrgs = BracketParserCorpusReader(mrg_path,mrg_pattern)
```

## 3.API of corpus obj

|API|Description|
|:--|:--|
|fileids()|return list of all file ids of this corpus|
|fileids([categories])|return list of file ids belong to corresponding categories|
|categories()|return list of all categories of this corpus|
|categories([fileids])|return list of categories of these fileids|
|raw|return the list of all chars of the corpus|
|raw(filedis=[fileids])|return the list of chars of these fileids|
|raw(categories=[categories])|return the list of chars of these categories|
|words|same as raw|
|sents|same as words|
|abspath(fileid)|return the absolute path of fileid|
|encoding(fileid)|return the encoding of fileid|
|open(fileid)|open the file return file object|
|root()|return the root path of corresponding corpus|
|readme()|return the readme file of corresponding corpus|
