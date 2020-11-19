#!/usr/bin/env bash

set -euo pipefail

function run {
    "$@" &> /dev/null & disown %
}

run kodi
