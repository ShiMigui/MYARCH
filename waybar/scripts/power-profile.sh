#!/bin/bash
if [[ "$1" == "--toggle" ]]; then
    mapfile -t profiles < <(powerprofilesctl list | grep -oP '^\s{0,2}\*? ?\K[\w-]+(?=:)')
    current=$(powerprofilesctl get)
    next=""
    for i in "${!profiles[@]}"; do
        if [[ "${profiles[$i]}" == "$current" ]]; then
            next="${profiles[$(( (i+1) % ${#profiles[@]} ))]}"
            break
        fi
    done
    if [[ -n "$next" ]]; then
        powerprofilesctl set "$next"
    fi
    pkill -SIGRTMIN+3 waybar 2>/dev/null
    exit 0
fi

current=$(powerprofilesctl get)
case "$current" in
    "power-saver") echo "";;
    "balanced")    echo "";;
    "performance") echo "";;
    *)             echo "$current";;
esac
