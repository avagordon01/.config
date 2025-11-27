#!/usr/bin/env bash

set -ex

dnf check-update || true

sudo dnf install --assumeyes ICAClient-*.rpm
distrobox-export --app /usr/share/applications/citrixapp.desktop 
distrobox-export --app /usr/share/applications/wfica.desktop
