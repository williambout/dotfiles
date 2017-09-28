#!/usr/bin/env bash

# Use shared functions
. shared.sh


# ==============================================================================
# SET UP CONFIG FILES
# ==============================================================================

header "Setting up config files"

# Config files
ensure_symlink ~/dotfiles/zshrc ~/.zshrc
ensure_symlink ~/dotfiles/gitconfig ~/.gitconfig
ensure_symlink ~/dotfiles/gitignore ~/.gitignore


# ==============================================================================
# SET UP PACKAGES
# ==============================================================================

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# ==============================================================================
# MACOS TWEAKS
# ==============================================================================

header "Tweaking macOS"

# Enable Time Machine
sudo tmutil enable

# Hide everything on the Desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# Save screenshots to the Screenshots folder
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots

# ==============================================================================
# ATOM TWEAKS
# ==============================================================================

apm install sync-settings

# ==============================================================================
# NPM GLOBAL PACKAGES
# ==============================================================================
npm i -g react-native-cli react-native-git-upgrade
