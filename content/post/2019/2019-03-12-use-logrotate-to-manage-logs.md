---
title: use-logrotate-to-manage-logs
date: 2019-03-12 19:50:39
tags: ['linux']
comments: true
---

The *logrotate* is a tool to manage log in linux.This tool will separate and drop the log file periodically(typical daily).And it's simple to use as below:

## Installation

Need *logrotate* and *cronie*. Maybe can install by `sudo pacman -Sy logrotate cronie` if you use *archlinux*. Or other way depend on your distribution.

## logrotate

The configuration entry about *logrotate* is */etc/logrotate.conf*. But we don't change itself in fact. This configuration file will include all file in */etc/logrotate.d/*, so we just add our log configuration into here.

The format about *logrotate* as below:

```
/var/log/log-file {  # the log file
    monthly  # Separate period
    rotate 5  # Limit 5 archive log file
    compress  # Compress archived log file by gzip
    delaycompress  # Don't compress latest log file
    missingok  # Ignore the error
    notifempty  # Don't work if log is empty
    create 644 root root  # Log files permission
    postrotate
        /usr/bin/killall -HUP rsyslogd  # Will executed finally
    endscript  # Will executed finally
}
```
We can know *logrotate* will separate and archive log file periodically.And you can do some thing by script by the way.

## Cronie

In fact, *logrotate* will not run itself, it's powered by *cronie* that the useful tool to run job periodically in linux.

The format of playbook in cronie as below:

```
# minute hour   day    month  week  script
# [0-60] [0-24] [1-31] [1-12] [0-7] executable
* 0 * * * /bin/hello  # Means execute /bin/hello in 0 AM every day
```

In fact, you can put the script in some directory such as */etc/cron.daily* if you don't need so time-accurate job.

note:You need to check cronie deamon process after complete the job, if it don't running or enabled, you need to enable and run it by `systemctl enable crond && systemctl start crond` maybe.

## Cron job for logrotate

Now we can write a cron job for *logrotate*.In fact, we can just write a script as below:

```bash
#!/bin/sh
    
# Clean non existent log file entries from status file
cd /var/lib/logrotate
test -e status || touch status
head -1 status > status.clean
sed 's/"//g' status | while read logfile date
do
    [ -e "$logfile" ] && echo "\"$logfile\" $date"
done >> status.clean
mv status.clean status
    
test -x /usr/sbin/logrotate || exit 0
/usr/sbin/logrotate /etc/logrotate.conf
```

The we can put this into */etc/cron.daily* or others, but notice that the period of cron job must equal or less than *logrotate* period.The cron job will execute *logrotate* periodically and *logroate* will check time of log file and decide if to separate and archive it.
