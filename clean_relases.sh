#!/bin/sh
gh release list --limit 9999 | gawk -F '\t' '$2 == "release" {print $3}' | xargs -p -L1 gh release delete --yes