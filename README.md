# Windows Update for Linux

Want to use Linux and keep the stability of Windows? Then this is perfect for you!

## Prerequisites

* systemd (.timer and .service, feel free to create services for other init systems)
* root account (only for install)
* pacman, apt, dnf, zypper, yay and/or paru (for the update part)

## Using (run as root pliz)

`make install` - Install ~~and suffer~~ and enjoy Windows-levels of stability

`make uninstall` - Good choice

## Contributing

Each commit message must include one of the following emoji combinations:

* 👁️👄👁️
* 👉👈
* 😱

It is also forbidden to write commit messages that make sense:

* "Changed title in README"
* "removed redundant lines in script"
* "fixed timer unit"

Instead you should do this:

* "👉👈 readme"
* "😱 script is bloat"
* "👁️👄👁️ fix timer"