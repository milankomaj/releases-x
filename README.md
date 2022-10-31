# releases-x
### Composite action.


*with* | *required*  | *default*
---: | :---: | :---
GITHUB_TOKEN: | - [x]  |
target:       | - [ ]  | master
title:        | - [x]  |
tag:          | - [x]  |
rewrite:      | - [ ]  | false
files:        | - [ ]  |


###### example
```
      - uses: milankomaj/releases-x@v0.1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          target: master
          title: relase
          tag: v0.2
          rewrite: true
          files: |
           ${{ github.workspace }}/.github/workflows/*.yml \
           ${{ github.workspace }}/*.yml
```