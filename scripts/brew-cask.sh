#!/usr/bin/env bash
# Use Homebrew Cask to install standard set of OSX apps: http://caskroom.io/

# Install Homebrew Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Install Quick Look plugins # http://github.com/sindresorhus/quick-look-plugins
brew cask install suspicious-package quicklook-json qlmarkdown qlstephen qlcolorcode

# Core system applications
brew cask install google-chrome-beta
brew cask install firefox
brew cask install dropbox
brew cask install istat-menus
brew cask install skype
brew cask install onepassword
brew cask install spotify
brew cask install notational-velocity

# Development tools
brew cask install rowanj-gitx
brew cask install sequel-pro

# Misc apps
brew cask install keka
brew cask install daisydisk
brew cask install transmission
brew cask install vlc
brew cask install jdownloader
