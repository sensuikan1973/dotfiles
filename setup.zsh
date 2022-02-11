#!/bin/zsh
set -euxo pipefail

echo $ZSH_NAME $ZSH_VERSION

echo "start setup script"

# zsh
ln -fs $HOME/dotfiles/.zshrc $HOME/.zshrc

# ruby gem
ln -fs $HOME/dotfiles/.gemrc $HOME/.gemrc

# git
ln -fs $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
if [[ ! -e $HOME/.gitconfig.local ]]; then
  echo "copy .gitconfig.local"
  cp git/.gitconfig.local $HOME/.gitconfig.local
fi

source $HOME/dotfiles/install.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/setup.zsh
elif [ `uname` = "Linux" ]; then
  # for Linux
fi
