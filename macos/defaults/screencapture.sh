domain="com.apple.screencapture"

# include date and time in screenshot filenames.
defaults write "$domain" include-date -bool true

# set default screenshot location.
defaults write "$domain" location -string "$HOME/Desktop"
