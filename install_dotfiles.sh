#!/bin/bash

# Go to ~ directory
cd

# Download .zshrc if it doesn't exist
if [ ! -f .zshrc ]; then
  curl -O https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/.zshrc
else
  echo ".zshrc already exists"
fi

# Download .vimrc if it doesn't exist
if [ ! -f .vimrc ]; then
  curl -O https://raw.githubusercontent.com/wvandaal/mac-base-setup/master/.vimrc
else
  echp ".vimrc already exists"
fi
