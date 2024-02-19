#!/bin/bash

# Define functions for work and rest periods
function work() {
  timer 45m && terminal-notifier -message 'Pomodoro' -title 'Work Timer is up! Take a Break 😊' -appIcon '~/Pictures/work.png' -sound Crystal
  # Play a sound to signal the start of the work period
  afplay -q /System/Library/Audio/UISounds/glass.caf
}

function rest() {
  timer 10m && terminal-notifier -message 'Pomodoro' -title 'Break is over! Get back to work 😬' -appIcon '~/Pictures/rest.png' -sound Crystal
  # Play a sound to signal the start of the rest period
  afplay -q /System/Library/Audio/UISounds/bell.caf
}

# Define a menu to choose between work and rest periods
echo "Choose a option:"
echo "1. Work"
echo "2. Rest"
echo "3. Exit"

read -p "Enter a number: " choice

case $choice in
  1) work ;;
  2) rest ;;
  3) exit 0 ;;
  *) echo "Invalid input. Try again." ;;
esac

# If the user selects work, call the work function
if [ $choice -eq 1 ]; then
  work
fi

# If the user selects rest, call the rest function
if [ $choice -eq 2 ]; then
  rest
fi

# If the user selects exit, exit the script
if [ $choice -eq 3 ]; then
  exit 0
fi
