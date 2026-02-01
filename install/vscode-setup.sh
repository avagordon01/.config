#!/usr/bin/env bash

set -ex

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
