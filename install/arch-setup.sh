#!/usr/bin/env bash

set -ex

nmcli device wifi list
nmcli device wifi connect kiera password eatsmice

#generated with archinstall -dry-run
archinstall --config-url https://raw.githubusercontent.com/avagordon01/.config/refs/heads/master/install/user_configuration.json

systemctl reboot

#user
systemctl enable systemd-homed.service
systemctl start systemd-homed.service
homectl create ava
