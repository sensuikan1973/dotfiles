# dotfiles

![macos](https://img.shields.io/badge/macos-black.svg?logo=Apple) ![linux](https://img.shields.io/badge/linux-black.svg?logo=Linux)  
[![setup setup_machine](https://github.com/sensuikan1973/dotfiles/actions/workflows/setup_machine.yaml/badge.svg)](https://github.com/sensuikan1973/dotfiles/actions/workflows/setup_machine.yaml)

## setup

### 1. shell

```zsh
git clone https://github.com/sensuikan1973/dotfiles.git ~/dotfiles
cd ~/dotfiles
zsh ./setup.zsh # This script has idempotence.
exec zsh --login
```

### 2. git
You should edit `~/.gitconfig.local`.

## update

Syncs your system with this repository and upgrade system dependencies and tools.

```zsh
# This script has idempotence.
upgrade_system_deps
```

---

## references

### macos

#### migration: bash -> [zsh](http://www.strcat.de/zsh/)

See: https://support.apple.com/ja-jp/HT208050
