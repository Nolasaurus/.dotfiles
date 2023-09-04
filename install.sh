#!/bin/bash

# Define colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if a file exists and prompt to overwrite
create_symlink() {
  if [ -e "$2" ]; then
    read -p "$2 already exists. Do you want to overwrite it? (y/n) " choice
    case "$choice" in
      y|Y ) ln -sf "$1" "$2";;
      * ) echo "Skipping $2";;
    esac
  else
    ln -s "$1" "$2"
  fi
}

echo "${GREEN}Creating symlinks in the home directory...${NC}"
create_symlink ~/.dotfiles/bash/.bashrc ~/.bashrc
create_symlink ~/.dotfiles/bash/.bash_aliases ~/.bash_aliases
create_symlink ~/.dotfiles/bash/.bash_functions ~/.bash_functions
create_symlink ~/.dotfiles/bash/.bash_profile ~/.bash_profile


# Source the bashrc to apply changes
source ~/.bashrc

echo "${GREEN}Dotfiles installation complete!${NC}"
