---
title:  "Accessing web and local text"
date:   2018-02-17
tags: ['nltk','nlp']
published: true
comments: true
---

## 1.Handling plain web text

### 1.1.Accessing web text

  Accessing web text as bellow:

```python
import urllib

url = 'http://www.gutenberg.org/files/2554/2554.txt'

#get the string of text file
raw = urllib.urlopen(url).read()

#with proxy
prixy = {'http':'http://www.yourproxy.com:443'}
raw = urllib.urlopen(url,proxies=proxy).read()
```

### 1.2.Tokenizing the text

  Tokenizing a text(string) to produce a list of tokens.

```python
#context same as upper

#tokenize the text string
tokens = nltk.word_tokenize(raw)
```

### 1.3.Creating nltk.Text object

  We can handle text by nltk after creating nltk.Text object from text.

```python
#context same as upper

#creating nltk.Text object by tokens
text = nltk.Text(tokens)
```

  Then we can handle text by API belong to nltk.Text object,such as:

```python
#context same as upper

#get collocations of text
text.collocations()
```

## 2.Handling HTML document

### 2.1.Accessing HTML document

  Accessing HTML document as bellow:

```python
import urllib

#get html document by url
url = 'http://news.bbc.co.uk/2/hi/health/2284783.stm'
html_doc = urllib.urlopen(url).read()

#get plain text content of html document
raw = nltk.clean_html(html_doc)

#tokenize the text string
tokens = nltk.wor_tokenize(raw)

#create nltk.Text object
text = nltk.Text(tokens)

```

  **note**:But there are still a lot content that we not need.You can clean them by hand or use the professional tools [BeautifulSoup](http://www.crummy.com/software/BeautifulSoup)

## 3.Handling Searching Engine Results

## 4.Handling RSS Feeds

  Accessing RSS Feeds as bellow:
 
```python
import feedparser
import nltk

#get blog
llog = feedparser.parse('http://languagelog.ldc.upenn.edu/nll/!feed=atom')

#overview blog
llog['feed']['title']

#post count
len(llog.entries)

#get post
post = llog.entries[2]
post.title

#get content of post
content = post.content[0].value

#tokenize content
tokens = nltk.word_tokenize(nltk.html_clean(content))

```

## 5.Handling Local Files

  As bellow:

```python
import nltk

#read raw 
f = open('document.txt')
raw = f.read()

#read line
f = open('document.txt','rU'
for line in f:
	print(line.strip())

#accessing nltk corpora
path = nltk.data.find('corpora/gutenberg/melville-moby_dick.txt')
raw = open(path,'rU').read()
```

## 6.Handling PDF,MSWord & other Binary Format

  Use the third libaries or extract by hand.

## 7.Handling User Input

`str = raw_input('Enter some text:')`

## 8.The common nlp data transition

  As bellow:

![nlp_pipeline.png](/assets/images/posts/nlp_pipeline.png)
