#!/usr/bin/env bash

pacupgrade
pacsync

cd $HOME
git clone https://github.com/avagordon01/.config
cd .config
ln -rs bash/.* ~

distrobox assemble create
# flatpak list --app --columns application
sudo flatpak install -y \
    com.borgbase.Vorta \
    com.mojang.Minecraft \
    com.valvesoftware.Steam \
    io.mpv.Mpv \
    org.jellyfin.JellyfinServer \
    org.kde.konsole \
    org.kde.ktorrent \
    org.mixxx.Mixxx \
    org.mozilla.firefox \
    org.nicotine_plus.Nicotine \

./vscode-setup.sh
