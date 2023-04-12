domain="com.apple.dock"

# 「最新の使用状況に基づいて操作スペースを自動的に並べ替える」をオフにする
defaults write "$domain" mru-spaces -bool false

# show Dock instantly.
defaults write "$domain" autohide-delay -float 0

# shift Dock to the left.
defaults write "$domain" orientation -string "left"

defaults write "$domain" show-recents -bool false
