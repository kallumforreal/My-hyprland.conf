#!/bin/bash

# Bottom-left: Opens cmatrix
kitty --title kitty-bl -e cmatrix &
count=0
while ! hyprctl clients | grep -q "title: kitty-bl" && [ $count -lt 100 ]; do sleep 0.01; count=$((count+1)); done
hyprctl dispatch focuswindow title:kitty-bl
hyprctl dispatch layoutmsg preselect r

# Bottom-right: Opens Cava
kitty --title kitty-br -e cava &
count=0
while ! hyprctl clients | grep -q "title: kitty-br" && [ $count -lt 100 ]; do sleep 0.01; count=$((count+1)); done
hyprctl dispatch focuswindow title:kitty-br
hyprctl dispatch layoutmsg preselect u

# Top-right: Opens Clock in Terminal
kitty --title kitty-tr -e tty-clock -s -c &
count=0
while ! hyprctl clients | grep -q "title: kitty-tr" && [ $count -lt 100 ]; do sleep 0.01; count=$((count+1)); done
hyprctl dispatch focuswindow title:kitty-bl
hyprctl dispatch layoutmsg preselect u

# Top-left: Just opens the terminal (kitty) (last as requested)
kitty zsh -c "fastfetch; exec zsh" --title kitty-tl &
count=0
while ! hyprctl clients | grep -q "title: kitty-tl" && [ $count -lt 100 ]; do sleep 0.01; count=$((count+1)); done

# Optional: Focus the base terminal and move mouse to its top-left corner
hyprctl dispatch focuswindow title:kitty-tl
hyprctl dispatch movecursortocorner 0

exit 0  # Explicitly end the script
