# MYFCKARCH

Personal dotfiles for [Hyprland](https://hyprland.org) on Arch Linux.

## Structure

| Path | Description |
|---|---|
| `hypr/` | Hyprland compositor config (Lua) + idle/lock/paper, screenshot script |
| `waybar/` | Status bar config and custom scripts |
| `swaync/` | Notification center config and style |
| `fuzzel/` | Application launcher config |
| `install/` | Bootstrap scripts to reproduce the setup |

### Theme

- **Primary:** `#9333ea` (purple)
- **Secondary:** `#06b6d4` (cyan)
- **Background:** `#000000`
- **Foreground:** `#e2e8f0`

### Install

```sh
./install/install-all.sh
```

Or run individual categories:

```sh
./install/graphics/hyprland.sh
./install/services/audio.sh
```

## License

MIT
