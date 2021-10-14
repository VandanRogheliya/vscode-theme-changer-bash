#!/bin/bash

# Light theme
light_theme_wallpaper="/home/vandan/Pictures/Wallpapers/klttow3qk2e41.jpg"
light_theme_vscode="Default Light+"

# Dark theme
dark_theme_wallpaper="/home/vandan/Pictures/Wallpapers/ccia9mh2m7k61.jpg"
dark_theme_vscode="GitHub Dark Default"

current_hour=$(date +"%-H")

# 8 - 18 -> light theme
# else dark

light_theme_start_hour=8
light_theme_end_hour=18


if [[ $current_hour -ge $light_theme_start_hour ]] && [[ $current_hour -lt $light_theme_end_hour ]]
then
	wallpaper=$light_theme_wallpaper
	vscode_theme=$light_theme_vscode
else
	wallpaper=$dark_theme_wallpaper
	vscode_theme=$dark_theme_vscode
fi

# Change wallpaper.
gsettings set org.gnome.desktop.background picture-uri $wallpaper
# Change vscode theme
sed -i -e "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$vscode_theme\"/g" "$HOME/.config/Code/User/settings.json"
