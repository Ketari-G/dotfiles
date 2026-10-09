#!/bin/bash

# copy all template files to their respective directories (could this be done via links?)
cp ~/.cache/wal/ketarisimple.theme.css ~/.config/vesktop/themes/
cp ~/.cache/wal/hyprcolors.lua ~/.config/hypr/colors.lua
cp ~/.cache/wal/yazicolors.toml ~/.config/yazi/theme.toml
cp ~/.cache/wal/steamcolors.css ~/.steam/root/millennium/themes/KetariSimple/
cp ~/.cache/wal/dunstcolors.conf ~/.config/dunst/dunstrc.d/
cp ~/.cache/wal/waybarstyle.css ~/.config/waybar/style.css

# remove colors from steam to not have to manually reset them
cp ~/.config/millennium/config_nocolor.json ~/.config/millennium/config.json

# reload whats needed
dunstctl reload

sleep 0.05s # fixes bug where yazi tries to set folders too early but also just in case

# get amount of open yazi windows
yazi_count=$(hyprctl clients | grep -c 'title: Yazi')

# first, quit out of every single one
for ((i=1;i<=yazi_count;i++)); do
	hyprctl dispatch 'hl.dsp.send_shortcut({ mods = "", key = "q", window = "title:Yazi.*" })'
done

# then reopen them at same location thanks to "y"
for ((i=1;i<=yazi_count;i++)); do
	sleep 0.05s # fixes random bug where it doesnt apply properly for some reason
	hyprctl dispatch 'hl.dsp.send_shortcut({ mods = "", key = "y", window = "title:ketari@ketari-linux.*" })'
	hyprctl dispatch 'hl.dsp.send_shortcut({ mods = "", key = "return", window = "title:ketari@ketari-linux.*" })'
done

dunstify "colors changed" --expire-time=2000

pkill waypaper