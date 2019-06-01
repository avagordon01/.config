xinput set-prop "DualPoint Stick" "libinput Accel Profile Enabled" 0, 1 &
xinput set-prop "DLL07A9:01 044E:120B" "libinput Tapping Enabled" 1 &
localectl set-x11-keymap gb &
xsetroot -cursor_name left_ptr &
xset r rate 250 30 &
xset -dmps &
xset s on &
xset s 600 &
xss-lock -- systemctl suspend &
feh --no-fehbg --bg-scale "$(find /usr/share/wallpapers/spotlight -type f | sort -R | head -1)" &
#mpd --no-daemon &
{
    eval $(ssh-agent)
    ssh-add
} &
polybar -r main &
dunst &
sxhkd &
exec bspwm
