#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm greetd

cp install/greetd/config.toml /etc/greetd/config.toml

systemctl enable greetd
