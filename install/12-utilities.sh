#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  brightnessctl \
  flatpak \
  htop \
  zsh
