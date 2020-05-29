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
yay -S --needed - < pkglist.txt
```

Run the installation script to install the dotfiles:

```bash
chmod +x ./<theme>/install

./<theme>/install
```

License
-------

[MIT License](LICENSE)
