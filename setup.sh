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

# brew
if ! which brew; then
  echo "installing homebrew https://brew.sh/"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ "$(uname)" = "Darwin" ]; then
  source "$HOME/dotfiles/macos/setup.zsh"
  source "$HOME/dotfiles/macos/.path.zsh"
elif [ "$(uname)" = "Linux" ]; then
  source "$HOME/dotfiles/linux/setup.zsh"
  source "$HOME/dotfiles/linux/.path.zsh"
fi

# brew
brew analytics off # See: https://docs.brew.sh/Analytics
brew cleanup --prune=all
brew update
brew upgrade
brew bundle --file "$HOME/dotfiles/Brewfile"
brew bundle check --file "$HOME/dotfiles/Brewfile"
brew doctor || true

# zsh
which zsh
echo "$ZSH_NAME" "$ZSH_VERSION"
ln -fs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
source "$HOME/dotfiles/zsh/install_plugins.zsh"

# others
source "$HOME/dotfiles/etc/setup.zsh"
source "$HOME/dotfiles/ruby/setup.zsh"
source "$HOME/dotfiles/nodejs/setup.zsh"

echo "setup has succeeded"
