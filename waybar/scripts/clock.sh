#!/bin/bash
STATE_FILE=/tmp/waybar-clock-mode

if [[ "$1" == "--toggle" ]]; then
    if [[ -f "$STATE_FILE" ]]; then
        rm -f "$STATE_FILE"
    else
        touch "$STATE_FILE"
    fi
    pkill -SIGRTMIN+2 waybar
    exit 0
fi

if [[ -f "$STATE_FILE" ]]; then
    date '+%a %d/%m'
else
    date '+%H:%M'
fi
