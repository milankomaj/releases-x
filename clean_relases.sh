#!/bin/sh
gh release list --limit 9999 | gawk '{print $1, $8}' | xargs -p -L1 gh release delete --yes