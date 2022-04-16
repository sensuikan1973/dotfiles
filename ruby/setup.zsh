#!/usr/bin/env zsh

# save time and space. I don't need Rdoc.
# https://github.com/rbenv/ruby-build/issues/156
# https://github.com/rbenv/ruby-build#custom-build-configuration
# https://github.com/ruby/ruby/commit/32e00d382f4ef204ac21868ded101597e36d230d
export RUBY_CONFIGURE_OPTS="--disable-install-doc"

ln -fs "$HOME/dotfiles/ruby/.gemrc" "$HOME/.gemrc"
for rb_version in $(rbenv versions --bare); do
  echo "installing ruby $rb_version"
  rbenv install "$rb_version" --skip-existing
  eval "$(rbenv init - zsh)"
  rbenv shell "$rb_version"
  gem update --system "$rb_version"
  gem update
done
