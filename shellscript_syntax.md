# Shell Script Syntax and Structure

This document provides a basic overview of the syntax and structure of a shell script file.

## Shebang

The first line of a shell script should be the shebang, which specifies the interpreter to use for executing the script. For Bash scripts, the shebang is:

```bash
#!/bin/bash
```

## Comments

Comments are used to explain the code and are ignored by the interpreter. In shell scripts, comments start with a `#` character.

```bash
# This is a comment
```

## Commands

Shell scripts consist of a series of commands. Each command is executed in order.

```bash
ls -l  # List files in the current directory
pwd   # Print the current working directory
```

## Variables

Variables are used to store data. Variable names are case-sensitive.

```bash
name="John"
echo "Hello, $name"
```

## Control Flow

Shell scripts support conditional statements and loops for controlling the flow of execution.

### If Statements

```bash
if [ condition ]; then
  # Code to execute if condition is true
else
  # Code to execute if condition is false
fi
```

### For Loops

```bash
for item in list; do
  # Code to execute for each item in the list
done
```

### While Loops

```bash
while [ condition ]; do
  # Code to execute while condition is true
done
```

## Functions

Functions are used to group a set of commands together.

```bash
my_function() {
  # Code to execute
}

my_function  # Call the function
```

## Input/Output

Shell scripts can take input from the user and produce output.

### Reading Input

```bash
read -p "Enter your name: " name
echo "Hello, $name"
```

### Printing Output

```bash
echo "Hello, world!"
```

## Exit Status

Every command returns an exit status, which indicates whether the command was successful. An exit status of 0 indicates success, while a non-zero exit status indicates failure.

```bash
ls -l  # If the command is successful, the exit status is 0
echo $? # Print the exit status of the previous command