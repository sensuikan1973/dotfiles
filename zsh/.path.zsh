# brew
export HOMEBREW_BUNDLE_FILE="$HOME/dotfiles/Brewfile"

# use diff-highlight with git
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# See: https://formulae.brew.sh/formula/nodebrew
export NODEBREW_ROOT=$(brew --prefix)/var/nodebrew
export PATH=$PATH:$NODEBREW_ROOT/current/bin

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
