#!/bin/zsh

DOTFILES_DIR=~/Code/dotfiles

# Delete existing stuff
sudo rm -rf ~/.vim
sudo rm -rf ~/.i3
sudo rm -rf ~/zshrc

# Symlinks files
ln -sf $DOTFILES_DIR/vim ~/.vim
ln -sf $DOTFILES_DIR/i3 ~/.i3
ln -sf $DOTFILES_DIR/zshrc ~/.zshrc

#==============
# Set zsh as the default shell
#==============
