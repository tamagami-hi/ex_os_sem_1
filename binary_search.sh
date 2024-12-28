#!/bin/bash

# Function to sort an array using bubble sort
sort_array() {
    local arr=("$@")
    local n=${#arr[@]}
    for ((i = 0; i < n; i++)); do
        for ((j = 0; j < n - i - 1; j++)); do
            if ((arr[j] > arr[j + 1])); then
                # Swap elements
                temp=${arr[j]}
                arr[j]=${arr[j + 1]}
                arr[j + 1]=$temp
            fi
        done
    done
    echo "${arr[@]}"
}

# Function for binary search
binary_search() {
    local arr=("$@")
    local low=0
    local high=$((${#arr[@]} - 2)) # Exclude the target element
    local target=${arr[-1]} # Last element is the target

    while ((low <= high)); do
        local mid=$(((low + high) / 2))
        if ((arr[mid] == target)); then
            echo "Element $target found at index $mid"
            return
        elif ((arr[mid] < target)); then
            low=$((mid + 1))
        else
            high=$((mid - 1))
        fi
    done
    echo "Element $target not found in the array."
}

# Main script
read -p "Enter the array elements (space-separated): " -a array
read -p "Enter the element to search: " target

# Sort the array
echo "Sorting the array..."
sorted_array=($(sort_array "${array[@]}"))
echo "Sorted array: ${sorted_array[@]}"

# Perform binary search
binary_search "${sorted_array[@]}" "$target"
