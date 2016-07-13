# ==============================================================================
# SET UP PACKAGES
# ==============================================================================

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Node
brew install node

# ==============================================================================
# INSTALL NODE PACKAGES
# ==============================================================================

# Gulp
npm install -g gulp

# Npm Check
npm install -g npm-check

# ==============================================================================
# INSTALL APPS
# ==============================================================================

# Essentials
brew cask install dropbox
brew cask install flux

# Development
brew cask install atom

# Design
brew cask install sketch

# Browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox

# ==============================================================================
# ATOM SYNC
# ==============================================================================

apm install sync-settings

# ==============================================================================
# SET UP MACOS
# ==============================================================================

# Height of the dock
defaults write com.apple.dock tilesize -int 50
killall -KILL Dock

# Disable save to iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#Show hidden files
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Search in the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Change a file extension without the warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Hide desktop icons
defaults write com.apple.finder CreateDesktop false; killall Finder

#Automaticaly move screenshots to ~/Desktop/Screenshots/
defaults write com.apple.screencapture location ~/Desktop/Screenshots/
