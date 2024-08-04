#!/usr/bin/env bash

set -ex

rsync \
    -aHv \
    --stats \
    --info=progress2 \
    zh4208@zh4208.rsync.net:backup \
    /
