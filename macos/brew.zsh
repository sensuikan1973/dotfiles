# See: https://brew.sh/index_ja.html
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cleanup
brew upgrade

# gls を使いたい
brew install coreutils

# ruby
brew install rbenv ruby-build

# python
brew install pyenv
