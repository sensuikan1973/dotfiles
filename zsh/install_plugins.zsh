#!/bin/zsh
set -euxo pipefail

zsh_plugins_dir="zsh_plugins"

echo "install useful plugins"

echo "install/update https://github.com/zsh-users/zsh-syntax-highlighting.git"
zsh_syntax_highlighting_repo_dir=$HOME/dotfiles/$zsh_plugins_dir/zsh-syntax-highlighting
if [ ! -d "$zsh_syntax_highlighting_repo_dir" ] ; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_syntax_highlighting_repo_dir
else
  cd $zsh_syntax_highlighting_repo_dir && git remote update --prune && git pull
fi

echo "install/update https://github.com/seebi/dircolors-solarized.git"
dircolors_solarized_repo_dir=$HOME/dotfiles/$zsh_plugins_dir/dircolors-solarized
if [ ! -d "$dircolors_solarized_repo_dir" ] ; then
  git clone https://github.com/seebi/dircolors-solarized.git $dircolors_solarized_repo_dir
else
  cd $dircolors_solarized_repo_dir && git remote update --prune && git pull
fi
