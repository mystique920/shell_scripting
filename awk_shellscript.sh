#!/bin/bash

# awk_shellscript.sh

# This script provides examples of using awk in shell scripts.

# Task 1: Print the first field of each line in a file
# Command: awk '{print $1}' data.txt
echo "Task 1: Print the first field of each line in data.txt"
echo "Running: awk '{print \$1}' data.txt"
awk '{print $1}' data.txt
echo "--------------------"

# Task 2: Print lines where the second field is greater than 25
# Command: awk '$2 > 25 {print}' data.txt
echo "Task 2: Print lines where the second field is greater than 25 in data.txt"
echo "Running: awk '\$2 > 25 {print}' data.txt"
awk '$2 > 25 {print}' data.txt
echo "--------------------"

# Task 3: Print the sum of the second field
# Command: awk '{sum += $2} END {print "Sum:", sum}' data.txt
echo "Task 3: Print the sum of the second field in data.txt"
echo "Running: awk '{sum += \$2} END {print \"Sum:\", sum}' data.txt"
awk '{sum += $2} END {print "Sum:", sum}' data.txt
echo "--------------------"

# Task 4: Use a different field separator (comma)
# Create a comma-separated file for this task
echo "Name,Age,City" > comma_data.txt
echo "John,30,New York" >> comma_data.txt
echo "Jane,25,London" >> comma_data.txt
echo "Peter,35,Paris" >> comma_data.txt
echo "Task 4: Print the first and third fields from comma-separated data"
echo "Running: awk -F',' '{print \$1, \$3}' comma_data.txt"
awk -F',' '{print $1, $3}' comma_data.txt
echo "--------------------"

# Tasks for you to try:

echo "Your Tasks:"
echo "=========="

echo "1. Create a file named 'student_data.txt' with the following format:"
echo "   Name Grade Major"
echo "   Alice A Math"
echo "   Bob B Physics"
echo "   Charlie C Chemistry"
echo "   Use awk to print only the names and majors of the students."
echo "   (Hint: awk '{print \$1, \$3}' student_data.txt)"
echo "   Create the student_data.txt file and try the command."
echo "--------------------"

echo "2. Using the 'student_data.txt' file, print the lines where the grade is 'A'."
echo "   (Hint: awk '\$2 == \"A\" {print}' student_data.txt)"
echo "   Try this command and see the output."
echo "--------------------"

echo "3. Calculate the average grade (assuming A=4, B=3, C=2, etc.) from 'student_data.txt'."
echo "   (This is a bit more advanced, you might need to use variables and conditional statements in awk)"
echo "   Think about how you would assign numerical values to grades and calculate the average."
echo "--------------------"

echo "Experiment with these tasks to get more comfortable with using awk in shell scripts!"