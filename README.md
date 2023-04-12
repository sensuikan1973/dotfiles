# dotfiles

![macos](https://img.shields.io/badge/macos-black.svg?logo=Apple) ![linux](https://img.shields.io/badge/linux-black.svg?logo=Linux)  
[![setup setup_machine](https://github.com/sensuikan1973/dotfiles/actions/workflows/setup_machine.yaml/badge.svg)](https://github.com/sensuikan1973/dotfiles/actions/workflows/setup_machine.yaml)

## setup

### 1. shell

```sh
git clone https://github.com/sensuikan1973/dotfiles.git ~/dotfiles
cd ~/dotfiles
./setup.sh # This script has idempotence.
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

- macos migration from bash to [zsh](http://www.strcat.de/zsh/): https://support.apple.com/ja-jp/HT208050
