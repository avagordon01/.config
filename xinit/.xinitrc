touchpad="DELL0A5D:00 04F3:311C Touchpad"
xinput set-prop "${touchpad}" "libinput Accel Profile Enabled" 0, 1 &
xinput set-prop "${touchpad}" "libinput Accel Speed" 1 &
xinput set-prop "${touchpad}" "libinput Tapping Enabled" 1 &
xinput set-prop "${touchpad}" "libinput Disable While Typing Enabled" 0 &
xset r rate 200 30 &

export DESKTOP_SESSION=plasma
exec startplasma-x11
