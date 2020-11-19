#!/usr/bin/env bash

set -eu -o pipefail

(sleep 1; flexget execute) &
aria2c --enable-rpc --rpc-listen-all --seed-time=0
