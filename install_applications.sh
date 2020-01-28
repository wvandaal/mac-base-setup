#!/bin/bash

clear

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install xcode CLI tools
xcode-select --install

# Get all cask versions and update homebrew
brew tap caskroom/versions
brew update

# install cli tools
brew install zsh
brew install antigen
brew install tree
brew install adoptopenjdk8
brew install jenv
brew install maven
brew install scala
brew install sbt
brew install rabbitmq

# install apps
brew cask install iterm2
brew cask install slack
brew cask install google-chrome
brew cask install sublime-text
brew cask install intellij-idea-ce
brew cask install spotify
brew cask install sizeup
brew cask install postman
brew cask install java

# clear the homebrew cache of unused formulae
brew cleanup -s
