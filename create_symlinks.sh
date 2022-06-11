#!/bin/bash

DOTFILES_DIR=~/Code/dotfiles
CONFIG_DIR=${DOTFILES_DIR}/config

for file in $CONFIG_DIR/*; do
  target=~/.config/
  filename=$(echo $file | rev | cut -d'/' -f-1 | rev)
  echo "Creating symlink from $filename to $target"
  ln -sf -T $CONFIG_DIR/$filename ~/.config/$filename 
done




# Symlinks files
ln -sf $DOTFILES_DIR/zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/tmux.conf ~/.tmux.conf
ln -sf -T $DOTFILES_DIR/i3 ~/.i3
