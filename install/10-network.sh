#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  bluez bluez-utils \
  networkmanager network-manager-applet \
  wpa_supplicant
