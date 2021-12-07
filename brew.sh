#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install node
brew cask install google-chrome
brew cask install neteasemusic
brew cask install wechat
brew cask install qq
brew cask install visual-studio-code
brew cask install postman
# relax reminder  
brew install --cask stretchly



brew install neovim
brew install git
brew install fzf
brew install jq
brew install autojump
# A command line client for MySQL that can do auto-completion and syntax highlighting.
brew install mycli
# Create and view interactive cheat sheets for *nix commands
brew install cheat

brew install task
brew install wget
brew install ack
brew install tree

# Remove outdated versions from the cellar.
brew cleanup
