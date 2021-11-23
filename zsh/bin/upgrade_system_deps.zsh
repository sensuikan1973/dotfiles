#!/bin/zsh
brew cleanup
brew upgrade
flutter upgrade
gcloud components update
gem update --system

source $HOME/dotfiles/install.zsh
