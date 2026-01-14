# my functions
export PATH=$PATH:$HOME/dotfiles/zsh/bin

# brew
export HOMEBREW_BUNDLE_FILE="$HOME/dotfiles/Brewfile"
brew_prefix="$(brew --prefix)"
export PATH="$brew_prefix/sbin:$PATH"

# use diff-highlight with git
export PATH=$PATH:$brew_prefix/share/git-core/contrib/diff-highlight

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

# Dart Global Pub
export PATH="$PATH":"$HOME/.pub-cache/bin"
