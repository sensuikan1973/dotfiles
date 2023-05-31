eval "$(nodenv init -)"

# https://github.com/nodenv/nodenv#using-package-managers
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash

# https://github.com/nodenv/nodenv#understanding-shims
# https://docs.npmjs.com/try-the-latest-stable-version-of-npm
npm install -g npm@latest
