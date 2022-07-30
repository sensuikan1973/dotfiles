# shellcheck disable=SC1091

source "$HOME/dotfiles/macos/.alias.zsh"
source "$HOME/dotfiles/macos/.path.zsh"
source "$HOME/dotfiles/macos/.chflags.zsh"
source "$HOME/dotfiles/macos/.plugin.zsh"

# See: https://formulae.brew.sh/cask/google-cloud-sdk
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
