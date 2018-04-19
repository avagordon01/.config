sudo pacman -Syu --needed base base-devel aria2 bash bash-completion feh firefox git gnome htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger stow tmux xsel xorg-xprop
cd $(dirname $0)
stow */
dconf reset -f /
dconf load / < dconf.ini

(cd gnome-extensions/.local/share/gnome-shell/extensions/hidetopbar@mathieu.bidon.ca/ && make schemas)
