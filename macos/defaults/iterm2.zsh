# ref: https://shyr.io/blog/sync-iterm2-configs

domain="com.googlecode.iterm2"

defaults write "$domain" PrefsCustomFolder -string "$HOME/dotfiles/macos/iterm2/com.googlecode.iterm2.plist"
defaults write "$domain" LoadPrefsFromCustomFolder -bool true
