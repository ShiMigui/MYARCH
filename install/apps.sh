#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  alacritty ark dolphin chromium kio-admin \
  brightnessctl flatpak \
  spotify-launcher steam
