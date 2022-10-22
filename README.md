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

### 3. [iTerm2](https://iterm2.com/) (macos only)

Update `General settings` to load `~/dotfiles/macos/iterm2`.
<img width="600" alt="image" src="https://user-images.githubusercontent.com/23427957/153912371-de3c5612-dc43-4d5b-8e1f-3fab32876cb8.png">

## update

Command `upgrade_system_deps` syncs your system with this repository and upgrade system dependencies and tools.

```zsh
# This script has idempotence.
# You can add clean flag to run cleaning.
upgrade_system_deps --clean
```

---

## references

### macos

#### migration: bash -> [zsh](http://www.strcat.de/zsh/)

See: https://support.apple.com/ja-jp/HT208050
