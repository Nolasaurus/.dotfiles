#!/bin/bash

# Define colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if git is installed
if ! [ -x "$(command -v git)" ]; then
  echo "${RED}Error:${NC} git is not installed." >&2
  exit 1
fi

# Clone dotfiles repository (assuming it's hosted on GitHub)
echo "${GREEN}Cloning dotfiles...${NC}"
git clone git@github.com:nolasaurus/dotfiles.git ~/dotfiles

# Create symlinks in the home directory pointing to files in ~/dotfiles/
echo "${GREEN}Creating symlinks in the home directory...${NC}"
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bash_functions ~/.bash_functions
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
# ... Add other dotfiles you want to symlink ...

# Source the bashrc to apply changes
source ~/.bashrc

echo "${GREEN}Dotfiles installation complete!${NC}"
