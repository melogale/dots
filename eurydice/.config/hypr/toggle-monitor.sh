#!/bin/bash

MONITOR="HDMI-A-1"
PREFERRED_LOCATION="1920x0"
SCALE="1.5"

enable_monitor() {
  hyprctl keyword monitor "$MONITOR,preferred,$PREFERRED_LOCATION,$SCALE"
  echo "on"
}

disable_monitor() {
  hyprctl keyword monitor "$MONITOR,disable"
  echo "off"
}

if xrandr | grep -q "$MONITOR connected"; then
  disable_monitor
else
  enable_monitor
fi
