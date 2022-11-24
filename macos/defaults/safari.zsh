domain="com.apple.Safari"

# not send search query to Apple
defaults write "$domain" SuppressSearchSuggestions -bool true
defaults write "$domain" UniversalSearchEnabled -bool false
defaults write "$domain" IncludeDevelopMenu -bool true
defaults write "$domain" IncludeInternalDebugMenu -bool true
defaults write "$domain" WebKitDeveloperExtrasEnabledPreferenceKey -bool true
