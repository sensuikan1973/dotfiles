set -euxo pipefail

# See: https://docs.brew.sh/Homebrew-on-Linux
eval "\$($(brew --prefix)/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
