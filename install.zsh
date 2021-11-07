#!/bin/zsh
set -euo pipefail

echo "install useful extensions"

echo "install/update https://github.com/zsh-users/zsh-syntax-highlighting.git"
zsh_syntax_highlighting_repo_dir=$HOME/dotfiles/plugin/zsh-syntax-highlighting
if [ ! -d "$zsh_syntax_highlighting_repo_dir" ] ; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_syntax_highlighting_repo_dir
else
  cd $zsh_syntax_highlighting_repo_dir && git pull --prune
fi

echo "install/update https://github.com/seebi/dircolors-solarized.git"
dircolors_solarized_repo_dir=$HOME/dotfiles/extension/dircolors-solarized
if [ ! -d "$dircolors_solarized_repo_dir" ] ; then
  git clone https://github.com/seebi/dircolors-solarized.git $dircolors_solarized_repo_dir
else
  cd $dircolors_solarized_repo_dir && git pull --prune
fi
