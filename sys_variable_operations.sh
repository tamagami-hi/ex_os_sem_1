#!/bin/bash

# Display all environment variables.
echo "Displaying all environment variables."
# printenv

# Diaplay Specific environment variables.
echo "User's Home Directory (HOME): $HOME"
echo "Current Path (PATH): $PATH"
echo "Current Shell (SHELL): $SHELL"
echo "Current Working Directory (PWD): $PWD"
echo "Username of Logged in User (USER): $USER"
echo "Hostname of the System (HOSTNAME): $HOSTNAME"
echo "Display for X11 (DISPLAY): $DISPLAY"
echo "Preferred Text Editor (EDITOR): $EDITOR"
echo "History File (HISTFILE): $HISTFILE"
echo "Maximum History File (HISTFILESIZE): $HISTFILESIZE"
echo "========================================================================="
echo "Displaying all environment variables using the 'set' command:"
# set