#!/usr/bin/env bash
set -euo pipefail

if ! command -v yay &>/dev/null; then
  exit 1
fi

yay -S --needed --noconfirm \
  bibata-cursor-theme \
  catppuccin-gtk-theme-mocha \
  overskride \
  sddm-astronaut-theme \
  sddm-sugar-dark
