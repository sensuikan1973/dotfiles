set -euxo pipefail

zsh_plugins_dir="$HOME/dotfiles/zsh/plugins"

echo "install zsh plugins"

function install_plugin() {
  git_repository=$1
  dest_dir="$zsh_plugins_dir/$git_repository"
  if [ ! -d "$dest_dir" ] ; then
    echo "clone $git_repository"
    git clone $git_repository $dest_dir
  else
    echo "pull $git_repository"
    cd $dest_dir && git pull --prune
  fi
}

install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"
install_plugin "https://github.com/seebi/dircolors-solarized.git"

echo "zsh plugins has been installed"
