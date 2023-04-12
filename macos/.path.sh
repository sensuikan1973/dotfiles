# shellcheck disable=SC1091

# PATH for keg-only packages
# https://docs.brew.sh/FAQ#what-does-keg-only-mean

# my functions
export PATH="$PATH:$HOME/dotfiles/macos/bin"

# brew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/**/bin:$PATH"

# See: https://formulae.brew.sh/cask/google-cloud-sdk
brew_prefix="$(brew --prefix)"
source "$brew_prefix/share/google-cloud-sdk/path.zsh.inc"
