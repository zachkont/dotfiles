#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar compton # Telegram

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar -c $HOME/.dotfiles/polybar.config main &

#Telegram &

#sleep 5

#while pgrep -x compton >/dev/null; do sleep 1; done

#compton --config $HOME/.dotfiles/compton.config &
