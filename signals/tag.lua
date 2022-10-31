local awful = require("awful")
local tbl = require("lib.table")

tag.connect_signal("request::default_layouts", function()
    for l=#awful.layout.layouts, 1, -1 do
        awful.layout.remove_default_layout(awful.layout.layouts[l])
    end
    awful.layout.append_default_layouts(config.layouts)
end)

tag.emit_signal("request::default_layouts")

tag.connect_signal("property::selected", function(t)
    for _, widget in pairs(t.screen.widgets) do
        widget.visible = #t.screen.selected_tags == 0
    end
    local widgets = {}
    for _, st in ipairs(t.screen.selected_tags) do
        widgets = tbl.union(widgets, st.widgets)
    end
    for _, widget in ipairs(widgets) do
        widget.visible = true
    end
end)