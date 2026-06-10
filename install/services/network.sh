#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  bluez{,-utils} \
  network{manager,-manager-applet} \
  wpa_supplicant
