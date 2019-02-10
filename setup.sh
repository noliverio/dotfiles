#!/usr/bin/bash

if [$1 == "desktop"]
then
    pacman -Syu
    ln -s ~/.dotfiles/.config ~/.config
elif [$1 == "remote_server"]
then
    sudo yum update -y
fi

# Stuff I will want on any machine
# Set up vim and install vim plugins.
yum install -y vim
rm ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/view
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
git clone https://github.com/hashivim/vim-terraform.git ~/.vim/pack/plugins/start/vim-terraform
git clone https://github.com/rodjek/vim-puppet.git ~/.vim/pack/plugins/start/vim-puppet

# Set up bash config
rm ~/.bashrc 
ln -s ~/.dotfiles/.bashrc ~/.bashrc

