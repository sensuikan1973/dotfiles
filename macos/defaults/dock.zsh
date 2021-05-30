# 「最新の使用状況に基づいて操作スペースを自動的に並べ替える」をオフにする
defaults write com.apple.dock mru-spaces -bool false

# Dock を瞬時に表示する
defaults write com.apple.dock autohide-delay -float 0

# Dock を左寄せにする
defaults write com.apple.dock orientation -string "left"
