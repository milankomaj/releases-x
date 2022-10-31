#!/bin/sh
gh release list
gh release list -R cli/cli --limit 999 | awk -F '\t' '{if (match($3, "^v0\.")) print $3}'