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

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ==============================================================================
# OSX TWEAKS
# ==============================================================================

header "Tweaking macOS"

# Fix doc hiding and showing (http://kevinclark.ca/articles/hide-your-dock-without-losing-your-mind)
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -float 0.5; killall Dock
