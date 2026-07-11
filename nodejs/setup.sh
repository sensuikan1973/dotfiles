eval "$(nodenv init -)"

# https://github.com/nodenv/nodenv-installer#nodenv-doctor
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/HEAD/bin/nodenv-doctor | bash

# https://yarnpkg.com/getting-started/install
for node_version in $(nodenv versions --bare); do
  NODENV_VERSION="$node_version"
  echo "$NODENV_VERSION"
  nodenv shell "$node_version"
  nodenv versions
  npm install -g corepack
  nodenv rehash
  corepack enable
done
