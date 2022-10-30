#!/bin/sh
gh release list --limit 9999 | gawk '{print $1, $8}' | xargs -L1 gh release delete --yes