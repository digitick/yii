#!/bin/bash

git fetch yiisoft master:master

git merge master -n

git status | grep "deleted by us:" | awk '{print $5}' | xargs git rm

git status
