# 「最新の使用状況に基づいて操作スペースを自動的に並べ替える」をオフにする
defaults write com.apple.dock mru-spaces -bool false

# show Dock instantly.
defaults write com.apple.dock autohide-delay -float 0

# shift Dock to the left.
defaults write com.apple.dock orientation -string "left"

defaults write com.apple.dock "show-recents" -bool false
