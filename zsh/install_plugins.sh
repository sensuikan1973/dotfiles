set -euxo pipefail

zsh_plugins_dir="$HOME/dotfiles/zsh/plugins"

echo "install zsh plugins"

function install_plugin() {
  git_repository=$1
  dir_name=$2
  dest_dir="$zsh_plugins_dir/$dir_name"
  if [ ! -d "$dest_dir" ] ; then
    echo "clone $git_repository"
    git clone "$git_repository" "$dest_dir"
  else
    echo "pull $git_repository"
    cd "$dest_dir"
    git pull --prune
  fi
}

install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git" "zsh-syntax-highlighting"
install_plugin "https://github.com/seebi/dircolors-solarized.git" "dircolors-solarized"

echo "zsh plugins has been installed"
