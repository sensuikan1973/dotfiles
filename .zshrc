#!/bin/zsh

source $HOME/dotfiles/zsh/.main.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/.main.zsh
elif [ `uname` = "Linux" ]; then
  # for Linux
fi
