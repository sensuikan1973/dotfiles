domain="NSGlobalDomain"

# increase speed of key repeat.
defaults write "$domain" KeyRepeat -int 2
defaults write "$domain" InitialKeyRepeat -int 15

# increase speed of mouse movement.
defaults write "$domain" com.apple.mouse.scaling 30
defaults write "$domain" com.apple.trackpad.scaling 30

# increase speedof window resize.
defaults write "$domain" NSWindowResizeTime 0.001

# disable unnecessary animation.
defaults write "$domain" NSAutomaticWindowAnimationsEnabled -bool false

# See: https://support.apple.com/ja-jp/HT204788
defaults write "$domain" NSDocumentSaveNewDocumentsToCloud -bool false

# always display extensions.
defaults write "$domain" AppleShowAllExtensions -bool true

# remove the delay when hovering the toolbar title
defaults write "$domain" NSToolbarTitleViewRolloverDelay -float 0

# choose the size of Finder sidebar icons as Medium
defaults write "$domain" NSTableViewDefaultSizeMode -int 2

defaults write "$domain" com.apple.sound.beep.feedback -bool false
defaults write "$domain" com.apple.sound.beep.volume -int 0
defaults write "$domain" com.apple.sound.uiaudio.enabled -bool false
