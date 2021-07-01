#!/bin/bash
set -x
export DISPLAY=:0

hdmi_status="$(cat /sys/class/drm/card0-HDMI-A-1/status)"

change-display() {
local user="$(w -h | grep tty | head -n1 | awk '{print $1}')"
    echo $user
    if [[ $hdmi_status == "disconnected" ]]; then
          [[ $(pgrep X) > 0 ]] && sudo su $user -c "xrandr --auto"
    else
          [[ $(pgrep X) > 0 ]] && sudo su $user -c "xrandr --output HDMI-1-1 --auto --above eDP-1-1"
    fi
}

change-display

exit 0
