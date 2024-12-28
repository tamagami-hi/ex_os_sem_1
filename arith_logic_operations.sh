#!/bin/bash

# Function to perform arithmetic operations
arithmetic_operations() {
  echo ""
  echo "Choose an arithmetic operation:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Modulus"
  echo "6. Exit"

  read -p "Enter your choice (1-6): " choice

  if [ "$choice" -ge 1 ] && [ "$choice" -le 5 ]; then
    echo "Enter two numbers:"
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
  fi

  case $choice in
    1) echo "Result: $((num1 + num2))";;
    2) echo "Result: $((num1 - num2))";;
    3) echo "Result: $((num1 * num2))";;
    4) 
       if [ $num2 -ne 0 ]; then
         echo "Result: $((num1 / num2))"
       else
         echo "Error: Division by zero!"!
       fi;;
    5) echo "Result: $((num1 % num2))";;
    6) return;;
    *) echo "Invalid choice!";;
  esac
  read -n 1 -p "Press any key to Continue..."
}

# Function to perform logical operations
logical_operations() {
  echo ""
  echo "Choose a logical operation:"
  echo "1. AND"
  echo "2. OR"
  echo "3. NOT (on a single number)"
  echo "4. Exit"

  read -p "Enter your choice (1-4): " choice

  if [ "$choice" -ge 1 ] && [ "$choice" -le 3 ]; then
    if [ "$choice" -eq 3 ]; then
      # Input validation for NOT operation
      while true; do
        read -p "Enter a number (0 or 1): " num1
        if [[ "$num1" -eq 0 || "$num1" -eq 1 ]]; then
          break
        else
          echo "Invalid input! Please enter either 0 or 1."
        fi
      done
    else
      echo "Enter two numbers (0 or 1):"
      # Input validation for AND/OR operations
      while true; do
        read -p "Enter the first number: " num1
        if [[ "$num1" -eq 0 || "$num1" -eq 1 ]]; then
          break
        else
          echo "Invalid input! Please enter either 0 or 1."
        fi
      done
      while true; do
        read -p "Enter the second number: " num2
        if [[ "$num2" -eq 0 || "$num2" -eq 1 ]]; then
          break
        else
          echo "Invalid input! Please enter either 0 or 1."
        fi
      done
    fi
  fi

  case $choice in
    1) 
       if [ $num1 -eq 1 ] && [ $num2 -eq 1 ]; then
         echo "Result: 1"
       else
         echo "Result: 0"
       fi;;
    2) 
       if [ $num1 -eq 1 ] || [ $num2 -eq 1 ]; then
         echo "Result: 1"
       else
         echo "Result: 0"
       fi;;
    3)
       if [ $num1 -eq 0 ]; then
         echo "Result: 1"
       else
         echo "Result: 0"
       fi;;
    4) return;;
    *) echo "Invalid choice!";;
  esac
  read -n 1 -p "Press any key to Continue..."
}

# Main script
while true; do
  clear
  echo "Choose an operation type:"
  echo "1. Arithmetic Operations"
  echo "2. Logical Operations"
  echo "3. Exit"
  read -p "Enter your choice (1-3): " operation

  case $operation in
    1) arithmetic_operations;;
    2) logical_operations;;
    3) 
       echo "Exiting... Goodbye!"
       break;;
    *) echo "Invalid choice! Please try again.";;
  esac
  echo ""
done
