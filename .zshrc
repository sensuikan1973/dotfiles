# shellcheck disable=SC1091

if [ "$(uname)" = "Darwin" ]; then
  source "$HOME/dotfiles/macos/.main.zsh"
elif [ "$(uname)" = "Linux" ]; then
  source "$HOME/dotfiles/linux/.main.zsh"
fi

source "$HOME/dotfiles/zsh/.main.zsh"
