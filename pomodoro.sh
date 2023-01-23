#!/bin/bash

function work() {
    timer 45m && terminal-notifier -message 'Pomodoro'\
            -title 'Work Timer is up! Take a Break 😊'\
            -appIcon '~/Pictures/<image>.png'\
            -sound Crystal
}

function rest() {
    timer 10m && terminal-notifier -message 'Pomodoro'\
            -title 'Break is over! Get back to work 😬'\
            -appIcon '~/Pictures/<image>.png'\
            -sound Crystal
}

case "$1" in
    work)
        work
        ;;
    rest)
        rest
        ;;
    *)
        echo "Usage: $0 {work|rest}"
        exit 1
esac
