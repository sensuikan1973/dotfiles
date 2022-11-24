domain="com.apple.desktopservices"

# not create .DS_Store in USB, NetworkStores.
defaults write "$domain" DSDontWriteNetworkStores -bool true
defaults write "$domain" DSDontWriteUSBStores -bool true
