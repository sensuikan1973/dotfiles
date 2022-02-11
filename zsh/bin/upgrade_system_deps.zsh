#!/bin/zsh
set -euxo pipefail

cd $HOME/dotfiles
git remote update --prune
git switch main
git pull
git delete-local-branches-merged-to main

source $HOME/dotfiles/install.zsh

if [ `uname` = "Darwin" ]; then
  brew cleanup && brew upgrade
fi

if command -v flutter &> /dev/null; then
  flutter upgrade
fi

if command -v gcloud &> /dev/null; then
  gcloud components update
fi

if command -v gem &> /dev/null; then
  gem update --system
fi
