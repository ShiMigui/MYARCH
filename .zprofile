# ── XDG ──
export XDG_DATA_DIRS="/usr/share:/usr/local/share:$HOME/.local/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share${XDG_DATA_DIRS:+:$XDG_DATA_DIRS}"

# ── Wayland ──
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME="qt6ct"
export XCURSOR_SIZE="24"

# ── Default Applications ──
export EDITOR="nvim"
export BROWSER="chromium"
export TERMINAL="alacritty"
export FILE_MANAGER="dolphin"
export MENU="fuzzel"

# ── Font ──
export FONT="Electroharmonix"

# ── PATH ──
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
