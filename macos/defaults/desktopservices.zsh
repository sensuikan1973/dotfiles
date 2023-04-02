domain="com.apple.desktopservices"

# not create .DS_Store in USB, NetworkStores.
# See: https://support.apple.com/ja-jp/HT208209
defaults write "$domain" DSDontWriteNetworkStores -bool true
defaults write "$domain" DSDontWriteUSBStores -bool true
