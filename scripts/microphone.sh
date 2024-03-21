#!/usr/bin/env bash

set -euo pipefail

#there are multiple bluetooth audio protocols/codecs
#A2DP is the highest quality audio, but only audio output
#HSP/HFP codec mSBC seems to be okay autio quality and audio nput

pactl set-card-profile bluez_card.88_C9_E8_F2_FF_07 headset-head-unit
