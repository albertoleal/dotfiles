#!/bin/bash

# Only for OS X.
if [[ "Darwin" -ne $(uname) ]]
then
  echo "Skipping Homebrew step because it's now OS X."
  exit 0
fi

# Enabled key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# AirDrop on all interfaces.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Finder's list view as default.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Set key repeat as fast as posible
defaults write NSGlobalDomain KeyRepeat -int 0

# Active screensaver (bottom-left corner).
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Set up Safari for development - not sure when I will need to use Safari.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Trackpad: enable tap to click.
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Automatically hide and show Dock.
defaults write com.apple.dock autohide -bool true

# Set the timezone.
systemsetup -settimezone "Europe/London" > /dev/null

# Disable auto-correct, because you know I'm always correct.
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Ask for password.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Finder: show status bar, path bar.
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Keyboard: Use F's
defaults write -g com.apple.keyboard.fnState -bool true
