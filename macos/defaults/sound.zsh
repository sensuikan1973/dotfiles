domain="com.apple.sound"

defaults write "$domain.feedback" volume -bool false
defaults write "$domain.beep" volume -int 0
defaults write "$domain.uiaudio" enabled -bool false
