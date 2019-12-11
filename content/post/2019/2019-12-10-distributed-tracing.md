---
title: "Distributed tracing"
date: 2019-12-10
tags: ['distributed-system']
comments: true
---

# Overview

The distributed tracing system like the perf in for process, the distributed
tracing trace the RPC but perf trace the function calling.

# Basic concepts

1. Trace, a whole RPC chain tracing, consist by spans (DAG structured)
2. Span, a once RPC tracing
3. Tow relationship inter span, `ChildOf`, `FollowOf`

# Inter-Process

To tracing inter process, we must record the relationship inter span. So the
one method is to propagating the context of span with RPC calling as below:

```
A --SpanA_context-> B
 |--SpanA_context-> C --SpanC_context-> D
                    | --SpanC_context-> E

Transfer:
context --inject-> Writer/Reader --Extract-> context
```

The context maybe consists by `TraceId`, `SpanId` and `ParentId` etc.

# Reference

[0]: https://storage.googleapis.com/pub-tools-public-publication-data/pdf/36356.pdf
[1]: https://opentracing.io/
[2]: https://www.jaegertracing.io/
