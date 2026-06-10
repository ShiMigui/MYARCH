#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  noto-fonts noto-fonts-{cjk,emoji,extra} \
  otf-font-awesome \
  ttf-dejavu \
  ttf-jetbrains-mono ttf-jetbrains-mono-nerd \
  ttf-liberation
