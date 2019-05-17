---
title:  "Tips Of Bash"
date:   2018-04-02
tags: ['bash','linux']
published: true
comments: true
---

- \`\` will create a string from shell command stdout,such as \`today=date +%Y-%m-%d\`, it's same as today=$(date +%Y-%m-%d).
- "" will quote the literal string with bash or regular expression extenting,such as `sed "s/$var/string/g"` will extent `$var` as bash variable.
- '' will quete the literal string without bash or regular expression extenting,it means the literal string is the final literal string,such as `sed 's/$var/string/g'` will not extent `$var`.
