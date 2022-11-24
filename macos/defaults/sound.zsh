domain="com.apple.sound"

defaults write "$domain.beep" feedback -bool false
defaults write "$domain.beep" volume -int 0
defaults write "$domain.uiaudio" enabled -bool false
