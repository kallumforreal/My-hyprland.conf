#!/bin/bash

targetWS=$1

# Get current monitor name
currentMonitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true).name')

# Define your monitor names (adjust as needed)
MON1="DP-1"        # Should have workspaces 1–10
MON2="HDMI-A-1"    # Should have workspaces 11–20

# Determine actual workspace number based on monitor
if [[ "$currentMonitor" == "$MON1" ]]; then
    actualWS=$targetWS                # DP-1 → 1–10
elif [[ "$currentMonitor" == "$MON2" ]]; then
    actualWS=$((targetWS + 10))       # HDMI-A-1 → 11–20
else
    exit 0
fi

hyprctl dispatch workspace "$actualWS"

