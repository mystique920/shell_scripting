# Shell Scripting Course Plan for Beginners (4 Weeks)

## Course Overview

This course provides a comprehensive introduction to shell scripting on macOS, covering the fundamental concepts and skills needed to automate tasks and manage your system effectively.

## Week 1: Introduction to Shell Scripting

*   What is shell scripting?
*   Why use shell scripting?
*   Basic shell commands (ls, cd, pwd, mkdir, rm, cp, mv)
*   Working with files and directories
*   Creating and executing simple shell scripts
*   Shebang `#!/bin/bash`
*   `echo` command
*   Comments

**Exercises:**

*   Create a script that lists all files in a directory.
*   Create a script that creates a new directory and copies a file into it.

## Week 2: Variables and Input/Output

*   Variables: declaring, assigning, and using variables
*   Data types (strings, numbers)
*   Command substitution
*   User input (read command)
*   Output redirection and piping
*   `printf` command
*   **Command-line arguments (`$1`, `$2`, etc.)**
*   **Environment variables (brief comparison with Python's `os.environ`)**

**Exercises:**

*   Create a script that asks for user input and prints a personalized message.
*   Create a script that redirects the output of a command to a file.
*   **Create a script that takes a filename as a command-line argument and prints the first line of the file.**

## Week 3: Control Flow and Logic

*   Conditional statements (if, then, else, elif, fi)
*   Comparison operators
*   Logical operators (AND, OR, NOT)
*   Looping (for, while, until)
*   Case statements
*   **Using `find` with `-exec` (relate to Python's `os.walk` for traversing directories)**
*   **(Relate conditional statements and loops to Python)**

**Exercises:**

*   Create a script that checks if a file exists and prints a message accordingly.
*   Create a script that loops through a list of numbers and prints only the even numbers.
*   **Create a script that finds all `.txt` files in a directory and renames them to `.bak`.**

## Week 4: Functions and Advanced Topics

*   Defining and calling functions
*   Passing arguments to functions
*   Returning values from functions
*   Working with arrays
*   String manipulation
*   Error handling
*   Debugging shell scripts
*   **Introduction to `awk` and `sed` for text processing**
*   **Creating simple command-line tools (comparison with Python's `argparse` module)**
*   **Regular expressions (comparison with Python's `re` module)**

**Exercises:**

*   Create a script that defines a function to calculate the area of a rectangle.
*   Create a script that uses an array to store a list of names and prints them in reverse order.
*   **Create a script that uses `awk` to extract the second column from a CSV file.**
* **Create a simple command-line tool that takes two numbers as arguments and prints their sum (compare to a similar script in Python using `argparse`).**

## Resources

*   macOS Terminal
*   Text editor (VS Code, Sublime Text, etc.)
*   Online shell scripting documentation and tutorials

## Assessment

*   Weekly exercises
*   Final project: Automate a common task using shell scripting.