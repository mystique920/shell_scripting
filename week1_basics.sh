#!/bin/bash

# Week 1: Introduction to Shell Scripting

# What is shell scripting?
# Shell scripting is writing a sequence of commands in a file that can be executed by the shell.
# It's used for automating tasks, system administration, and more.

# Why use shell scripting?
# - Automation of repetitive tasks
# - System administration
# - Creating simple tools and utilities
# - Batch processing

echo "---- Week 1: Basic Shell Commands ----"

# Basic shell commands: ls, cd, pwd, mkdir, rm, cp, mv

# 1. ls command: list directory contents
echo "\n# Listing files and directories in the current directory:"
ls -l  # -l option for detailed list view

# 2. cd command: change directory
echo "\n# Changing directory to a subdirectory (if it exists):"
mkdir week1_test_dir  # Create a directory first
cd week1_test_dir || exit # Change directory, exit if fails
pwd # Print current working directory

# 3. pwd command: print working directory
echo "\n# Printing current working directory:"
pwd

# 4. mkdir command: make directory
echo "\n# Creating a new directory:"
mkdir week1_new_dir
ls -l .. # List the parent directory to see the new directory

# 5. rm command: remove files or directories
echo "\n# Removing a directory (must be empty) and a file:"
touch temp_file.txt # Create a temporary file
ls -l # List files before removal
rm temp_file.txt
rmdir week1_new_dir
ls -l # List files after removal

# 6. cp command: copy files and directories
echo "\n# Copying a file:"
touch original_file.txt
echo "This is the original file" > original_file.txt
cp original_file.txt copied_file.txt
ls -l # List files to see the copied file
cat copied_file.txt # Display content of the copied file

# 7. mv command: move or rename files and directories
echo "\n# Moving (renaming) a file:"
mv copied_file.txt renamed_file.txt
ls -l # List files to see the renamed file

# Working with files and directories is fundamental in shell scripting.
# These commands are used in almost every script.

echo "\n---- Week 1 Exercises ----"
echo "\n# Exercise 1: Create a script that lists all files in a directory."
echo "# (Hint: Use ls command. You can specify a directory as an argument)"
echo "\n# Exercise 2: Create a script that creates a new directory and copies a file into it."
echo "# (Hint: Use mkdir and cp commands. You might need to create a dummy file first)"

echo "\n# End of Week 1 Lesson"