#!/bin/bash

# Function to perform addition
addition() {
    echo $(($1 + $2))
}

# Function to perform subtraction
subtraction() {
    echo $(($1 - $2))
}

# Function to perform multiplication
multiplication() {
    echo $(($1 * $2))
}

# Function to perform division
division() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero!"
    else
        echo $(($1 / $2))
    fi
}

# Main function
main() {
    # Take user input for operation and operands
    read -p "Enter operation (+, -, *, /): " operation
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

    case $operation in
        +) result=$(addition $num1 $num2) ;;
        -) result=$(subtraction $num1 $num2) ;;
        \*) result=$(multiplication $num1 $num2) ;;
        /) result=$(division $num1 $num2) ;;
        *) echo "Error: Invalid operation" && exit ;;
    esac

    echo "Result: $result"
}

# Call the main function
main

