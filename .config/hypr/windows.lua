-- Set programs that you use
local terminal    = "kitty"
local fileManager = "kitty -e bash -ic 'y; exec bash'"
local menu = "rofi -show drun -no-sort -drun-match-fields name -drun-display-format '{name}'"

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Fullscreen -> Opacity=100%
hl.window_rule({
    match = { fullscreen = true },
    opacity = "1.0 override",
})

-- Wiremix to correct place & cursor back to prev pos
hl.on("window.title", function(w)
    if w ~= nil and w.title == "wiremix" then
        local oldc = hl.get_cursor_pos()
        hl.dispatch(hl.dsp.window.float({ action = "set" }))
        hl.dispatch(hl.dsp.window.move({ workspace = "1" }))
        hl.dispatch(hl.dsp.window.resize({ x = "250", y = "375", action = "set" }))
        hl.dispatch(hl.dsp.window.move({ x = "1665", y = "700", action = "set" }))
        hl.dispatch(hl.dsp.cursor.move({ x = oldc.x, y = oldc.y }))
    end
end)

hl.window_rule({
    match = { initial_class = "steam" },
    float = true,
})

hl.window_rule({
    match = { title = "Waypaper" },
    float = true,
})

hl.window_rule({
    match = { title = "Endfield", initial_title = "Endfield" },
    float = false,
})

hl.window_rule({
    match = { title = "GitHub Desktop" },
    float = true,
})

hl.window_rule({
    match = { class = "org.nomacs.ImageLounge" },
    float = true,
})