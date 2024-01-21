eval "$(nodenv init -)"

# https://github.com/nodenv/nodenv#using-package-managers
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash

# https://yarnpkg.com/getting-started/install
# for https://github.com/sensuikan1973/pedax/tree/main/website
for node_version in $(nodenv versions --bare); do
  nodenv shell "$node_version"
  corepack enable
done
