#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  amd-ucode \
  power-profiles-daemon
