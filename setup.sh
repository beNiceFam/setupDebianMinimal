#!/bin/bash

sudo -i
echo 'APT::Install-Recommends "0" ; APT::Install-Suggests "0" ;' >> /etc/apt/apt.conf
apt update
apt install network-manager-gnome 
echo -e "source /etc/network/interfaces.d/*\nauto lo\niface lo inet loopback" > /etc/network/interfaces
apt install neovim lightdm feh fonts-jetbrains-mono alacritty htop gvfs polybar i3-wm rofi zathura xserver-xorg-video-all 
apt purge nano && sudo apt autoremove 
exit
systemctl reboot



