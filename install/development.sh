#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  fd github-cli go jq \
  lua{-jsregexp,51,rocks} \
  neovim nodejs {p,}npm \
  opencode jdk-openjdk openjdk-{doc,src} \
  python{,-{pip,pipx}} \
  ripgrep rustup tree{,-sitter-cli}

rustup install stable
