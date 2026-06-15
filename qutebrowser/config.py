import qutebrowser

config.load_autoconfig()

c.url.default_page = "https://duckduckgo.com"
c.url.start_pages = ["https://duckduckgo.com"]
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}
c.url.open_base_url = True

c.tabs.position = "left"
c.tabs.width = 40
c.tabs.show = "multiple"
c.tabs.favicons.scale = 1.0
c.tabs.indicator.width = 2
c.tabs.title.format = "{index}"
c.tabs.title.format_pinned = "{index}"

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "brightness-rgb"

c.colors.tabs.even.bg = "#1a1a2e"
c.colors.tabs.odd.bg = "#1a1a2e"
c.colors.tabs.selected.even.bg = "#9333ea"
c.colors.tabs.selected.odd.bg = "#9333ea"
c.colors.tabs.pinned.even.bg = "#1a1a2e"
c.colors.tabs.pinned.odd.bg = "#1a1a2e"
c.colors.tabs.pinned.selected.even.bg = "#9333ea"
c.colors.tabs.pinned.selected.odd.bg = "#9333ea"

c.colors.completion.odd.bg = "#111111"
c.colors.completion.even.bg = "#111111"
c.colors.completion.fg = "#e2e8f0"
c.colors.completion.category.bg = "#1a1a2e"
c.colors.completion.category.fg = "#9333ea"
c.colors.completion.item.selected.bg = "#2a2a3e"
c.colors.completion.item.selected.fg = "#e2e8f0"
c.colors.completion.item.selected.border.top = "#9333ea"
c.colors.completion.item.selected.border.bottom = "#9333ea"
c.colors.completion.match.fg = "#06b6d4"

c.colors.statusbar.normal.bg = "#111111"
c.colors.statusbar.normal.fg = "#e2e8f0"
c.colors.statusbar.insert.bg = "#06b6d4"
c.colors.statusbar.insert.fg = "#000000"
c.colors.statusbar.command.bg = "#111111"
c.colors.statusbar.command.fg = "#e2e8f0"
c.colors.statusbar.url.fg = "#06b6d4"
c.colors.statusbar.url.error.fg = "#f38ba8"
c.colors.statusbar.url.hover.fg = "#9333ea"
c.colors.statusbar.url.success.https.fg = "#a6e3a1"

c.colors.tabs.bar.bg = "#111111"

c.fonts.default_size = "11pt"
c.fonts.default_family = "JetBrainsMono Nerd Font"

c.aliases = {"q": "quit", "w": "session-save", "wq": "quit --save"}

config.bind("Ctrl+Tab", "tab-next")
config.bind("Ctrl+Shift+Tab", "tab-prev")
config.bind("Alt+Left", "back")
config.bind("Alt+Right", "forward")
config.bind("Alt+Up", "history-prev")
config.bind("Alt+Down", "history-next")
config.bind("Ctrl+w", "tab-close")
config.bind("Ctrl+t", "tab-open")
config.bind("Ctrl+r", "reload")
config.bind("Ctrl+f", "cmd-text search ")
config.bind("Ctrl+l", "set-cmd-text -s :open ")
config.bind("Ctrl+d", "tab-close")
config.bind("Ctrl+n", "tab-next")
config.bind("Ctrl+p", "tab-prev")
config.bind("Ctrl+PageDown", "tab-next")
config.bind("Ctrl+PageUp", "tab-prev")
config.bind("Ctrl+Shift+w", "close")
config.bind("Ctrl+Shift+n", "open -w")
