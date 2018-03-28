sudo pacman -Syu base base-devel aria2 bash bash-completion feh firefox git htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger tmux

if [ -f .config/dconf-dump ]; then
    dconf load / < .config/dconf-dump
else
    dconf dump / > .config/dconf-dump
fi
