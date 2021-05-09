# Made by GermanBread#9077
wall -n "Windows Update has decided to update now."
if [ -e /usr/bin/pacman ]; then
    pacman -Syu --noconfirm
    rm -f /etc/**/*.pacnew
fi
if [ -e /usr/bin/apt ]; then
    apt update
    apt -y upgrade
fi
wall -n "Your PC will reboot in 30 seconds. No, you don't have a choice"
sleep 30
reboot
