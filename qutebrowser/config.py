import qutebrowser

config.load_autoconfig()

c.url.default_page = "https://duckduckgo.com"
c.url.start_pages = ["https://duckduckgo.com"]
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/?q={}"}

c.tabs.position = "left"
c.tabs.width = 40
c.tabs.show = "always"

c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "brightness-rgb"
