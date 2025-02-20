#!/bin/bash

# Week 2: Variables and Input/Output

# 1. Variables
name="Alice"
age=30
pi=3.14159

echo "Name: $name, Age: $age, Pi: $pi"

# 2. Command substitution
current_date=$(date)
echo "Current date: $current_date"

# 3. User input
read -p "Enter your name: " user_name
echo "Hello, $user_name!"

# 4. Output redirection
ls -l > file_list.txt
echo "File list saved to file_list.txt"

# 5. Piping
ls -l | grep readme.md

# Practice tasks:
# 1. Create a script that asks the user for their name and age, and then prints a message saying "Hello, [name]! You are [age] years old."
# 2. Create a script that redirects the output of the 'df -h' command to a file called 'disk_space.txt'.
# 3. Create a script that uses piping to count the number of lines in the 'readme.md' file.