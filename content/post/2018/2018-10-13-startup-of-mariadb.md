---
title: "Startup Of Mariadb"
date: 2018-10-13
tags: ['mysql']
published: true
comments: true
---

# Installation and Configuration

1. Install by `sudo pacman -Sy mariadb` and add user to *mysql* group.
2. Initialize a db by running `sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`.
3. Run the mysql server by `systemctl start mariadb.service`.
4. Register a *root* of mysql by `mysqladmin -u root password <password>`.
5. Login as root by `mysql -u root -p`.
