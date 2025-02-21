#!/bin/bash

# Week 4: Functions and Advanced Topics

# Functions are blocks of reusable code, essential for writing modular and maintainable scripts.
# Advanced topics include string manipulation, error handling, and basic text processing tools.

echo "---- Week 4: Functions and Advanced Topics ----"

# Defining and calling functions
# Function definition syntax: function_name() { ...code... } or function function_name { ...code... }

echo "\n# Function definition and calling:"
# Function to greet
greet() {
    echo "Hello, from function greet!"
}

greet # Calling the function

# Passing arguments to functions
# Arguments are accessed inside the function using $1, $2, etc.

echo "\n# Passing arguments to functions:"
greet_user() {
    local user_name="$1" # Local variable for user name
    echo "Hello, $user_name! Welcome to Week 4."
}

greet_user "BeginnerScript" # Calling function with argument

# Returning values from functions
# Functions can return an exit status (0 for success, non-zero for failure) or output text.

echo "\n# Returning values from functions (exit status):"
check_even() {
    local number="$1"
    if [ $((number % 2)) -eq 0 ]; then
        return 0 # Exit status 0 for even
    else
        return 1 # Exit status 1 for odd
    fi
}

check_even 10
if [ "$?" -eq 0 ]; then # $? captures the exit status of the last command
    echo "10 is even"
else
    echo "10 is odd"
fi

check_even 7
if [ "$?" -eq 0 ]; then
    echo "7 is even"
else
    echo "7 is odd"
fi

# Working with arrays
# Arrays to store multiple values in a single variable.

echo "\n# Working with arrays:"
# Declare an array
frameworks=("Bash" "Python" "JavaScript" "Go")

echo "List of frameworks:"
echo "${frameworks[@]}" # Access all elements

echo "First framework: ${frameworks[0]}" # Access first element

echo "Looping through array:"
for framework in "${frameworks[@]}"; do
    echo "Framework: $framework"
done

# String manipulation
# Various tools and techniques to manipulate strings.

echo "\n# String manipulation:"
string_var="  example string with spaces  "
echo "Original string: '$string_var'"

trimmed_string=$(echo "$string_var" | tr -d ' ') # Remove spaces
echo "Trimmed string (spaces removed): '$trimmed_string'"

substring="${string_var:3:7}" # Extract substring
echo "Substring (chars 3-9): '$substring'"

uppercase_string=$(echo "$string_var" | tr '[:lower:]' '[:upper:]') # To uppercase
echo "Uppercase string: '$uppercase_string'"

# Error handling
# Techniques to handle errors in scripts.

echo "\n# Error handling:"
# Using set -e to exit immediately if a command fails
set -e # Uncomment to enable exit on error

# Example command that might fail
# grep "nonexistent_pattern" nonexistent_file.txt

echo "This line will not be reached if set -e is enabled and grep fails."

# Debugging shell scripts
# Tips and techniques for debugging.
# - Use set -x to trace commands
# - Use echo statements to print variable values
# - Check exit statuses

echo "\n# Debugging tips:"
echo "# Use 'set -x' at the beginning of your script to trace commands."
echo "# Use 'echo' statements to print variable values during execution."
echo "# Check exit status of commands using '$?'."

# Introduction to awk and sed for text processing
# Basic introduction to awk and sed for text manipulation.

echo "\n# Introduction to awk and sed:"
data="name,age,city\nJohn,30,New York\nJane,25,London"
echo "Sample CSV data:\n$data"

echo "\n# Using awk to print names from CSV:"
echo "$data" | awk -F',' 'NR>1{print $1}' # Print first field (name)

echo "\n# Using sed to replace 'New York' with 'NYC':"
echo "$data" | sed 's/New York/NYC/g' # Substitute 'New York' with 'NYC'

# Creating simple command-line tools (comparison with Python's argparse module)
# Shell scripts can be used to create simple CLI tools.

echo "\n# Creating simple command-line tools:"
echo "# Example: Script to add two numbers (similar to argparse in Python)"
echo "# Example script would take two numbers as arguments and print their sum."
echo "# See week4_exercise4.sh for a practical example."


# Regular expressions (comparison with Python's re module)
echo "\n# Regular expressions (comparison with Python's re module)"
echo "# Basic regex examples in shell commands like grep, sed, awk."
echo "# Similar to Python's 're' module for pattern matching."
echo "# See week4_exercise_regex.sh for practical examples."


echo "\n---- Week 4 Exercises ----"
echo "\n# Exercise 1: Create a script that defines a function to calculate the area of a rectangle."
echo "# (Hint: Function should take length and width as arguments and return area). See week4_exercise1.sh"
echo "\n# Exercise 2: Create a script that uses an array to store a list of names and prints them in reverse order."
echo "# (Hint: Initialize an array, loop through it in reverse, and print elements). See week4_exercise2.sh"
echo "\n# Exercise 3: Create a script that uses awk to extract the second column from a CSV file."
echo "# (Hint: Use awk with -F',' to set field separator to comma and print $2). See week4_exercise3.sh"
echo "\n# Exercise 4: Create a simple command-line tool that takes two numbers as arguments and prints their sum (compare to a similar script in Python using argparse)."
echo "# (Hint: Access command-line arguments $1 and $2, perform addition, and print result). See week4_exercise4.sh"
echo "\n# Exercise 5: Create a script that demonstrates regular expressions for pattern matching (compare to Python's re module). See week4_exercise_regex.sh"


echo "\n# End of Week 4 Lesson"