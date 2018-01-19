#!/bin/bash

#######
# ZSH #
#######
sudo apt-get install zsh

#######
# FZF #
#######
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

############
# EmojiOne #
############
sudo add-apt-repository -y ppa:eosrei/fonts
sudo apt update && sudo apt -y install fonts-emojione-svginot

########
# NVIM #
########
if [ -d  "~/Software" ]; then
        echo "exist"
fi

cd ~/Software
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
cd -
