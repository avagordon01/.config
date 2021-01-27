xinput set-prop "DualPoint Stick" "libinput Accel Profile Enabled" 0, 1 &
xinput set-prop "DLL07A9:01 044E:120B" "libinput Tapping Enabled" 1 &
xinput set-prop "DLL07A9:01 044E:120B" "libinput Disable While Typing Enabled" 0 &
localectl set-x11-keymap gb &
xsetroot -cursor_name left_ptr &
xset r rate 200 30 &
xset -dmps &
xset s on &
xset s 3600 &
#xss-lock -- systemctl suspend &
feh --no-fehbg --bg-fill "$(find /usr/share/wallpapers/mojave -type f | sort -R | head -1)" &
#mpd --no-daemon &
{
    eval $(ssh-agent)
    ssh-add
} &
polybar -r main &
dunst &
sxhkd &
#firefox &
alacritty &
exec bspwm
