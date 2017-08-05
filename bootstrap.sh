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
# MACOS TWEAKS
# ==============================================================================

header "Tweaking macOS"

# Enable Time Machine
sudo tmutil enable
