#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

xset m 1 0 &
xinput set-prop "DLL07A9:01 044E:120B" "libinput Tapping Enabled" 1
setxkbmap gb &
xsetroot -cursor_name left_ptr &
xss-lock -- physlock &
#feh --bg-scale /usr/share/wallpapers/deepin/Sunrise_by_Alexandre_Godreau.jpg &
#feh --bg-scale /usr/share/wallpapers/roverdover-hazy_mountain_sunset.jpg &
feh --no-fehbg --bg-scale "$(find /usr/share/wallpapers/spotlight -type f | sort -R | head -1)"
mpd &
autocutsel -fork -selection PRIMARY &
autocutsel -fork -selection CLIPBOARD &
{
    eval $(ssh-agent)
    ssh-add
} &
polybar main &
dunst &
sxhkd &
exec bspwm
