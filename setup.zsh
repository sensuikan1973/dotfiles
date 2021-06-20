#!/bin/zsh

echo "start setup script"

DOT_FILES=( .zshrc)

for file in ${DOT_FILES[@]}
do
  ln -fs $HOME/dotfiles/$file $HOME/$file
done

source $HOME/dotfiles/install.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/main.zsh
elif [ `uname` = "Linux" ]; then
  # for Linux
fi
