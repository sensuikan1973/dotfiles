#!/bin/sh

DOT_FILES=( .zshrc)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

source $HOME/dotfiles/install.sh

source $HOME/dotfiles/macos/defaults.zsh
