#!/bin/sh
gh release list --limit 9999 | awk -F '\t' '$2 == "release" {print $3}' | xargs -p -L1 gh release delete --yes --cleanup-tag