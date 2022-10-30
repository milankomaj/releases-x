#!/bin/sh
gh release list \
| sed 's/|/ /' | gawk '{print $1, $8}'