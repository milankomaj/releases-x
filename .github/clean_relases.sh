#!/bin/sh
gh release list
gh release list --limit 9999 | gawk -F '\t' '$1 = "v0.*" {print $3}' | xargs -L1 gh release delete --yes --cleanup-tag
