# shellcheck disable=SC1091,SC1090
set -euxo pipefail
echo "start setup script"

# git
ln -fs "$HOME/dotfiles/git/.gitignore" "$HOME/.gitignore"
ln -fs "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
if [[ ! -e $HOME/.gitconfig.local ]]; then
  echo "copy .gitconfig.local"
  cp git/.gitconfig.local "$HOME/.gitconfig.local"
fi

# macos
source "$HOME/dotfiles/macos/setup.sh"
source "$HOME/dotfiles/macos/.path.sh"

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
brew doctor || true

# zsh
which zsh
ln -fs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
source "$HOME/dotfiles/zsh/install_plugins.sh"

# others
source "$HOME/dotfiles/etc/setup.sh"
source "$HOME/dotfiles/ruby/setup.sh"
source "$HOME/dotfiles/nodejs/setup.sh"

echo "setup has succeeded"
