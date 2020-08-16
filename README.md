Dotfiles
========

This repository contains a list of dotfiles for my current Archlinux configuration.

Prerequisites
-------------

To install packages from AUR, you may need to install [yay](https://github.com/Jguer/yay) first.

Installation
------------

To install the packages, run the following command:

```bash
yay -S --needed $(cut -f 1 -d ' ' pkglist.txt)
```

Run the installation script to install the dotfiles:

```bash
chmod +x ./<theme>/install

./<theme>/install
```

### Display Manager

Run the following command to enable the display manager:

```bash
sudo systemctl enable ly.service
```

### Fonts

Checkout [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono) to download and install the icon font.

### Privileges

To allow users to use shutdown commands, add the following to the and of `/etc/sudoers` using the `visudo` command.

```bash
%wheel ALL=(ALL) NOPASSWD: /usr/bin/systemctl poweroff,/usr/bin/systemctl halt,/usr/bin/systemctl reboot
```

### Lock screen

Checkout [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen) for lock screen configuration.

### rEFInd

Preferred rEFInd themes:
- [refind-theme-regular](https://github.com/bobafetthotmail/refind-theme-regular)
- [refind-minimal](https://github.com/EvanPurkhiser/rEFInd-minimal)

License
-------

[MIT License](LICENSE)
