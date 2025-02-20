#!/bin/bash

# Week 1: Introduction to Shell Scripting

# 1. Basic shell commands
echo "Current directory:"
pwd

echo "Listing files:"
ls -l

echo "Creating a directory:"
mkdir my_directory

echo "Copying readme.md to the new directory:"
cp readme.md my_directory/

echo "Moving the copied file to a new name:"
mv my_directory/readme.md my_directory/readme_copy.md

echo "Listing files in the new directory:"
ls -l my_directory/

echo "Removing the directory:"
rm -r my_directory

echo "Done!"

# Practice tasks:
# 1. Create a script that lists all files in the /tmp directory.
# 2. Create a script that creates a directory called 'backup' and copies all .txt files from the current directory into it.
# 3. Create a script that removes all empty directories in the current directory.