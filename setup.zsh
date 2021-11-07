#!/bin/zsh
set -eu

echo "start setup script"

LINK_TARGET_FILES=( .zshrc)
for file in ${LINK_TARGET_FILES[@]}
do
  ln -fs $HOME/dotfiles/$file $HOME/$file
done

# git
ln -fs $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
cp git/.gitconfig.local $HOME/.gitconfig.local

source $HOME/dotfiles/install.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/main.zsh
elif [ `uname` = "Linux" ]; then
  # for Linux
fi
