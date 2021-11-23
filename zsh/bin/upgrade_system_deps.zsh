#!/bin/zsh
set -uxo pipefail

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
