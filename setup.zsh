#!/usr/bin/env zsh
# shellcheck disable=SC1091,SC1090

set -euxo pipefail

echo "start setup script"
which zsh
echo "$ZSH_NAME" "$ZSH_VERSION"

# git
ln -fs "$HOME/dotfiles/git/.gitignore" "$HOME/.gitignore"
ln -fs "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
if [[ ! -e $HOME/.gitconfig.local ]]; then
  echo "copy .gitconfig.local"
  cp git/.gitconfig.local "$HOME/.gitconfig.local"
fi

# zsh
ln -fs "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
source "$HOME/dotfiles/zsh/install_plugins.zsh"

if [ "$(uname)" = "Darwin" ]; then
  source "$HOME/dotfiles/macos/setup.zsh"
elif [ "$(uname)" = "Linux" ]; then
  source "$HOME/dotfiles/linux/setup.zsh"
fi

# brew
brew analytics off # See: https://docs.brew.sh/Analytics
brew cleanup --prune=all
brew upgrade
brew bundle --file "$HOME/dotfiles/Brewfile"
"$(brew --prefix)/opt/nodebrew/bin/nodebrew" setup_dirs # See: https://formulae.brew.sh/formula/nodebrew

resource_dir="$HOME/dotfiles/resources"

# set zsh to login shell
if [ "$(diff "$resource_dir/etc/shells" /etc/shells)" != "" ]; then
  echo "changing /etc/shells"
  sudo ln -fs "$resource_dir/etc/shells" /etc/shells
fi
if [ "${SHELL:-undefined}" != "$(brew --prefix)/bin/zsh" ]; then
  echo "changing login shell"
  sudo chsh -s "$(brew --prefix)/bin/zsh" "$(whoami)"
fi

# ruby gem
#
# save time and space. I don't need Rdoc.
# https://github.com/rbenv/ruby-build/issues/156
# https://github.com/rbenv/ruby-build#custom-build-configuration
# https://github.com/ruby/ruby/commit/32e00d382f4ef204ac21868ded101597e36d230d
RUBY_CONFIGURE_OPTS="--disable-install-doc"

ln -fs "$resource_dir/ruby/.gemrc" "$HOME/.gemrc"
for rb_version in $(rbenv versions --bare); do
  echo "installing ruby $rb_version"
  rbenv install "$rb_version" --skip-existing
done

echo "setup has succeeded"
