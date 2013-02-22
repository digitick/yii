#!/bin/bash

git fetch yiisoft master:master

git merge -n --no-commit master

git status | grep "deleted by us:" | awk '{print $5}' | xargs git rm

git status
