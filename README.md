Pomodoro Timer
============

A simple Pomodoro timer script for focusing on work and taking breaks.

Usage
-----

1. Clone this repository and navigate to the script directory: `cd Pomodoro-Mac`
2. Make the script executable: `chmod +x pomodoro.sh`
3. Run the script: `./pomodoro.sh`

Features
--------

* Two functions for work and rest periods: `work` and `rest`
* A menu to choose between work and rest periods, and exit the script
* Uses `timer` command to set a timer for the chosen period
* Uses `terminal-notifier` command to display a notification when the period is up
* Plays a sound to signal the start of each period using `afplay` command
* Includes a help message that displays the available options and their corresponding numbers

Installation
------------

1. Clone this repository: `git clone https://github.com/muditbhargava66/Pomodoro-Mac.git`
2. Navigate to the script directory: `cd Pomodoro-Mac`
3. Make the script executable: `chmod +x pomodoro.sh`
4. Run the script: `./pomodoro.sh`

Configuration
-------------

1. Edit the script to change the image path in the `terminal-notifier` command
2. Edit the script to change the sound file path in the `afplay` command

Troubleshooting
---------------

1. Check that the `afplay` command is installed on your system. If not, install it using Homebrew: `brew install afplay`
2. Check that the image file path in the `terminal-notifier` command is correct
3. Check that the sound file path in the `afplay` command is correct

Acknowledgments
---------------

Thanks to Mudit Bhargava for creating this script!