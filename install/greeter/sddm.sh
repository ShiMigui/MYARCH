#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm sddm

if ! command -v yay &>/dev/null; then
    echo "yay not found. Install it first or manually install sddm-sugar-candy-git."
    exit 1
fi

yay -S --noconfirm sddm-sugar-candy-git

mkdir -p /etc/sddm.conf.d
cp sddm/theme.conf /usr/share/sddm/themes/sugar-candy/theme.conf

cat > /etc/sddm.conf.d/theme.conf << 'EOF'
[Theme]
Current=sugar-candy
EOF

systemctl enable sddm
