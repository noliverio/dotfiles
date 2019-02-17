#!/usr/bin/bash

if [ $1 == "desktop" ]
then
    pacman -Syu
    pacman -Sy vim
    ln -s .dotfiles/.config .config
elif [ $1 == "interactive_server" ]
then
    sudo yum update -y
    rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm
    rpm --import http://mirror.ghettoforge.org/distributions/gf/RPM-GPG-KEY-gf.el7
    yum -y remove vim-minimal vim-common vim-enhanced
    yum -y --enablerepo=gf-plus install vim-enhanced sudo
fi

# Stuff I will want on any machine
# Set up vim and install vim plugins.
rm .vimrc
ln -s .dotfiles/.vimrc .vimrc
mkdir -p .vim/view
git clone https://github.com/fatih/vim-go.git .vim/pack/plugins/start/vim-go
git clone https://github.com/hashivim/vim-terraform.git .vim/pack/plugins/start/vim-terraform
git clone https://github.com/rodjek/vim-puppet.git .vim/pack/plugins/start/vim-puppet

# Set up bash config
rm .bashrc 
ln -s .dotfiles/.bashrc .bashrc

