#!/bin/bash

# Go to ~ directory and clear
cd
cl

# Download .zshrc if it doesn't exist
if [ ! -f .zshrc ]; then
  echo "Downloading zsh config..."
  curl -O https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/.zshrc
else
  echo ".zshrc already exists"
fi

echo

# Download .vimrc if it doesn't exist
if [ ! -f .vimrc ]; then
  echo "Downloading vim config..."
  curl -O https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/.vimrc
else
  echp ".vimrc already exists"
fi
