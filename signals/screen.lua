local screens = require("config.screens")
local wallpaper = require("widgets.wallpaper")

screen.connect_signal("request::desktop_decoration", screens)

screen.connect_signal("request::wallpaper", wallpaper)