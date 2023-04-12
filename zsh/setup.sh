# shellcheck disable=SC1090
set -euxo pipefail

source "$HOME/dotfiles/zsh/install_plugins.sh"

ln -fs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"