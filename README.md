# MYFCKARCH

Personal dotfiles for [Sway](https://swaywm.org) on Arch Linux.

## Structure

| Path | Description |
|---|---|
| `sway` | Sway compositor config |
| `waybar/` | Status bar config and styles |
| `swaync/` | Notification center config and styles |
| `alacritty.toml` | Alacritty terminal config |
| `fuzzel.ini` | Application launcher config |
| `.zprofile` | Zsh profile (XDG, Wayland, PATH) |
| `install/` | Bootstrap scripts to reproduce the setup |

### Theme

- **Primary:** `#9333ea` (purple)
- **Secondary:** `#06b6d4` (cyan)
- **Background:** `#000000`
- **Foreground:** `#e2e8f0`

### Install

```sh
./install/graphics/sway.sh
./install/services/audio.sh
./install/services/network.sh
./install/services/printing.sh
./install/hardware/amd.sh
./install/development.sh
./install/apps.sh
./install/fonts.sh
./install/greetd/install.sh
```

## License

MIT
