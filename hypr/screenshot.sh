#!/usr/bin/env bash

SCREENSHOT_DIRECTORY="${SCREENSHOT_DIRECTORY:-$HOME/Pictures/Screenshots}"

mkdir -p "$SCREENSHOT_DIRECTORY"

FILE="$SCREENSHOT_DIRECTORY/$(date +%Y-%m-%d_%H-%M-%S).png"
export FILE

echo "$1" >>/tmp/screenshot.log
echo "$FILE" >>/tmp/screenshot.log

sh -c "$1"

if [ -f "$FILE" ]; then
   wl-copy <"$FILE"
   notify-send "Screenshot" "$(basename "$FILE")"
else
   notify-send "Screenshot Failed" "$FILE"
fi
