#!/usr/bin/env zsh
# shellcheck disable=SC1091

set -euxo pipefail

branch=${1:-main}

cd "$HOME/dotfiles"
git remote update --prune
git checkout "$branch"
git branch --set-upstream-to="origin/$branch" "$branch"
git pull

source "$HOME/dotfiles/setup.zsh"

if command -v flutter &> /dev/null; then
  flutter upgrade
fi

if command -v gcloud &> /dev/null; then
  gcloud components update --quiet
fi

if command -v gem &> /dev/null; then
  gem update --system
  gem update
fi

if command -v docker &> /dev/null; then
  docker system prune --force
fi
