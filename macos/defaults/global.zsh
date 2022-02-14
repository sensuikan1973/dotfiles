# increase speed of key repeat.
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# increase speed of mouse movement.
defaults write NSGlobalDomain com.apple.mouse.scaling 30
defaults write NSGlobalDomain com.apple.trackpad.scaling 30

# increase speedof window resize.
defaults write NSGlobalDomain NSWindowResizeTime 0.001

# disable unnecessary animation.
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# See: https://support.apple.com/ja-jp/HT204788
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# always display extensions.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
