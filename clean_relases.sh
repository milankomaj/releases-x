#!/bin/sh
gh release list
gh release list --limit 9999 | gawk -F '\t' '$2 == "v0.2" '{print $1, $8}' | xargs -L1 gh release delete --yes