local awful = require("awful")
local beautiful = require("beautiful")
local titlebar = require("widgets.titlebar")


local function set_opacity(c)
  if not config.client_opacity then return end
  if client.focus == c then
    c.opacity = config.client_opacity.focused
  elseif awful.screen.focused() == c.screen then
    c.opacity = config.client_opacity.screen
  else
    c.opacity = config.client_opacity.default
  end
end

client.connect_signal("focus", set_opacity)
client.connect_signal("unfocus", set_opacity)

client.connect_signal("mouse::enter", function(c)
    --c:activate { context = "mouse_enter", raise = false }
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

client.connect_signal("property::size", function (c)
    if beautiful.shape then
      c.shape = function(cr, width, height, size) beautiful.shape(c, cr, width, height, size) end
    end
 end)

client.connect_signal("manage", function (c)
  if beautiful.shape then
    c.shape = function(cr, width, height, size) beautiful.shape(c, cr, width, height, size) end
  end
  set_opacity(c)
end)

-- client.connect_signal("request::activate", function(c, e, t)
--     if t.raise or e == "autofocus.check_focus" then
--         c.first_tag.raised_client = c
--     end
-- end)

client.connect_signal("request::titlebars", titlebar)
