# Beginner Shell Scripting Course

## Overview

This course provides a comprehensive introduction to shell scripting on macOS, covering the fundamental concepts and skills needed to automate tasks and manage your system effectively. The course is designed for beginners with no prior experience in shell scripting or programming. If you are on Linux the commands will be the same.

## Prerequisites

- Basic familiarity with using a computer and command line interface.
- A macOS system with Terminal installed.
- A text editor such as VS Code, Sublime Text, or similar.
- No prior programming experience required.

## Installation and Setup

1. Clone or download the course repository.
2. Ensure you have a working shell environment. While macOS now defaults to zsh, this course uses bash, which is still widely used and supported on macOS.
3. Open the repository in your favorite text editor.

## Running Shell Scripts

1.  **Open Terminal:** Launch the Terminal application on your macOS system.
2.  **Navigate to Script Directory:** Use the `cd` command to navigate to the directory where your shell script is located. For example: `cd /path/to/your/script/directory`
3.  **Make Script Executable:** Before running a shell script, you need to make it executable. Use the `chmod` command: `chmod +x your_script_name.sh`
4.  **Execute the Script:**
    *   To execute the script, type `./your_script_name.sh` and press Enter. Note that `./` refers to the current directory, so ensure your terminal is in the same directory as the script.
    *   Alternatively, you can run the script using `bash your_script_name.sh`

## Learning Objectives

By the end of this course, you will be able to:
- Understand core shell scripting concepts and commands.
- Write, execute, and debug shell scripts.
- Automate routine tasks using shell commands.
- Implement basic control flow structures and functions in scripts.

## Course Structure

The course is divided into four weeks, each covering specific topics and building upon the knowledge gained in previous weeks. The estimated time commitment is 5-10 hours per week.

### Week 1: Introduction to Shell Scripting

- What is shell scripting?
- Why use shell scripting?
- Basic shell commands (`ls`, `cd`, `pwd`, `mkdir`, `rm`, `cp`, `mv`)
- Working with files and directories
- Creating and executing simple shell scripts
- Shebang (`#!/bin/bash`)
- `echo` command
- Comments

### Week 2: Variables and Input/Output

- Variables: declaring, assigning, and using variables
- Data types (strings, numbers)
- Command substitution
- User input (`read` command)
- Output redirection and piping
- `printf` command
- Command-line arguments (`$1`, `$2`, etc.)
- Environment variables (brief comparison with Python's `os.environ`)

### Week 3: Control Flow and Logic

- Conditional statements (`if`, `then`, `else`, `elif`, `fi`)
- Comparison operators
- Logical operators (AND, OR, NOT)
- Looping (`for`, `while`, `until`)
- Case statements
- Using `find` with `-exec` (similar to Python's `os.walk` for traversing directories)
- Comparative examples with Python (conditional statements and loops)

### Week 4: Functions and Advanced Topics

- Defining and calling functions
- Passing arguments to functions
- Returning values from functions
- Working with arrays
- String manipulation
- Error handling
- Debugging shell scripts
- Introduction to `awk` and `sed` for text processing
- Creating simple command-line tools (comparison with Python's `argparse` module)
- Regular expressions (comparison with Python's `re` module)

## Resources

- macOS Terminal documentation: [Apple Terminal User Guide](https://support.apple.com/guide/terminal/welcome/mac)
- Online shell scripting tutorials and documentation:
    - [Bash Beginners Guide](https://www.gnu.org/software/bash/manual/html_node/Bash-Beginner_0027s-Guide.html)
    - [Advanced Bash-Scripting Guide](https://www.tldp.org/LDP/abs/html/)
- Community forums and discussion groups.
- For a detailed explanation of shell script syntax, refer to the `shellscript_syntax.md` file.

## Assessment

- **Weekly Exercises:** Practice assignments provided at the end of each week.
- **Final Project:** Automate a common task using shell scripting. For example, you could create a script to automate file backups or monitor system resources. Detailed project guidelines including requirements, evaluation criteria, and deadlines will be provided.

## Support / Contact

If you have any questions or need assistance, please ask your favorite AI model.

---