#!/bin/sh
# Made by GermanBread#9077
hascommand() {
    command -v $1 &>/dev/null
}

wall -n "Windows has decided to update now."
if hascommand pacman; then
    pacman -Syu --noconfirm;
    if hascommand yay; then
        yay -Syu --aur --noconfirm;
    fi
    if hascommand paru; then
        paru -Syu --aur --noconfirm;
    fi
    rm -f /etc/**/*.pacnew;
fi
if hascommand apt; then
    apt update;
    apt -y dist-upgrade;
fi
if hascommand dnf; then
    dnf update;
    dnf -y upgrade;
fi
if hascommand zypper; then
    zypper dup --no-confirm --skip-interactive --auto-agree-with-licenses;
fi
wall -n "Your PC will reboot in 30 seconds. No, you don't have a choice"
sleep 30
reboot