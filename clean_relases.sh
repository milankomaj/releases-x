#!/bin/sh
gh release list | sed 's/|/ /' | awk '{print $1, $8}' | while read -r line; do gh release delete -y "$line"; done
git fetch
git tag -l | xargs -n 1 git push --delete origin