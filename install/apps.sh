#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  alacritty ark dolphin kio-admin qutebrowser \
  brightnessctl flatpak \
  spotify-launcher steam
