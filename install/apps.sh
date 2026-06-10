#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  ark dolphin firefox kio-admin kitty \
  brightnessctl flatpak \
  spotify-launcher steam
