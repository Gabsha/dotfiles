#!/bin/bash

### ZSH
sudo apt-get -y install zsh

### curl
sudo apt-get -y install curl

### oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get -y install fonts-powerline
curl -L https://github.com/dikiaap/dotfiles/raw/master/.oh-my-zsh/themes/oxide.zsh-theme --output ~/.oh-my-zsh/themes/oxide.zsh-theme

### tig
sudo apt-get -y install tig

### nvim
sudo apt-get install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

### Emoji linux
sudo add-apt-repository -y ppa:eosrei/fonts
sudo apt update && sudo apt -y install fonts-twemoji-svginot 
