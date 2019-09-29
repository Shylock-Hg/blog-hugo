---
title:  "wordnet"
date:   2018-02-17
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.Overview

  The wordnet is semantically oriented dictionary of English.

## 2.Senses and Synonyms

  Accessing synonyms as bellow:

```python
from nltk.corpus import wordnet

#return the synset that word 'motorcar' belong to.
wordnet.synsets('motorcar')

#return the list of lemma names about 'car.n.01'
wordnet.synset('car.n.01').lemma_names
#return the list of lemma about 'car.n.01'
wordnet.synset('car.n.01').lemma

#return string of definition of 'car.n.01'
wordnet.synset('car.n.01').definition

#return the example sentence of 'car.n.01'
wordnet.synset('car.n.01').examples
```

## 3.The WordNet Hierarchy
  The relationship of father & child(is-a)
  As shown as bellow:
![the_wordnet_hierarchy.png](/assets/images/posts/wordnet_hierarchy.png)

  Accessing hyponyms as bellow:

```python
from nltk.corpus import wordnet

motorcar = wordnet.synset('car.n.01')
sub_motorcars = motorcar.hyponyms()

#get sorted hyponyms names of 'car.n.01'
sub_names = [lemma.name for synset in sub_motorcars for lemma in synset.lemmas]
```

Accessing hypernyms as bellow:
```python
from nltk.corpus import wordnet

motorcar = wordnet.synset('car.n.01')

#get the hypernym of 'car.n.01'
father = motorcar.hypernyms()

#get the upper path of 'car.n.01'
paths = motorcar.hypernym_paths()

#get the root of 'car.n.01'
root = motorcar.root_hypernyms()
```

## 4.More Lexical Relations

### 4.1.The relationship of meronyms & holonyms(part-of).

  Accessing as bellow:

```python
from nltk.corpus import wordnet

#get the meronyms about 'tree.n.01'
wordnet.synset('tree.n.01').part_meronyms()

#get the meronyms about 'tree.n.01'
wordnet.synset('tree.n.01').substance_meronyms()

#get the holonyms about 'tree.n.01'
wordnet.synset('tree.n.01').member_holonyms()

#get the holonyms about 'tree.n.01'
wordnet.synset('tree.n.01').part_holonyms()

#get the holonyms about 'tree.n.01'
wordnet.synset('tree.n.01').substance_holonyms()

```
### 4.2.The relationship between verbs

  The entailments of verb.
  Accessing as bellow:

```python
from nltk.corpus import wordnet

#get the entailments of a verb
wordnet.synset('walk.v.01').entailments()
```

### 4.3.The relationship of antonymy
  To accessing antonym as bellow:

```python
from nltk.corpus import wordnet

wordnet.lemma('horizontal.a.01.horizontal').antonyms()

```

## 5.For more relationship of WordNet
  You can see more relationships & API of synset by dir(),such as:<br>

```python
dir(wordnet.synset('harmony.n.02'))
``` 

## 6.Semantic Similarity
### 6.1.Common Father's Depth
  If two synset share a very specific hypernym,they are very semantic similary.
  Accessing the lowest common father as bellow:

```python
from nltk.corpus import wordnet

right_whale = wordnet.synset('right_whale.n.01')
orca = wordnet.synset('orca.n.01')

#get the lowest common father of 'right_whale.n.01' & 'orca.n.01'
right_whale.lowest_common_hypernyms(orca)
#get the depth of common father in wordnet
right_whale.lowest_common_hypernyms(orca).min_depth()
```
### 6.2.Length of Connection
  If two word connected in a short way in the wordnet,the are very semantic similar.
  Accessing the length of connection of two words as bellow:

```python
from nltk.corpus import wordnet

right_whale = wordnet.synset('right_whale.n.01')
orca = wordnet.synset('orca.n.01')

#get the similarity measured by length of connection of two words.
#return (0,1] or -1 when no connection between two words.
right_whale.path_similarity(orca)
```
