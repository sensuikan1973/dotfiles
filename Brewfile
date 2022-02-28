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
brew "yarn" # e.g. for docusaurus
brew "minikube" # k8s playground
brew "elasticsearch@6" # if you don't need this anymore, delete this.
brew "redis"
brew "doxygen"
brew "jq"
brew "openssl@3"
brew "libevent"
brew "libev"

if OS.mac?
  eval File.read("#{ENV['HOME']}/dotfiles/macos/Brewfile")
end
