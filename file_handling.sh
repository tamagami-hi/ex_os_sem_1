#!/bin/bash

# Print Working Directory
echo "Current Working Directory:"
pwd
echo

# Change Directory to home
echo "Changing directory to home:"
cd ~
pwd
echo

# List files and directories
echo "Listing files and directories:"
ls
echo

# List files and directories with detailed information
echo "Listing with details:"
ls -l
echo

# List all entries including hidden files
echo "Listing all entries including hidden files:"
ls -a
echo

# List in order of last modification time
echo "Listing in order of last modification time:"
ls -t
echo

# List directory files instead of contents
echo "Listing directory files instead of contents:"
ls -d
echo

# Create a temporary file for demonstration
touch temp_file.txt
echo "Temporary file created: temp_file.txt"

# Remove the file with confirmation
echo "Removing temp_file.txt with confirmation:"
rm -i temp_file.txt
echo

# Create files for moving demonstration
touch file1.txt
echo "File created: file1.txt"

# Move/rename the file
echo "Renaming file1.txt to renamed_file.txt:"
mv -i file1.txt renamed_file.txt
echo "File renamed: renamed_file.txt"
echo

# Create files for concatenation and comparison
echo "Hello, World!" > file1.txt
echo "Hello, Linux!" > file2.txt
echo "Files created: file1.txt and file2.txt"

# Concatenate files and display content
echo "Concatenating and displaying file1.txt and file2.txt:"
cat file1.txt file2.txt
echo

# Compare files
echo "Comparing file1.txt and file2.txt:"
cmp file1.txt file2.txt
echo

# Create a directory for demonstration
mkdir demo_dir
echo "Directory created: demo_dir"

# Copy a file to the new directory
echo "Copying file1.txt to demo_dir:"
cp file1.txt demo_dir/
echo "File copied to demo_dir"
echo

# Echo a string to a file
echo "Echoing a string to echo_file.txt:"
echo "This is an echo command test." > echo_file.txt
cat echo_file.txt
echo

# Create a directory with specific mode
echo "Creating a directory with specific mode:"
mkdir -m 755 mode_dir
echo "Directory created with mode 755: mode_dir"
echo

# Create files for paste demonstration
echo "Column1" > col1.txt
echo "Column2" > col2.txt
echo "Files created: col1.txt and col2.txt"

# Paste content of files
echo "Pasting content of col1.txt and col2.txt:"
paste col1.txt col2.txt
echo

# Remove a directory
echo "Removing the directory demo_dir:"
rmdir demo_dir
echo "Directory removed: demo_dir"
echo
