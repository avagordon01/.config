#!/usr/bin/env bash

set -euo pipefail

sudo systemctl start avahi-daemon.service
sudo systemctl start org.cups.cupsd.service
$BROWSER localhost:631
