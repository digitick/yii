#!/bin/bash

git fetch yiisoft master:master

git merge -n --no-commit --no-progress --strategy=recursive --strategy-option=patience master

git rm -qrf --ignore-unmatch build demos docs requirements tests
git status | grep "deleted by us:" | awk '{print $5}' | xargs git rm -qrf

git status
