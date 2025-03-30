#vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update

#rpmfusion nonfree
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


#sudo dnf group install kde-desktop-environment

#packages (desktop & GUI)
sudo dnf install \
    firefox \
    jellyfin-{server,web} \
    ktorrent \
    konsole \
    akmod-nvidia \
    mixxx \
    mpv \
    steam \

exit

#packages (dev tools)
sudo dnf install \
    atool \
    bash-completion \
    binutils \
    bpftrace \
    buildah \
    clang \
    cmake \
    python3-csvkit \
    code \
    curl \
    fd \
    gcc \
    gdb \
    git \
    htop \
    jq \
    lftp \
    libqalculate \
    lsof \
    meson \
    moreutils \
    ncdu \
    neovim \
    nmap \
    numactl \
    openssh \
    perf \
    pkgconf \
    podman \
    postgresql \
    progress \
    python \
    rclone \
    ripgrep \
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
    yt-dlp \
