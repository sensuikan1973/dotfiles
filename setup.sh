#!/bin/sh

DOT_FILES=( .zshrc)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

# util
brew install coreutils # gls を使いたい

# plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/dotfiles/plugin/zsh-syntax-highlighting

# extension
git clone https://github.com/seebi/dircolors-solarized.git $HOME/dotfiles/extension/dircolors-solarized
