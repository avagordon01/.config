sudo pacman -Syu base base-devel aria2 bash bash-completion feh firefox git htop imagemagick jq mlocate mpv neovim netpbm openssh pwgen ranger stow tmux

cd $HOME/.dotfiles

stow bash gdb htop nvim ranger tmux weechat xdg

dconf load / < dconf-settings.ini
