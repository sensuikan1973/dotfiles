# shellcheck disable=SC1090

set -euxo pipefail

# defaults
# See: https://github.com/koalaman/shellcheck/wiki/SC2044#for-posix
find "$HOME/dotfiles/macos/defaults" ! -name "$(printf "*\n*")" -type f -name "*.zsh" > tmp
while IFS= read -r file
do
  echo "run $file"
  source "$file"
done < tmp
rm tmp
# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c

echo "restart every systems to reflect update"
killall Dock
killall Finder
killall SystemUIServer
