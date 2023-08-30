#!/bin/bash

sudo -i
echo 'APT::Install-Recommends "0" ; APT::Install-Suggests "0" ;' >> /etc/apt/apt.conf
apt update
apt install network-manager-gnome 
echo -e "source /etc/network/interfaces.d/*\nauto lo\niface lo inet loopback" > /etc/network/interfaces
apt install neovim lightdm feh xfce4-power-manager flatpak fonts-jetbrains-mono alacritty htop gvfs polybar i3-wm rofi zathura xserver-xorg-video-all 
apt purge nano && apt autoremove 
exit
rm ~/.i3/config ~/config/i3/config && cp $PWD/i3config ~/.i3/config
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
systemctl reboot

