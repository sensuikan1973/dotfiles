# display full path on title bar.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# display directory prior to files.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# search current directory by default when search.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# display hidden files.
defaults write com.apple.finder AppleShowAllFiles -bool true

# display path bar.
defaults write com.apple.finder ShowPathbar -bool true

# display tab bar.
defaults write com.apple.finder ShowTabView -bool true

# display status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# disable unnecessary animation.
defaults write com.apple.finder DisableAllAnimations -boolean true
