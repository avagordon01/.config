sudo pacman -Syu base base-devel aria2 bash bash-completion feh firefox git gnome htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger stow tmux
cd $HOME/.dotfiles
stow */
dconf load / < dconf-settings.ini
