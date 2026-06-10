#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  base base-devel \
  efibootmgr fakeroot git \
  less lib32-fakeroot \
  linux linux-firmware \
  openssh sudo ufw \
  unzip wget zip \
  htop zsh
