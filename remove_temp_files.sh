#!/bin/bash

# Displaying the purpose of the script
echo "This script deletes all temporary files."

# Prompt user for confirmation
read -p "Are you sure you want to delete temporary files? (y/n): " confirmation

if [[ $confirmation != "y" && $confirmation != "Y" ]]; then
    echo "Operation canceled."
    exit 1
fi

# Define directories to clean
TEMP_DIRS=("/tmp" "/var/tmp")

# Optionally, allow the user to specify a custom directory
read -p "Enter the directory to clean (press Enter to use default temp directories): " custom_dir

if [[ -n $custom_dir ]]; then
    TEMP_DIRS=("$custom_dir")
fi

# Delete temporary files from the directories
for dir in "${TEMP_DIRS[@]}"; do
    if [[ -d $dir ]]; then
        echo "Cleaning temporary files from $dir..."
        rm -rvf "$dir"/*
    else
        echo "Directory $dir does not exist. Skipping..."
    fi
done

echo "Temporary file cleanup completed."
