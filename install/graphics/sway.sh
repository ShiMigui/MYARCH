#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  sway swaybg swaylock swayidle \
  polkit-kde-agent

./wm-tools.sh
