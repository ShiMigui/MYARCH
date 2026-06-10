#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  hyprgraphics \
  hypridle \
  hyprland \
  hyprland-{guiutils,protocols,qt-support} \
  hyprlang \
  hyprlock \
  hyprpaper \
  hyprpicker \
  hyprpolkitagent \
  hyprpwcenter \
  hyprtoolkit \
  hyprutils \
  hyprwayland-scanner \
  hyprwire
