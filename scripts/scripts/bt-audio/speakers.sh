#!/usr/bin/env bash

set -euo pipefail

#sudo pacman -S bluez bluez-utils pipewire-pulse
#sudo systemctl enable bluetooth.service

#bluetoothctl power on
#bluetoothctl agent on
#bluetoothctl devices

addr=E0:0A:F6:E6:26:9E
bluetoothctl connect $addr

#do these to be able to power on device via bluetooth
#bluetoothctl scan on
#bluetoothctl pair $addr
#bluetoothctl trust $addr
