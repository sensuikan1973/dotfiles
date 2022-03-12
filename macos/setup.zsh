set -euxo pipefail

# defaults
for file in $(find $HOME/dotfiles/macos/defaults -type f -name "*.zsh")
do
  echo "run $file"
  source $file
done
# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c

echo "restart every systems to reflect update"
killall Dock
killall Finder
killall SystemUIServer
killall TextEdit
killall Xcode

# brew
if ! which brew; then
  echo "installing homebrew https://brew.sh/"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
