export PATH=$PATH:~/.cargo/bin:~/.local/bin

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
if [ -e /home/ava/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ava/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
