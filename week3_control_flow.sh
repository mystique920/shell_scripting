#!/bin/bash

# Week 3: Control Flow and Logic

# Control flow structures allow you to make decisions and repeat actions in your scripts.
# Logic is implemented using conditional statements and operators.

echo "---- Week 3: Control Flow and Logic ----"

# Conditional statements (if, then, else, elif, fi)
# Execute different code blocks based on conditions.

echo "\n# Conditional statement (if-elif-else):"
number=55
if [ "$number" -gt 100 ]; then
    echo "$number is greater than 100"
elif [ "$number" -gt 50 ]; then
    echo "$number is greater than 50 but not greater than 100"
else
    echo "$number is 50 or less"
fi

# Comparison operators
# Used to compare values in conditional statements.
# -eq (equal), -ne (not equal), -gt (greater than), -lt (less than), -ge (greater or equal), -le (less or equal)
# For string comparison: =, !=, <, >

echo "\n# Comparison operators example:"
string1="hello"
string2="world"
if [ "$string1" != "$string2" ]; then
    echo "Strings are not equal"
fi

# Logical operators (AND, OR, NOT)
# Combine multiple conditions.
# -a (AND), -o (OR), ! (NOT)

echo "\n# Logical operators example:"
user_name="admin"
is_admin=true
if [ "$user_name" = "admin" -a "$is_admin" = true ]; then
    echo "User is admin and is_admin is true"
fi

# Looping (for, while, until)
# Repeat a block of code multiple times.

echo "\n# For loop example:"
echo "Numbers from 1 to 5:"
for i in 1 2 3 4 5; do
    echo "$i"
done

echo "\n# For loop using sequence:"
echo "Numbers from 1 to 5 again:"
for i in {1..5}; do
    echo "$i"
done

echo "\n# While loop example:"
count=1
echo "Counting to 3 using while loop:"
while [ "$count" -le 3 ]; do
    echo "Count: $count"
    ((count++)) # Increment counter
done

echo "\n# Until loop example:"
count_until=1
echo "Counting to 3 using until loop:"
until [ "$count_until" -gt 3 ]; do
    echo "Count until: $count_until"
    ((count_until++))
done

# Case statements
# Multi-way branch, useful for handling multiple options.

echo "\n# Case statement example:"
variable="option2"
case "$variable" in
    option1)
        echo "You selected option 1"
        ;;
    option2)
        echo "You selected option 2"
        ;;
    option3)
        echo "You selected option 3"
        ;;
    *) # Default case
        echo "Invalid option"
        ;;
esac

# Using find with -exec (relate to Python's os.walk for traversing directories)
# find command to search files and directories, -exec to execute commands on found items.
# Similar to Python's os.walk for directory traversal.

echo "\n# find command with -exec example:"
echo "# Finding directories and listing them:"
find . -type d -exec ls -l {} \; # Find directories (-type d) and list them

# (Relate conditional statements and loops to Python)
# Shell script control flow is similar to Python but syntax is different.
# if/elif/else in shell is similar to Python, but uses 'fi' to close.
# for/while loops are also similar but syntax and usage of iterators differ.

echo "\n---- Week 3 Exercises ----"
echo "\n# Exercise 1: Create a script that checks if a file exists and prints a message accordingly."
echo "# (Hint: Use -f condition in if statement to check file existence)"
echo "\n# Exercise 2: Create a script that loops through a list of numbers and prints only the even numbers."
echo "# (Hint: Use for loop and conditional statement with modulo operator '%')"
echo "\n# Exercise 3: Create a script that finds all .txt files in a directory and renames them to .bak."
echo "# (Hint: Use find command with -name option to find .txt files and -exec with mv command to rename)"

echo "\n# End of Week 3 Lesson"