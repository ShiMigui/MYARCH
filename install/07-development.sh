#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm \
  fd \
  github-cli \
  go \
  jdk-openjdk \
  jq \
  lua-jsregexp \
  lua51 \
  luarocks \
  neovim \
  nodejs \
  npm \
  opencode \
  openjdk-{doc,src} \
  pnpm \
  python-{pip,pipx} \
  ripgrep \
  rustup \
  tree \
  tree-sitter-cli
