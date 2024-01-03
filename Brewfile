# https://github.com/Homebrew/homebrew-bundle

# NOTE:
# The packages which is always required are only listed.
# If you use another packages, you can install individually.

tap "homebrew/bundle"

brew "zsh" # want to use latest zsh
brew "zsh-syntax-highlighting"
brew "git" # want to use latest git
brew "git-lfs"
brew "coreutils" # want to use gls
brew "peco" # select command in history
brew "rbenv" # want to use multiple version ruby
brew "ruby-build"
brew "pyenv" # want to use multiple version python
brew "nodenv" # want to use multiple version nodejs
brew "openssl"
brew "llvm" # for https://github.com/sensuikan1973/libedax4dart/blob/25b7be1c522306cbe0f6066dd982e86030157782/ffigen.yaml#L20-L21
brew "cocoapods" # for iOS app "Orca" and Flutter macOS app "pedax"
brew "p7zip" # for https://github.com/sensuikan1973/libedax4dart/blob/25b7be1c522306cbe0f6066dd982e86030157782/scripts/build_libedax.sh#L20C1-L21

if OS.mac?
  eval File.read("#{ENV['HOME']}/dotfiles/macos/Brewfile")
end
