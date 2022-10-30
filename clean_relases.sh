#!/bin/sh
gh release list --limit 9999 | gawk -F '{print $1, $8}' | xargs -L1 gh release delete --yes