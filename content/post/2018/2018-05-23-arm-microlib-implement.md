---
title: "Arm Microlib Implement"
date: 2018-05-23
tags: ['arm','c','embedded-system']
published: true
comments: true
---

## stdio.h

```c
int fgetc(FILE * stream){
	if(stdin == stream){
		//< implement input one character
		char c = HAL_UART_Receive();
		return c;
	}

	return EOF;
}

int fputc(int ch, FILE *f){
	if(stdout == stream){
		//< implement output one character
		HAL_UART_Transmit(ch);
		return ch;
	}else if(stderr == stream){
		HAL_UART_Transmit(ch);
		return ch;
	}

	return EOF;
}

int ferror(FILE * f){
	switch(f){
	case stdin:
		break;
	case stdout:
		break;
	case stderr:
		break;
	default:
		return EOF;
	}
}

```

## assert.h

```c
_ARMABI_NORETURN void abort(void){
	__disable_irq();
	while(1);
}

_ARMABI_NORETURN void __aeabi_assert(const char * exp, const char * file, int line){
	fprintf(stderr, "Assert `%s` fail in `%s:%d`\n", exp, file, line);
	abort();
}

```

## time.h

```c
_ARMABI time_t time(time_t * timer){
	//< return seconds from epoch
}
```

## wchar.h

```c
wint_t fgetwc(struct __FILE * stream);
wint_t fputwc(wchar_t ch, struct __FILE * stream);
```
