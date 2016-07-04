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
