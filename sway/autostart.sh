#!/usr/bin/env bash
set -euo pipefail

pgrep -x waybar >/dev/null || waybar &
pgrep -x swaync >/dev/null || swaync &
pgrep -x nm-applet >/dev/null || nm-applet &
pgrep -x swaybg >/dev/null || swaybg -i /home/shimigui/Pictures/Wallpapers/wallpaper -m fill &
pgrep -x swayidle >/dev/null || swayidle -w \
    timeout 900 'swaylock -f -i /home/shimigui/Pictures/Wallpapers/lock' \
    timeout 960 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    timeout 1800 'systemctl suspend' \
    before-sleep 'swaylock -f -i /home/shimigui/Pictures/Wallpapers/lock' &
