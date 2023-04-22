xinput set-prop "DELL0A5D:00 04F3:311C Touchpad" "libinput Accel Profile Enabled" 0, 1 &
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

{
    eval $(ssh-agent)
    ssh-add
} &
polybar -r main &
dunst &
sxhkd &
exec bspwm
