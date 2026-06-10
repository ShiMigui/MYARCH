#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  noto-fonts{,-{cjk,emoji,extra}} \
  otf-font-awesome \
  ttf-{dejavu,liberation,jetbrains-mono{,-nerd}}
