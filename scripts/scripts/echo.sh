#!/usr/bin/env bash

set -euo pipefail

#sudo pacman -S bluez bluez-utils pulseaudio-bluetooth

sudo systemctl start bluetooth.service
bluetoothctl power on
bluetoothctl devices
bluetoothctl connect 74:58:F3:1A:AF:CB
