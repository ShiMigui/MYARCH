#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  mesa-utils \
  vulkan-{radeon,tools}
