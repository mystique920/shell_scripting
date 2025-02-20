#!/bin/bash

# Week 4: Functions and Advanced Topics

# 1. Defining a function
calculate_area() {
  length=$1
  width=$2
  area=$((length * width))
  echo "Area: $area"
}

# 2. Calling a function
calculate_area 5 10

# 3. Passing arguments to a function
greet() {
  name=$1
  greeting="Hello" # Default greeting
  if [ ! -z "$2" ]; then
    greeting=$2
  fi
  echo "$greeting, $name!"
}

greet "Bob"
greet "Charlie" "Good morning"

# 4. Returning values (using echo and command substitution)
add() {
  x=$1
  y=$2
  echo $((x + y))
}

result=$(add 5 3)
echo "Result: $result"

# 5. Arrays
names=("Alice" "Bob" "Charlie")
echo "Names:"
for name in "${names[@]}"; do
  echo $name
done

# 6. String manipulation
text="  Hello, world!  "
echo "Original text: '$text'"
echo "Stripped text: '$(echo "$text" | tr -d ' ')'"
echo "Uppercase text: '$(echo "$text" | tr '[:lower:]' '[:upper:]')'"
echo "Lowercase text: '$(echo "$text" | tr '[:upper:]' '[:lower:]')'"

# Practice tasks:
# 1. Create a function that takes two numbers as arguments and returns their sum.
# 2. Create a function that takes a string as an argument and returns the string reversed.
# 3. Create a function that takes an array of numbers as an argument and returns the average of the numbers.