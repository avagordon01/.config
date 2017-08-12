[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec xinit .config/xinit -- :1 -nolisten tcp vt$XDG_VTNR
