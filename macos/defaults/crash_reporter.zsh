domain="com.apple.CrashReporter"

# not show dialog that ask if I send crash report to Apple.
defaults write "$domain" DialogType -string "none"
