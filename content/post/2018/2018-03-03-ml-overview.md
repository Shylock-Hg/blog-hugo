---
title:  "Overview to Machine Learning"
date:   2018-03-03
tags: ['ml']
published: true
comments: true
---

# Overview to Machine Learning

## Definition

> A computer program is said to learn from experience E with respect to some task T and some performance measure P,if its performance on T,as measured by P,improves with experience E.
> - Tom Mitchell,1997

  So the essential of machine learning is improving P on T by learning from E,not just E.

## Premise to apply Machine Learning

  1. To complex for traditional algorithm.
  2. Adjust fluctuating environments.
  3. Getting insights about complex problems and large amounts of data.

  Tips:No silver bullet.Machine Learning is not always best method to any problem.

## Categories of Machine Learning

  1. supervised,unsupervised,semisupervised and reinforcement learning. 
  2. incremental versus batch learning.
  3. instance-based versus model-based learning.

## Supervised/Unsupervised Learning

### Supervised Learning

  In supervised learning,the training data you feed to the algorithm includes the desired output.It learn the map of I/O.
  The typical tasks applied supervised Learning:**classification**,**regression**.
  The typical supervised learning algorithm:
  - KNN(k-Nearest Neighbors)
  - Linear Regression
  - Logistic Regression
  - SVM(Support Vector Machine)
  - Decision Trees and Random Forests
  - NN(Neural Network) 

### Unsupervised Learning

  In unsupervised learning,the training data you feed to the algorithm not include the desired output.It learn the inner structure of input data.
  The typical unsupervised learning algorithm:
  - Clustering
    - k-Means
    - HCA(Hierarchical Cluster Analysis)
    - Expectation Maximization
  - Visualization and dimensionality reduction
    - PCA(Principal Component Analysis)
    - Kernel PCA
    - LLE(Locally-Linear Embedding)
    - t-SNE(t-distributed Stochastic Neighbor Embedding)
  - Association rule learning
    - Apriori
    - Eclat

### Semisupervised Learning
  
  The learning combine supervised & unsupervised method.

### Reinforcement Learning

  The **agent** in this context,can observe the **environment**,select and perform **actions**,and get **rewards** in return.Agent learn **policy** to get maximum rewards over time.

## Batch and Incremental Learning
 
  Whether or not can learn incrementally from a stream of incoming data.

### Batch Learning

  Batch Learning:incapable of learning incrementally,it must be trained using all the available data. 
  Offline Learning:first the system is trained,and then it is launched into production and runs without learning anymore.

### Incremental Learning

  Incremental learning: you train the system incrementally by feeding it data instances sequentially, either individually or by small  groups called **mini-batch**.
  **Learning Rate**:how fast the system adapt to changing data.
  Challenge: bad data is fed to the system.

## Instance-Based versus Model-Based Learning

  How to generalize.
  
### Instance-Based Learning

  Instance-Based Learning: the system learns the examples by heart, then generalizes to new instance using a similarity measure.

### Model-Based Learning
 
  Model-Based Learning: build a model learning from examples to make predictions.
