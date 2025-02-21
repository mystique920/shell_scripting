#!/bin/bash

# Week 2: Variables and Input/Output

# Variables: declaring, assigning, and using variables
# Variables are used to store data. In shell scripting, variables are typeless.
# Declaration and assignment are done in one step.

echo "---- Week 2: Variables and Input/Output ----"

# Declaring and assigning variables
variable_name="Hello World" # No spaces around '='
number_variable=123

echo "\n# Using variables:"
echo "Variable variable_name is: $variable_name"
echo "Variable number_variable is: $number_variable"

# Data types (strings, numbers)
# Shell variables are essentially strings, but can be interpreted as numbers in arithmetic operations.

echo "\n# Data types - all are treated as strings:"
string_var="text"
number_var="456" # Still a string
echo "String variable: $string_var"
echo "Number variable (as string): $number_var"

# Command substitution
# Capture the output of a command into a variable.

echo "\n# Command substitution:"
current_user=$(whoami) # Output of whoami command is assigned to current_user
current_date=$(date +%Y-%m-%d) # Formatted date
echo "Current user is: $current_user"
echo "Current date is: $current_date"

# User input (read command)
# Allows script to accept input from the user.

echo "\n# User input using read command:"
echo -n "Please enter your name: " # -n option to suppress newline
read user_name
echo "Hello, $user_name! Welcome to Week 2."

# Output redirection and piping
# Redirect output to files or pipe to other commands.

echo "\n# Output redirection and piping:"
echo "This is a sample output" > output.txt # Redirect output to output.txt
ls -l | grep output.txt # Pipe ls output to grep to filter for output.txt
cat output.txt # Display the content of output.txt

# printf command
# Formatted output, similar to printf in C or other languages.

echo "\n# printf command for formatted output:"
printf "Name: %s, Number: %d\n" "ScriptUser" 789

# Command-line arguments ($1, $2, etc.)
# Access arguments passed to the script when it's executed.

echo "\n# Command-line arguments:"
echo "Script name: $0" # $0 is the script name
echo "First argument: $1" # $1 is the first argument
echo "Second argument: $2" # $2 is the second argument
echo "Number of arguments: $#" # $# is the number of arguments
echo "All arguments: $*" # $* lists all arguments

# Example of using command-line arguments
if [ -n "$1" ]; then # Check if argument 1 is not null
    echo "Hello, $1! Running script: $0"
fi

# Environment variables (brief comparison with Python's os.environ)
# Variables set by the environment, accessible to scripts.
# Similar to Python's os.environ dictionary.

echo "\n# Environment variables:"
echo "Home directory: $HOME"
echo "User's shell: $SHELL"
# In Python, you'd use os.environ['HOME'] and os.environ['SHELL']

echo "\n---- Week 2 Exercises ----"
echo "\n# Exercise 1: Create a script that asks for user input and prints a personalized message."
echo "# (Hint: Use read command to get input and echo to print)"
echo "\n# Exercise 2: Create a script that redirects the output of a command to a file."
echo "# (Hint: Use > redirection. Try redirecting output of date or uptime command)"
echo "\n# Exercise 3: Create a script that takes a filename as a command-line argument and prints the first line of the file."
echo "# (Hint: Access command-line argument using $1. Use head -n 1 command to print first line)"

echo "\n# End of Week 2 Lesson"