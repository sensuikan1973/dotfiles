set -euxo pipefail

# defaults
for file in $(find $HOME/dotfiles/macos/defaults -type f -name "*.zsh")
do
  echo "run $file"
  source $file
done
# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c

# restart every systems
echo "killall Dock, Finder, SystemUIServer, to reflect update"
killall Dock
killall Finder
killall SystemUIServer

# brew
# See: https://brew.sh/index_ja.html
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# GUI
# NOTE: cask is supported only macos. See: https://github.com/Homebrew/discussions/discussions/1081
brew install --cask iterm2
brew install --cask visual-studio-code # NOTE: about settings, use https://code.visualstudio.com/docs/editor/settings-sync
brew install --cask docker
brew install --cask google-chrome
