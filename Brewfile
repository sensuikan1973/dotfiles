# https://github.com/Homebrew/homebrew-bundle

# NOTE:
# The packages which is always required are only listed.
# If you use another packages, you can install individually.

tap "homebrew/bundle"
tap "homebrew/core"

brew "zsh" # want to use latest zsh
brew "git" # want to use latest git
brew "git-lfs"
brew "coreutils" # want to use gls
brew "rbenv" # want to use multiple version ruby
brew "ruby-build"
brew "pyenv" # want to use multiple version python
brew "peco" # select command in history
brew "nodenv"
brew "p7zip" # for https://github.com/abulmo/edax-reversi/releases

if OS.mac?
  eval File.read("#{ENV['HOME']}/dotfiles/macos/Brewfile")
end
