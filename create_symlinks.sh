#!/bin/zsh

DOTFILES_DIR=~/Code/dotfiles

# Delete existing stuff
sudo rm -rf ~/.vim
sudo rm -rf ~/.i3
sudo rm -rf ~/zshrc
sudo rm -rf ~/.config/nvim/init.vim

# Symlinks files
ln -sf $DOTFILES_DIR/vim ~/.vim
ln -sf $DOTFILES_DIR/i3 ~/.i3
ln -sf $DOTFILES_DIR/zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/nvim/init.vim ~/.config/nvim/init.vim

#==============
# Set zsh as the default shell
#==============
