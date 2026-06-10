#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  cups cups-pk-helper \
  system-config-printer
