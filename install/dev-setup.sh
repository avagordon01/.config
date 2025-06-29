#!/usr/bin/env bash

set -ex


sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update || true

sudo dnf install --assumeyes \
    atool \
    bash-completion \
    binutils \
    bloaty \
    bpftrace \
    buildah \
    clang \
    cmake \
    code \
    curl \
    cutter-re \
    fd \
    fzf \
    gcc \
    gdb \
    gh \
    git \
    htop \
    jq \
    lftp \
    libqalculate \
    lsof \
    ltrace \
    meson \
    moreutils \
    ncdu \
    neovim \
    nmap \
    numactl \
    openssh \
    patchelf \
    perf \
    pkgconf \
    podman \
    postgresql \
    progress \
    python \
    rclone \
    ripgrep \
    rizin \
    rsync \
    ruff \
    rustup \
    skopeo \
    socat \
    strace \
    sudo \
    toolbox \
    tree \
    uv \
    wget \
    which \
    wireshark-cli \
    wl-clipboard \
    yt-dlp \

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
    vscodevim.vim
; do
    code --install-extension $ext
done
