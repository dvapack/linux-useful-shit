#!/bin/bash

# Get current scaling factor
SCALE=$(gsettings get org.gnome.desktop.interface text-scaling-factor)

# Set what to toggle to
if [ $SCALE == '1.20' ]; then
  SCALE_SWITCH=1.04
elif [ $SCALE == '1.04' ]; then
  SCALE_SWITCH=1.20
else [ $SCALE == '1.20' ]
    SCALE_SWITCH=1.04
fi

# Print and display notification
echo "Previous Font Scale: $SCALE, Switched to $SCALE_SWITCH"
notify-send "Previous Font Scale: $SCALE, Switched to $SCALE_SWITCH"

# Set new scaling factor
gsettings set org.gnome.desktop.interface text-scaling-factor $SCALE_SWITCH
