# shellcheck disable=SC1091,SC1090
set -euxo pipefail
echo "start setup script"

# brew
if ! which brew; then
  echo "installing homebrew https://brew.sh/"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew analytics off # See: https://docs.brew.sh/Analytics
brew cleanup --prune=all
brew update
brew upgrade
brew bundle --file "$HOME/dotfiles/Brewfile"
brew bundle check --file "$HOME/dotfiles/Brewfile"
brew doctor

# zsh
which zsh
zsh
echo "$ZSH_NAME" "$ZSH_VERSION"
source "$HOME/dotfiles/zsh/setup.sh"

# macos
source "$HOME/dotfiles/macos/setup.sh"
source "$HOME/dotfiles/macos/.path.sh"

# others
source "$HOME/dotfiles/git/setup.sh"
source "$HOME/dotfiles/etc/setup.sh"
source "$HOME/dotfiles/ruby/setup.sh"
source "$HOME/dotfiles/nodejs/setup.sh"

echo "setup has succeeded"
