# MYARCH — Arch Linux Dotfiles

Personal **Arch Linux** configuration with a **Wayland/Sway** environment, optimized for development.

## Components

| File/Folder | Tool | Description |
|---|---|---|
| `sway/` | Sway | Wayland compositor (i3-compatible) |
| `waybar/` | Waybar | Status bar |
| `swaync/` | SwayNC | Notification center |
| `alacritty.toml` | Alacritty | Terminal |
| `fuzzel.ini` | Fuzzel | Application launcher |
| `.zprofile` | zsh | Environment scripts |

## Installation

The installation scripts are in [`install/`](./install/), organized by area:

- `core.sh` — essential packages
- `development.sh` — development tools
- `apps.sh` — everyday applications
- `fonts.sh`, `graphics/`, `hardware/`, `services/`, `AUR/`, `greetd/`

```bash
./install/core.sh
./install/development.sh
```

## Usage

Copy the files to their respective configuration directories:

```bash
# example for sway
cp -r sway ~/.config/
```

> **Warning:** these dotfiles reflect my personal preferences — review them before use.
