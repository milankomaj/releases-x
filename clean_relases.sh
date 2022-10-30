#!/bin/sh
gh release list | sed 's/|/ /' | awk '{print $1, $8}' |
git fetch
git tag -l | xargs -n 1 git push --delete origin