# use diff-highlight with git
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

# elsticsearch@6
export PATH="/usr/local/opt/elasticsearch@6/bin:$PATH"

# See: https://formulae.brew.sh/formula/nodebrew
export NODEBREW_ROOT=$(brew --prefix)/var/nodebrew

# Android
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
