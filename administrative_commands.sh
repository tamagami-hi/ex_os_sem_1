# Show all logged on users
users

# List current user and groups
groups

# Change ownership of files
chown bozo *.txt

# Change group ownership of files recursively
chgrp --recursive dunderheads *.data

# Add a user account
useradd newuser

# Delete a user account
userdel newuser

# Modify a user account
usermod -L newuser

# Modify a group
groupmod -n newgroup oldgroup

# Check uptime version
uptime -V

# Display users currently logged in and their processes
w

# Show user name, date, time, and host information
who

# View a file
less install.log

# Copy file from source to destination
cp -i fileA fileB

# List files in long format sorted by last modified time
ls -ltr

# Concatenate and display files
cat fileA fileB

# Change directory
cd /fileA

# Print working directory
pwd

# Sort lines of text files in ascending order
sort fileA.txt

# Sort lines of text files in descending order
sort -r fileA.txt

# Login into remote host
ssh narad@192.168.50.2

# Check version of SSH
ssh -V

# Show free, total, and swap memory information
free
