#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"

run() {
  local script="$1"
  echo ""
  echo "=========================================="
  printf "  %s\n" "${script#$DIR/}"
  echo "=========================================="
  bash "$script"
}

run "$DIR/core.sh"
run "$DIR/bootstrap.sh"
run "$DIR/graphics/wayland.sh"
run "$DIR/graphics/hyprland.sh"
run "$DIR/greeter/sddm.sh"
run "$DIR/hardware/amd.sh"
run "$DIR/hardware/gpu.sh"
run "$DIR/services/audio.sh"
run "$DIR/services/network.sh"
run "$DIR/services/printing.sh"
run "$DIR/fonts.sh"
run "$DIR/development.sh"
run "$DIR/apps.sh"

echo ""
echo "==> Done"
