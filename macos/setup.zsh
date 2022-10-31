# shellcheck disable=SC1090

set -euxo pipefail

# defaults
# See: https://github.com/koalaman/shellcheck/wiki/SC2044
while IFS= read -r -d '' file
do
  echo "run $file"
  source "$file"
done < <(find "$HOME/dotfiles/macos/defaults" -type f -name "*.zsh")
# NOTE: Night Shift はスクリプト書かないと無理なので、ひとまずは手動で済ませて
# REF: https://gist.github.com/thomasfinch/14bd3181799734c872d2ad3b207cc01c

echo "restart every systems to reflect update"
killall Dock
killall Finder
killall SystemUIServer

gcloud config set survey/disable_prompts True
