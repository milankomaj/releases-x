#!/bin/sh
gh release list
gh release list --limit 9999 | gwk -F '\t' '$2 == "v0.2" {print $3}' | xargs -L1 gh release delete --yes