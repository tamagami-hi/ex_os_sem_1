#!/bin/bash

echo "Processing /etc/passwd using sed"
echo "Choose an operation:"
echo "1. Display usernames (first field)"
echo "2. Replace shell paths (e.g., /bin/bash -> /usr/bin/bash)"
echo "3. Display lines for a specific shell (e.g., /bin/bash)"
echo "4. Replace a username"
echo "5. Exit"
read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "Usernames from /etc/passwd:"
        sed 's/:.*//' /etc/passwd
        ;;
    2)
        read -p "Enter the old shell path to replace (e.g., /bin/bash): " old_shell
        read -p "Enter the new shell path (e.g., /usr/bin/bash): " new_shell
        echo "Replacing shell paths in /etc/passwd:"
        sed "s|$old_shell|$new_shell|g" /etc/passwd
        ;;
    3)
        read -p "Enter the shell path to filter (e.g., /bin/bash): " shell
        echo "Lines containing the shell $shell:"
        sed -n "/$shell/p" /etc/passwd
        ;;
    4)
        read -p "Enter the username to replace: " old_user
        read -p "Enter the new username: " new_user
        echo "Replacing username $old_user with $new_user in /etc/passwd:"
        sed "s/^$old_user:/$new_user:/" /etc/passwd
        ;;
    5)
        echo "Exiting the script. Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
esac
