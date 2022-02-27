#!/usr/bin/env zsh
set -euxo pipefail

echo "start setup script"
which zsh
echo $ZSH_NAME $ZSH_VERSION

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

# brew
brew analytics off # See: https://docs.brew.sh/Analytics
brew cleanup && brew upgrade

resource_dir="$HOME/dotfiles/resources"

# set zsh to login shell
if [ "$(diff $resource_dir/etc/shells /etc/shells)" != "" ]; then
  echo "changing /etc/shells"
  sudo ln -fs $resource_dir/etc/shells /etc/shells
fi
if [ "${SHELL:-undefined}" != "$(brew --prefix)/bin/zsh" ]; then
  echo "changing login shell"
  sudo chsh -s $(brew --prefix)/bin/zsh $(whoami)
fi

# ruby gem
ln -fs $resource_dir/ruby/.gemrc $HOME/.gemrc

echo "setup has succeeded"
