sudo pacman -Syu --needed base base-devel aria2 bash bash-completion bspwm feh firefox git htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger stow sxhkd tmux xsel xorg-xprop
cd $(dirname $0)
stow */
