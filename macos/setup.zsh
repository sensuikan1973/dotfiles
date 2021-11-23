# defaults
for file in $(find $HOME/dotfiles/macos/defaults -type f)
do
  echo "run $file"
  source $file
done
# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c

# 各種再起動
echo "killall Dock, Finder, SystemUIServer, to reflect update"
killall Dock
killall Finder
killall SystemUIServer

# brew
# See: https://brew.sh/index_ja.html
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew cleanup && brew upgrade
brew install coreutils # gls を使いたい
brew install rbenv ruby-build # ruby
brew install pyenv # python

source $HOME/dotfiles/macos/.main.zsh