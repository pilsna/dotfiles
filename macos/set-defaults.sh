# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
# defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a fast key repeat.
# defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
defaults write NSGlobalDomain KeyRepeat -int 2


# Set the Finder prefs for showing a few different volumes on the Desktop.
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner.
# defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
# defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
# sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# enable the debug menu in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu 1

# ===============================
# New version of macos defaults using https://macos-defaults.com/

# Auto-hide the dock, move to left and set icon size
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "tilesize" -int "16" && killall Dock

# Save screenshots in custom folder
defaults write com.apple.screencapture "location" -string "~/Pictures/screenshots" && killall SystemUIServer

# Show full url in Safari
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" && killall Safari

# Show file extensions & hidden files in Finder, show path bar, search current folder, don't warn on ext change
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" 
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" 
defaults write com.apple.finder "ShowPathbar" -bool "true" 
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" 
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" 
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false" && killall Finder

# Mission control: group windows by app
defaults write com.apple.dock "expose-group-apps" -bool "true" && killall Dock
