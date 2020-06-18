# How to update

## 1. Copy the latest version directory to a new version directory
For example, let's say old: v1.3.1 and new: v1.3.2
```cp -r ./v1.3.1 ./v1.3.2```

## 2. Make update under the new directory
Make change under `./v1.3.2`

## Update symlink
```ln -sf v1.3.2 latest```

## Update (overwrite) index.md
```cp ./v1.3.2/index.md .```
