export PATH=$PATH:~/.cargo/bin:~/.local/bin

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
