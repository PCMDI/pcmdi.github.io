# Contents

- `v?.?.?`: Directories with version (major/minor/trivial update)
- symlinks 
  - `latest`: to latest version directory
  - `enso`, `mean_clim`, `mjo`, `variability_modes`: to directory under latest directory

# How to update

### 1. Copy the latest version directory to a new version directory
For example, let's say old: v1.3.1 and new: v1.3.2
```cp -r ./v1.3.1 ./v1.3.2```

### 2. Make update under the new directory
Make change under `./v1.3.2`

### 3. Update symlink
```ln -sf v1.3.2 latest```

### 4. Update (overwrite) `index.md`
```cp ./v1.3.2/index.md .```
