#!/bin/bash

# Week 3: Control Flow and Logic

# 1. Conditional statements
if [ -f "readme.md" ]; then
  echo "File 'readme.md' exists."
else
  echo "File 'readme.md' does not exist."
fi

# 2. Comparison operators
x=10
y=20

if [ $x -gt $y ]; then
  echo "x is greater than y"
elif [ $x -lt $y ]; then
  echo "x is less than y"
else
  echo "x is equal to y"
fi

# 3. Logical operators
age=25
is_student=true

if [ $age -gt 18 ] && [ "$is_student" = "true" ]; then
  echo "Eligible for student discount"
fi

# 4. Loops
echo "Numbers:"
for number in 1 2 3 4 5; do
  echo $number
done

count=0
while [ $count -lt 5 ]; do
  echo "Count: $count"
  count=$((count + 1))
done

# 5. Case statements
day_number=1
case $day_number in
  1)
    echo "Monday"
    ;;
  2)
    echo "Tuesday"
    ;;
  *)
    echo "Unknown"
    ;;
esac

# Practice tasks:
# 1. Create a script that checks if a given file is a regular file, a directory, or a symbolic link, and prints a message accordingly.
# 2. Create a script that loops through the numbers from 1 to 10 and prints whether each number is even or odd.
# 3. Create a script that uses a case statement to determine the day of the week based on a number entered by the user.