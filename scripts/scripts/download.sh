#!/usr/bin/env bash

set -eu -o pipefail

flexget
aria2c --dir=/opt/download/ --input-file=/opt/download/list.txt --deferred-input true --seed-time=0
