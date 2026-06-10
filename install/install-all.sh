#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"

find "$DIR" -name '*.sh' ! -name 'install-all.sh' | sort | while read -r script; do
  echo ""
  echo "=========================================="
  printf "  %s\n" "${script#$DIR/}"
  echo "=========================================="
  bash "$script"
done

echo "==> Done"
