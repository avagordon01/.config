xset m 1 0 &
xset s off &
xset -dpms &
xinput set-prop "DLL07A9:01 044E:120B" "libinput Tapping Enabled" 1
setxkbmap gb &
xsetroot -cursor_name left_ptr &
#feh --bg-scale /usr/share/wallpapers/deepin/Sunrise_by_Alexandre_Godreau.jpg &
feh --bg-scale /usr/share/wallpapers/roverdover-hazy_mountain_sunset.jpg &
autocutsel -fork &
autocutsel -fork -selection PRIMARY &
polybar main &
dunst &
sxhkd &
exec bspwm
