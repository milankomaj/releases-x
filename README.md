# releases-x
### Composite action to create a release.


*with* | *required*  | *default*
---: | :---: | :---
GITHUB_TOKEN: |true  |
target:       |false | master
title:        |true  |
tag:          |true  |
rewrite:      |false | false
files:        |false |

###### minimal example
```
      - uses: milankomaj/releases-x@v0.1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          title: relase
          tag: v0.2
 ```

###### full example
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