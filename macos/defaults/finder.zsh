domain="com.apple.finder"

# display full path on title bar.
defaults write "$domain" _FXShowPosixPathInTitle -bool true

# display directory prior to files.
defaults write "$domain" _FXSortFoldersFirst -bool true

# search current directory by default when search.
defaults write "$domain" FXDefaultSearchScope -string "SCcf"

# display hidden files.
defaults write "$domain" AppleShowAllFiles -bool true

# display path bar.
defaults write "$domain" ShowPathbar -bool true

# display tab bar.
defaults write "$domain" ShowTabView -bool true

# display status bar.
defaults write "$domain" ShowStatusBar -bool true

# disable unnecessary animation.
defaults write "$domain" DisableAllAnimations -bool true

# changing file extension warning
defaults write "$domain" FXEnableExtensionChangeWarning -bool true

defaults write "$domain" FXPreferredViewStyle -string "Nlsv"

defaults write "$domain" _FXSortFoldersFirstOnDesktop -bool true
