---
title: http proxy in shell
date: 2019-03-18 20:43:20
tags: ['linux', 'http', 'proxy']
comments: true
---

## The HTTP proxy

The HTTP proxy is a HTTP server to retransmit HTTP packet, it don't deal the HTTP request/response in fact.

The HTTP proxy is common used to access private network.Many browsers support this function, and is human-friendly to config.

## HTTP proxy in shell

Many tools in linux will access network in shell environment, such as `curl`, `wget` and other network application run from shell.So we need the HTTP proxy in shell environment when want to access private network from shell tools.

This is simple to enable this as below:
```bash
export http_proxy='http://<proxy>.<com>:[port]'
export https_proxy='https://<proxy>.<com>:[port]'
```

And with username/password tuple:
```bash
export http_proxy='http://<username>:<password>@<proxy>.<com>:[port]'
export https_proxy='https://<username>:<password>@<proxy>.<com>:[port]'
```

You can also write them to configuration files such as `~/.bashrc` to persist these.
