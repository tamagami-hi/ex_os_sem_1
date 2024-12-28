#!/bin/bash

# Purpose of the script
echo "Displaying the list of users currently logged in:"

# Displaying the list of users
who

# Optionally, show a count of unique users logged in
echo ""
echo "Number of unique users currently logged in:"
who | awk '{print $1}' | sort | uniq | wc -l
