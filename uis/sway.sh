#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  sway swaybg swaylock swayidle \
  chromium \
  polkit-kde-agent \
  xdg-desktop-portal-wlr
