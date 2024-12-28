#!/bin/bash

# Display all processes on a terminal, with the exception of group leaders
echo "All processes on a terminal, excluding group leaders:"
ps -a
echo

# Display scheduler data
echo "Scheduler data:"
ps -c
echo

# Display all processes with the exception of session leaders
echo "All processes, excluding session leaders:"
ps -d
echo

# Display all processes
echo "All processes:"
ps -e
echo

# Display a full listing
echo "Full listing of processes:"
ps -f
echo

# Display data for the list of group leader IDs (example with dummy IDs)
echo "Group leader IDs data (example with dummy IDs):"
ps -g 1,2,3
echo

# Display the process group ID and session ID
echo "Process group ID and session ID:"
ps -j
echo

# Display a long listing
echo "Long listing of processes:"
ps -l
echo

# Display data for the list of process IDs (example with dummy PIDs)
echo "Process IDs data (example with dummy PIDs):"
ps -p 1,2,3
echo

# Display data for the list of session leader IDs (example with dummy IDs)
echo "Session leader IDs data (example with dummy IDs):"
ps -s 1,2,3
echo

# Display data for the list of terminals (example with dummy terminal names)
echo "Terminals data (example with dummy terminal names):"
ps -t tty1,tty2
echo

# Display data for the list of usernames (example with dummy usernames)
echo "Usernames data (example with dummy usernames):"
ps -u root,daemon
echo
