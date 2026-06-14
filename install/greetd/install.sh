#!/usr/bin/env bash
set -euo pipefail

pacman -S --needed --noconfirm greetd greetd-tuigreet

cp install/greetd/config.toml /etc/greetd/config.toml
mkdir -p /var/cache/tuigreet
echo -n "shimigui" > /var/cache/tuigreet/lastuser
chown -R greeter:greeter /var/cache/tuigreet

cat > /etc/kernel/cmdline << 'EOF'
root=PARTUUID=09bb9afb-9acb-4208-b776-c231ff30b191 rw rootfstype=ext4 quiet loglevel=3 systemd.show_status=auto udev.log_level=3
EOF
mkinitcpio -p linux

systemctl enable greetd
