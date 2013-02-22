#!/bin/bash

git fetch yiisoft master:master

git merge -n --no-commit master

git rm -q -r --ignore-unmatch build demos docs requirements tests
git status | grep "deleted by us:" | awk '{print $5}' | xargs git rm -q -r

git status
