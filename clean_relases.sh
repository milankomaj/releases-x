#!/bin/sh
gh release list
gh release list --limit 9999 | gawk -F '\t' '$1 == "v0.2" {print $3}' | xargs -L1 gh release delete --yes
git fetch
git tag -l | xargs git tag -d