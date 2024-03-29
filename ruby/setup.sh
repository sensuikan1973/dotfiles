ln -fs "$HOME/dotfiles/ruby/.gemrc" "$HOME/.gemrc"

eval "$(rbenv init -)"
for rb_version in $(rbenv versions --bare); do
  rbenv shell "$rb_version"
  gem update --system --no-document
done

# https://github.com/rbenv/rbenv-installer#rbenv-doctor
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
