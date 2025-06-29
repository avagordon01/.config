#!/usr/bin/env bash

cd $HOME
git clone https://github.com/avagordon01/.config
cd .config
ln -rs bash/.* ~

distrobox assemble create
sudo flatpak install -y \
    com.borgbase.Vorta \
    org.jellyfin.JellyfinServer \
    org.kde.ktorrent \
    org.kde.konsole \
    org.mixxx.Mixxx \
    org.mozilla.firefox \
    io.github.plrigaux.sysd-manager \
    io.mpv.Mpv \
