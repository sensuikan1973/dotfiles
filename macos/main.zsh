source $HOME/dotfiles/macos/chflags.zsh
source $HOME/dotfiles/macos/brew.zsh

# defaults
for file in $(find $HOME/dotfiles/macos/defaults -type f)
do
  echo "run $file"
  source $file
done

# 各種再起動
echo "killall Dock, Finder, SystemUIServer, to reflect update"
killall Dock
killall Finder
killall SystemUIServer

# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c
