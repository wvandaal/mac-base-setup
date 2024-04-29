#!/bin/bash

clear

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install xcode CLI tools
xcode-select --install

# Get all cask versions and update homebrew
brew tap caskroom/versions
brew update

# install cli tools
brew install zsh
brew install antigen
brew install ammonite-repl
brew install tree
brew install adoptopenjdk8
brew install jenv
brew install maven
brew install scala
brew install sbt
brew install rabbitmq
brew install leiningen
brew install npm

# install apps
brew install --cask iterm2
brew install --cask slack
brew install --cask google-chrome
brew install --cask sublime-text
brew install --cask intellij-idea-ce
brew install --cask spotify
brew install --cask sizeup
brew install --cask postman
brew install --cask java
brew install --cask docker

# clear the homebrew cache of unused formulae
brew cleanup -s
