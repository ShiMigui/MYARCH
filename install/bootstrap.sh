#!/usr/bin/env bash
set -euo pipefail

if command -v yay &>/dev/null; then
  exit 0
fi

cd /tmp
git clone --depth=1 https://aur.archlinux.org/yay.git
cd yay
makepkg -si --needed --noconfirm
cd ..
rm -rf yay
