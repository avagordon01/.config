#!/usr/bin/env bash

set -ex

# distrobox create fedora
# distrobox enter fedora

dnf check-update || true

sudo dnf install --assumeyes ICAClient-*.rpm
distrobox-export --app /usr/share/applications/citrixapp.desktop 
distrobox-export --app /usr/share/applications/wfica.desktop
