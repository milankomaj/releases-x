#!/bin/sh
git tag -l | xargs git tag -d
git fetch
git tag -l | xargs -n 1 git push --delete origin
git tag -l | xargs git tag -d