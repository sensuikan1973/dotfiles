#!/bin/zsh

echo "start setup script"

DOT_FILES=( .zshrc)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

source $HOME/dotfiles/install.zsh

source $HOME/dotfiles/macos/main.zsh
