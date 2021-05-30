# タイトルバーにフルパスを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# 名前で並び替え時に、ディレクトリを前に置くようにする
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# 検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

# 隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles YES

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# タブバーを表示
defaults write com.apple.finder ShowTabView -bool true

# ステータスバーを表示する
defaults write com.apple.finder ShowStatusBar -bool true

# アニメーション無効
defaults write com.apple.finder DisableAllAnimations -boolean true
