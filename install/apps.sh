#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  alacritty ark dolphin firefox kio-admin \
  brightnessctl flatpak \
  spotify-launcher steam
