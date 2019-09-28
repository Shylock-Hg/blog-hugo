---
title: "Startup Of Postgresql"
date: 2018-10-13
tags: ['postgresql']
published: true
comments: true
---

# Installation and Configuration

1. Install by `sudo pacman -Sy postgresql`.
2. Switch to postgres user by `sudo -u postgres -i`.
3. Initialize database cluster by `initdb -D '/var/lib/postgres/data'`.
4. Switch to user with sudo and run postgresql server by `systemctl start postgresql.service`.
5. Switch to postgres user and create postgresql user by `createuser --interactive`.
6. Switch to user and create db by `createdb dbname`.
7. Enter postgresql REPL by `psql -d dbname`.

# CXX client interface
1. Install by `sudo pacman -Sy libpqxx`.
2. Use by `#include <pqxx/pqxx>`.
3. Compile by `clang++ -lpqxx app.cc`.
