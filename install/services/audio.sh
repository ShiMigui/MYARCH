#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  gst-plugin-pipewire libpulse pavucontrol \
  pipewire{,-{alsa,jack,pulse}} \
  sof-firmware wireplumber
