#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  hypr{idle,land{,-{guiutils,protocols,qt-support}},lock,paper,polkitagent,toolkit,utils} \
  xdg-desktop-portal-hyprland

./wm-tools.sh
