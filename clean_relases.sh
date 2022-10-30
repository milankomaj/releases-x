#!/bin/sh
gh release list \
| sed 's/|/ /' | gawk '{print $1, $8}' \
| while read -r line; do gh release delete -y "$line"; done
