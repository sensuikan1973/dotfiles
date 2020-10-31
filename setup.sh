#!/bin/sh

DOT_FILES=( .zshrc)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/dotfiles/plugin/zsh-syntax-highlighting
