#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status
set -x  # all executed commands are printed to the terminal.

export PYTHONUNBUFFERED=0

case "$1" in
    run-app)
        sleep 0.1m
        python run.py &
        python main.py
        ;;
esac
