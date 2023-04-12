# shellcheck disable=SC1091

source "$HOME/dotfiles/macos/.path.sh"
source "$HOME/dotfiles/macos/.chflags.sh"
source "$HOME/dotfiles/macos/.plugin.sh"

# See: https://formulae.brew.sh/cask/google-cloud-sdk
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
