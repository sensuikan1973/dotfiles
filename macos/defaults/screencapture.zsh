# include date and time in screenshot filenames.
defaults write com.apple.screencapture include-date -bool true

# set default screenshot location.
defaults write com.apple.screencapture location -string "$HOME/Desktop"
