#!/bin/bash

while true; do
    clear
    echo "Choose an operation:"
    echo "1. Calculate string length"
    echo "2. Extract Substring"
    echo "3. Concatenate with another string"
    echo "4. Check if contains a substring"
    echo "5. Exit"
    read -p "Enter your choice (1-5): " choice
    
    echo ""

    case $choice in
        1)
            read -p "Enter the string: " str
            echo "Length of the string is: ${#str}"
            ;;
        2)
            read -p "Enter the string: " str
            read -p "Enter the starting position (0-based index): " start
            read -p "Enter the length of substring: " length
            echo "Extracted substring is: ${str:$start:$length}"
            ;;
        3)
            read -p "Enter the first string: " str1
            read -p "Enter the second string: " str2
            echo "Concatenated string is: $str1 $str2"
            ;;
        4)
            read -p "Enter the string: " str
            read -p "Enter the substring to check: " substr
            if [[ $str == *"$substr"* ]]; then
                echo "The substring '$substr' is present in the string."
            else
                echo "The substring '$substr' is not present in the string."
            fi
            ;;
        5)
            echo "Exiting the script. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
    read -n 1 -p "Press any key to continue..!"
    echo ""
done
