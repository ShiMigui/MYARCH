#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  fuzzel kvantum nwg-look \
  qt6-virtualkeyboard qt6ct \
  swaync waybar
