#!/usr/bin/env bash

wcurl https://aur.archlinux.org/cgit/aur.git/snapshot/paru.tar.gz
tar -xf paru.tar.gz
cd paru
makepkg -si --noconfirm

paru -S metapac

metapac sync

cd $HOME
git clone https://github.com/avagordon01/.config
cd .config
ln -rs bash/.* ~

distrobox assemble create
