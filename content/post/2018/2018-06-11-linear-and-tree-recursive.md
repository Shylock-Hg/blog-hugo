---
title: "Linear And Tree Recursive"
date: 2018-06-11
tags: ['abstract']
published: true
comments: true
---

## linear recursive

linear recursive procedure : once recursive call.

1. linear recursive procedure and process:

```c
int factorial(int n){

	if(0 > n)
		return -1;

	if(1==n)
		return 1;

	return (n * factorial(n-1));
}
```

2. linear recursive procedure and iteration process

```c
int factorial_iter(int product, int n){

	if(0 > n)
		return -1;

	if(1 == n || 0 == n)
		return product;

	return factorial_iter(product * n, n-1);
}

#define factorial(n) factorial_iter(1, n)

```


## tree recursive

tree recursive procedure : more than once recursive call.

1. tree recursive procedure and process

```c
int fibonacci(int n){

	if(0 > n)
		return -1;

	if(0 == n)
		return 0;
	if(1 == n)
		return 1;

	return (fibonacci(n-2) + fibonacci(n-1));
}
```

2. tree recursive procedure and linear iteration process

```c
int fibonacci_iter(int a, int b, int n){
	if(0 > n)
		return -1;

	if(1 == n)
		return a;

	if(0 == n)
		return b;

	return fibonacci_iter(a+b, a, n-1);
}

#define fibonacci(n) fibonacci_iter(1, 0, n)

```
