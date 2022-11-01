# releases-x
> #### Composite action to create a release.
> ``` - uses: milankomaj/releases-x@v0.1 ```

**with:** | *required*  | *default*  | *optional*
:--- | :---: | :--- | :---:
GITHUB_TOKEN: |**true**|                            |
target:       | false  | `master`                   | ✅
title:        | false  | `${{ github.repository }}` | ✅
tag:          | false  | `v.0.${{ github.run_id }}` | ✅
rewrite:      | false  | `false`                    | ✅
files:        | false  | Source code (zip, tar.gz)  | ✅

---

> ###### minimal example
```
      - uses: milankomaj/releases-x@v0.1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
 ```

> ###### full example
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
---