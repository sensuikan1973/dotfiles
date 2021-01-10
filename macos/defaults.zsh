# キーリピートの高速化
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# マウスを速く動かす
defaults write -g com.apple.mouse.scaling 24
defaults write -g com.apple.trackpad.scaling 24

# Finder
defaults write com.apple.finder ShowStatusBar -bool true # ステータスバーを表示
defaults write com.apple.finder AppleShowAllFiles YES # 隠しファイルを表示する
defaults write com.apple.finder ShowPathbar -bool true # パスバーを表示
defaults write com.apple.finder ShowTabView -bool true # タブバーを表示
defaults write com.apple.finder DisableAllAnimations -boolean true # アニメーション無効
defaults write com.apple.finder AnimateInfoPanes -boolean false # アニメーション無効
chflags nohidden ~/Library # ライブラリディレクトリを表示

# ネットワークドライブで .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# ダイアログの表示速度
defaults write -g NSWindowResizeTime 0.001

# 「最新の使用状況に基づいて操作スペースを自動的に並べ替える」をオフにする
defaults write com.apple.dock mru-spaces -bool false
