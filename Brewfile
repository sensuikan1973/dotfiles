# https://github.com/Homebrew/homebrew-bundle

tap "heroku/brew"
tap "homebrew/bundle"
tap "homebrew/core"
tap "dart-lang/dart"

brew "zsh" # want to use latest zsh
brew "git" # want to use latest git
brew "git-lfs"
brew "coreutils" # want to use gls
brew "rbenv" # want to use multiple version ruby
brew "ruby-build"
brew "pyenv" # want to use multiple version python
brew "peco" # select command in history
brew "nodebrew" # if you want to `.node-version` on each project, you can use nodenv.
brew "p7zip" # for https://github.com/abulmo/edax-reversi/releases

# optional packages
puts "ENV['DISABLE_INSTALLING_OPTIONAL_BREW_PACKAGES']"
puts ENV['DISABLE_INSTALLING_OPTIONAL_BREW_PACKAGES']
unless ENV['DISABLE_INSTALLING_OPTIONAL_BREW_PACKAGES']
  brew "elasticsearch@6" # if you don't need this anymore, delete this.
  brew "redis"

  brew "minikube"

  brew "doxygen"

  brew "jq"

  brew "yarn"

  brew "openssl@3"

  brew "libevent"
  brew "libev"
end

if OS.mac?
  eval File.read("#{ENV['HOME']}/dotfiles/macos/Brewfile")
end
