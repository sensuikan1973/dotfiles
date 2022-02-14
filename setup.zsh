#!/usr/bin/env zsh
set -euxo pipefail

which zsh
echo $ZSH_NAME $ZSH_VERSION

echo "start setup script"

# ruby gem
ln -fs $HOME/dotfiles/ruby/.gemrc $HOME/.gemrc

# git
ln -fs $HOME/dotfiles/git/.gitignore $HOME/.gitignore
ln -fs $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
if [[ ! -e $HOME/.gitconfig.local ]]; then
  echo "copy .gitconfig.local"
  cp git/.gitconfig.local $HOME/.gitconfig.local
fi

# zsh
ln -fs $HOME/dotfiles/.zshrc $HOME/.zshrc
source $HOME/dotfiles/zsh/install_plugins.zsh

if [ `uname` = "Darwin" ]; then
  source $HOME/dotfiles/macos/setup.zsh
elif [ `uname` = "Linux" ]; then
  source $HOME/dotfiles/linux/setup.zsh
fi

# shell
sudo ln -fs $HOME/dotfiles/resources/etc/shells /etc/shells
sudo chsh -s $(brew --prefix)/bin/zsh $(whoami)

echo "setup has successeded"
