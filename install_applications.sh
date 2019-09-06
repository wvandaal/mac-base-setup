#!/bin/bash

clear

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install xcode CLI tools
xcode-select --install

# install cli tools
brew install zsh
brew install antigen

# install apps
brew cask install iterm2
brew cask install slack
brew cask install google-chrome
brew cask install sublime-text
brew cask install intellij-idea-ce
brew cask install spotify
brew cask install sizeup

# clear the homebrew cache of unused formulae
brew cleanup -s
