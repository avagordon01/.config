#!/usr/bin/env bash

set -e

xrandr --output DP1 --off
xrandr --auto

pulseaudio -k
pactl set-card-profile 0 "output:analog-stereo+input:analog-stereo"

bspc wm -r

#sudo systemctl restart NetworkManager.service

#pkill polybar
#polybar -r main &
#disown %

notify-send DUNST_COMMAND_RESUME

if [ "$1" == "--present" ]; then
    pactl set-card-profile 0 "output:hdmi-stereo+input:analog-stereo"
    notify-send DUNST_COMMAND_PAUSE
fi
