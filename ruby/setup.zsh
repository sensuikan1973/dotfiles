#!/usr/bin/env zsh

ruby_versions=('3.2.0')

# save time and space. I don't need Rdoc.
# https://github.com/rbenv/ruby-build/issues/156
# https://github.com/rbenv/ruby-build#custom-build-configuration
# https://github.com/ruby/ruby/commit/32e00d382f4ef204ac21868ded101597e36d230d
export RUBY_CONFIGURE_OPTS="--disable-install-doc"

ln -fs "$HOME/dotfiles/ruby/.gemrc" "$HOME/.gemrc"
for ruby_version in "${ruby_versions[@]}"; do
  echo "installing ruby $ruby_version"
  rbenv install "$ruby_version" --skip-existing
  eval "$(rbenv init - zsh)"
  rbenv shell "$ruby_version"
  gem update --system --no-document
done
