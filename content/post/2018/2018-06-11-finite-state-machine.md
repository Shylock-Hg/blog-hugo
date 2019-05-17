---
title: "Finite State Machine"
date: 2018-06-11
tags: ['abstract']
published: true
comments: true
---

## finite state machine

  It can transfer to another state frome one when getting input from outside, and the number of state is finite.

## implement

1. pure program -- nest switch statements -- handle events(input) in state.

```c
typedef enum {
	EVENT_0;
	EVENT_1;
	...
} event_id_t;

typedef struct {
	event_id_t id;
	char * name;
	...
} event_t;

static event_t * e = {};

typedef enum {
	STATE_0;
	STATE_1;
	...
} state_id_t;

typedef struct {
	state_id_t id;
	char * name;
} state_t;

static state_t * s = {};

int fsm(state_t * s, event_t * e){
	switch(s->id){
	case STATE_0;
		printf("Handle state `%s`.\n", s->name);
		switch(e->id){
		case EVENT_0:
			//< \TODO
			printf("Handle event `%s`.\n", e->name);
			//< \SWITCH STATE
			s->id = STATE_NEW;
			break;
		case EVENT_1:
			...
			break
		default:
			return -1;
		}
		break;
	case STATE_1:
		break;
	...
	default:
		return -1;
	}
}
```

2. state array -- FSM ADT -- handle event(input) in state.

```c
typedef enum {
	EVENT_0;
	EVENT_1;
	...
} event_id_t;

typedef struct {
	event_id_t id;
	char * name;
	...
} event_t;


typedef enum {
	STATE_0;
	STATE_1;
	...
} state_id_t;

//< do work and state
typedef int (*state_handler_t)(event_t * e);

typedef struct {
	state_id_t id;
	char * name;
	state_handler_t handler;
	...
} state_t;


int fsm(event_t * e){
	static state_t FSM_index = STATE_0;
	static state_t FSM[MAX_STATE_COUNT] = {\* initialize FSM ADT *\};

	//< handle event in state.
	//< switch to new state when exit.
	FSM_index = FSM[FSM_index].handler(e);
}

```
