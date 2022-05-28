#!/usr/bin/env zsh
# shellcheck disable=SC1091,SC1090

set -euxo pipefail

echo "start setup script"
which zsh
echo "$ZSH_NAME" "$ZSH_VERSION"

# git
ln -fs "$HOME/dotfiles/git/.gitignore" "$HOME/.gitignore"
ln -fs "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
if [[ ! -e $HOME/.gitconfig.local ]]; then
  echo "copy .gitconfig.local"
  cp git/.gitconfig.local "$HOME/.gitconfig.local"
fi

# zsh
ln -fs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
source "$HOME/dotfiles/zsh/install_plugins.zsh"

if [ "$(uname)" = "Darwin" ]; then
  source "$HOME/dotfiles/macos/setup.zsh"
elif [ "$(uname)" = "Linux" ]; then
  source "$HOME/dotfiles/linux/setup.zsh"
fi

# brew
brew analytics off # See: https://docs.brew.sh/Analytics
brew cleanup --prune=all
brew upgrade
brew bundle --file "$HOME/dotfiles/Brewfile"

source "$HOME/dotfiles/etc/setup.zsh"

source "$HOME/dotfiles/ruby/setup.zsh"

# for PATH
source "$HOME/.zshrc"

# doctor
# https://github.com/rbenv/rbenv#using-package-managers
# https://github.com/nodenv/nodenv#homebrew-on-macos
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash

echo "setup has succeeded"
