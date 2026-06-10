#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  cups{,-pk-helper} \
  system-config-printer
