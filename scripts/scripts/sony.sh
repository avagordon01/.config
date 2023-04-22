#!/usr/bin/env bash

set -euo pipefail

#sudo pacman -S bluez bluez-utils pipewire-pulse
#sudo systemctl enable bluetooth.service

#bluetoothctl power on
#bluetoothctl agent on
#bluetoothctl devices

bluetoothctl connect E0:0A:F6:E6:26:9E

#do these to be able to power on device via bluetooth
#bluetoothctl scan on
#bluetoothctl pair E0:0A:F6:E6:26:9E
#bluetoothctl trust E0:0A:F6:E6:26:9E
