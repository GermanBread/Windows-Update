#!/bin/sh
# Made by GermanBread#9077

wall -n "Windows Update has decided to update now."
if [ -e /usr/bin/pacman ]; then
    pacman -Syu --noconfirm
    if [ -e /usr/bin/yay ]; then
        yay -Syu --aur --noconfirm
    fi
    if [ -e /usr/bin/paru ]; then
        paru -Syu --aur --noconfirm
    fi
    rm -f /etc/**/*.pacnew
fi
if [ -e /usr/bin/apt ]; then
    apt -y upgrade
fi
if [ -e /usr/bin/dnf ]; then
    dnf -y upgrade
fi
if [ -e /run/current-system/sw/bin/nixos-rebuild ]; then
    nixos-rebuild boot --upgrade
fi
wall -n "Your PC will reboot in 30 seconds. No, you don't have a choice"
sleep 30
reboot
