xinput set-prop "DELL0A5D:00 04F3:311C Touchpad" "libinput Accel Profile Enabled" 0, 2 &
xinput set-prop "DELL0A5D:00 04F3:311C Touchpad" "libinput Accel Speed" 1 &
xinput set-prop "DELL0A5D:00 04F3:311C Touchpad" "libinput Tapping Enabled" 1 &
xinput set-prop "DELL0A5D:00 04F3:311C Touchpad" "libinput Disable While Typing Enabled" 0 &
localectl set-x11-keymap gb &
xset r rate 200 30 &
xrdb -merge ~/.Xresources
xrandr --dpi 192
xrandr --output DP1 --same-as eDP1
xrandr --output DP1 --scale 1x1
xsetroot -cursor_name left_ptr &
#xss-lock -- systemctl suspend &
#xset s 600 600

{
    eval $(ssh-agent)
    ssh-add
} &
#gnome-keyring-daemon &
polybar -r main &
dunst &
sxhkd &
firefox &
exec bspwm
