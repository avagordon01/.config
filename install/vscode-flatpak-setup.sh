#!/usr/bin/env bash

# atomic distro?
# - ostree for atomic update / rollback
# - flatpak for GUI apps
# - toolbx for CLI / development

# devcontainers problems:
# - vs code + podman + devcontainers doesn't work out-of-the-box (is a nightmare to setup) https://github.com/owtaylor/toolbox-vscode?tab=readme-ov-file#related-issues
# - devcontainers _only_ works on the official MS binaries https://github.com/getsolus/packages/issues/1878#issuecomment-2024552558
# - even with code-features and code-marketplace

# extensions (c++, rust) dont ship compilers / analyzers,
# compilers / analyzers are installed inside the container,
# so vscode has to be inside, or connect to the container

# flatpak vs code is official binary, without need for AUR code-features and code-marketplace hacks

set -ex

flatpak install -y \
    com.visualstudio.code//stable \
    com.visualstudio.code.tool.podman//stable

sudo systemctl --system enable --now podman.socket

sudo flatpak override \
    --env=FLATPAK_ENABLE_SDK_EXT=rust-stable,node16 \
    com.visualstudio.code
sudo flatpak override \
    --filesystem=xdg-run/podman:ro \
    --filesystem=/run/user/$UID/podman/podman.sock:ro \
    --filesystem=/tmp:rw \
    com.visualstudio.code

flatpak run --command=sh com.visualstudio.code <<EOF
ls /app/tools/podman/bin/podman-remote
podman-remote
EOF

flatpak run --command=bash com.visualstudio.code.tool.podman
