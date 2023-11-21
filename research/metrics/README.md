# Contents

- `v?.?.?`: Directories with version (major/minor/trivial update)
- symlinks 
  - `latest`: to latest version directory
  - `enso`, `mean_clim`, `mjo`, `variability_modes`: to directory under latest directory
- `index.md`: copy of `index.md` in the `latest` directory

# How to update

### 1. Copy the latest version directory to a new version directory
For example, let's say old: v1.6.1 and new: v1.6.2
```cp -r ./v1.6.1 ./v1.6.2```

### 2. Make update under the new directory
Make change under `./v1.6.2`
```git add v1.6.2```

### 3. Update symlink
```git rm latest```
```ln -sf v1.6.2 latest```

### 4. Update (overwrite) `index.md`
```cp ./latest/index.md .```

### 5. Commit changes to git
```git commit -am 'update'```
