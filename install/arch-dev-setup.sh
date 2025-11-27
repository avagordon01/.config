#!/usr/bin/env bash

set -ex

# https://wiki.archlinux.org/title/Distrobox#Use_systemd_inside_the_container
sudo ln -s /run/host/run/systemd/system /run/systemd
sudo mkdir -p /run/dbus
sudo ln -s /run/host/run/dbus/system_bus_socket /run/dbus

sudo pacman -Syu --noconfirm \
    atool \
    bash-completion \
    binutils \
    bloaty \
    bpftrace \
    clang \
    cmake \
    code \
    curl \
    fd \
    fzf \
    gcc \
    gdb \
    git \
    git-lfs \
    git-filter-repo \
    github-cli \
    htop \
    jq \
    lftp \
    libqalculate \
    lsof \
    ltrace \
    meson \
    moreutils \
    neovim \
    nmap \
    numactl \
    openssh \
    patchelf \
    perf \
    pkgconf \
    postgresql \
    progress \
    python \
    rclone \
    ripgrep \
    rizin \
    rsync \
    ruff \
    rustup \
    rz-cutter \
    skopeo \
    socat \
    strace \
    sudo \
    tree \
    uv \
    wget \
    which \
    wireshark-cli \
    wl-clipboard \
    yt-dlp \

sudo pacman -S --noconfirm \
    debugedit \
    fakeroot \
    binutils \
    make \
    gcc \

wcurl https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
tar -xf yay.tar.gz
cd yay
makepkg -si --noconfirm

yay -S --noconfirm \
    code-features \
    code-marketplace \

for ext in \
    astral-sh.ty \
    charliermarsh.ruff \
    llvm-vs-code-extensions.vscode-clangd \
    ms-ossdata.vscode-pgsql \
    ms-python.debugpy \
    ms-python.python \
    ms-python.vscode-pylance \
    ms-toolsai.jupyter \
    ms-toolsai.jupyter-keymap \
    ms-toolsai.jupyter-renderers \
    ms-toolsai.vscode-jupyter-cell-tags \
    ms-toolsai.vscode-jupyter-slideshow \
    ms-vscode-remote.remote-ssh \
    ms-vscode-remote.remote-ssh-edit \
    ms-vscode.cpptools \
    ms-vscode.remote-explorer \
    rust-lang.rust-analyzer \
    urld.nofrills \
    vscodevim.vim \
; do
    code --install-extension $ext
done

distrobox-export --app code
