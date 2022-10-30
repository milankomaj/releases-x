#!/bin/sh
gh release list --limit 9999 | gawk -F '\t' '$2 == "release" {print $3}' | xargs -n 1 gh release delete --yes