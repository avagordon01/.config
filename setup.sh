sudo pacman -Syu --needed base base-devel aria2 bash bash-completion feh firefox git gnome htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger stow tmux
cd $(dirname $0)
stow */
dconf load / < dconf-settings.ini
