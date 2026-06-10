#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  grim slurp swappy \
  wl-clipboard \
  xdg-desktop-portal-gtk
