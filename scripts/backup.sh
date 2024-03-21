#!/usr/bin/env bash

set -ex

rsync \
    -aH \
    --stats \
    --delete \
    --exclude='/dev/*' \
    --exclude='/proc/*' \
    --exclude='/sys/*' \
    --exclude='/tmp/*' \
    --exclude='/run/*' \
    --exclude='/mnt/*' \
    --exclude='/media/*' \
    --exclude='swapfile' \
    --exclude='lost+found' \
    --exclude='.cache' \
    --exclude='Downloads' \
    --exclude='/opt/download/*' \
    --exclude='/home/ava/repos/art/data/*' \
    --exclude='/home/ava/.local/share/Steam/steamapps/common' \
    --exclude='.VirtualBoxVMs' \
    --exclude='.ecryptfs' \
    / \
    zh4208@zh4208.rsync.net:backup
