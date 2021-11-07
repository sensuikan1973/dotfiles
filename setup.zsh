#!/bin/zsh
set -euo pipefail

echo "start setup script"

# zsh
ln -fs $HOME/dotfiles/.zshrc $HOME/.zshrc

# git
ln -fs $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
cp git/.gitconfig.local $HOME/.gitconfig.local

source $HOME/dotfiles/install.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/main.zsh
elif [ `uname` = "Linux" ]; then
  # for Linux
fi
