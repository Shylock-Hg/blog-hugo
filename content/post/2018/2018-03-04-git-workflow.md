---
title:  "Typical workflow of Git-SCM"
date:   2018-03-04 
tags: ['git']
published: true
comments: true
---

# Typical workflow of Git-SCM 

## Local
  1. `git clone url`:clone a repository from *url*.
  2. `git branch [branch-name]`:create new branch to modify. 
  3. make change.
  4. `git status`:check file changed by not staged.
  5. `git checkout <file>`:reset file to last commit.
  6. `git diff [file]`:check difference of file between staged
  7. `git add [file ...]`:snapshots the files in preparation for versioning.
  8. `git reset [file ...]`:unstage the file,but preserve contents. 
  9. `git commit -m "[description]"`:records file snapshots permanently in version history.
  10. back to 3.

## With remote

  **based on commit**
  1. `git fetch [bookmark]`:download all history from the remote repository bookmark.
  2. `git merge [bookmark]/[branch]`:combines bookmark's branch into current local branch.
  3. `git push [alias] [branch]`:upload all local branch commits to remote repository. 

## With upstream(special remote)

  **based on commit**
  1. `git remote -v`:review all remote repositories.
  2. `git remote add upstream <upstream url>`:add upstream repository.
  3. `git fetch upstream`:downloads all history from the upstream.
  4. `git merge upstream/master`:combines upstream to local master.


## Relationship

        upstream
       /
  local
       \
        remote
