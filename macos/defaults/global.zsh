# キーリピートの高速化
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# マウスを速く動かす
defaults write NSGlobalDomain com.apple.mouse.scaling 30
defaults write NSGlobalDomain com.apple.trackpad.scaling 30

# ダイアログ表示やウィンドウリサイズ速度の高速化
defaults write NSGlobalDomain NSWindowResizeTime 0.001

# アニメーション無効化
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
