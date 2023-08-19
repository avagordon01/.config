#!/usr/bin/env bash

set -euo pipefail

sudo systemctl start avahi-daemon.service
sudo systemctl start cups.service
$BROWSER localhost:631
