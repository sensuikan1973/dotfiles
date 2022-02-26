#!/usr/bin/env zsh
set -euxo pipefail

echo "start setup script"
which zsh
echo $ZSH_NAME $ZSH_VERSION

resource_dir="$HOME/dotfiles/resources"

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
brew cleanup && brew upgrade
brew install git # want to use latest git
brew install coreutils # want to use gls
brew install rbenv ruby-build # want to use multiple version ruby
brew install pyenv # want to use multiple version python
brew install zsh # want to use latest zsh
brew install peco # select command in history
brew install nodebrew # if you want to `.node-version` on each project, you can use nodenv.

# set zsh to login shell
sudo ln -fs $resource_dir/etc/shells /etc/shells
sudo chsh -s $(brew --prefix)/bin/zsh $(whoami)

# ruby gem
ln -fs $resource_dir/ruby/.gemrc $HOME/.gemrc

echo "setup has successeded"
