# shellcheck disable=SC1091

if [ "$(uname)" = "Darwin" ]; then
  source "$HOME/dotfiles/macos/.main.sh"
elif [ "$(uname)" = "Linux" ]; then
  source "$HOME/dotfiles/linux/.main.sh"
fi

source "$HOME/dotfiles/zsh/.main.sh"
