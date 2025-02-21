# Introduction to AWK

AWK is a powerful text processing tool that is commonly used in shell scripting. It is particularly useful for manipulating and extracting data from structured text files.

## Basic AWK Syntax

The basic syntax of an AWK command is:
```bash
awk 'pattern { action }' input_file
```

- **pattern**: A condition that is checked for each line of input. If the pattern matches, the action is executed. If no pattern is provided, the action is executed for every line.
- **action**: A set of commands to be executed when the pattern matches. Actions are enclosed in curly braces `{}`. If no action is provided, the default action is to print the current line.
- **input_file**: The file to be processed by AWK. If no input file is specified, AWK reads from standard input.

## Basic AWK Commands

- **print**: Prints fields or variables.
- `$0`: Represents the entire current line.
- `$1`, `$2`, `$3`, ...: Represent the first, second, third, ... fields of the current line, respectively. Fields are separated by whitespace by default.
- `-F` option: Used to specify a different field separator. For example, `awk -F',' '{print $1, $2}'` uses comma as the field separator.

**BEGIN and END blocks**:
- `BEGIN { actions }`: Actions in the BEGIN block are executed before any input lines are processed.
- `END { actions }`: Actions in the END block are executed after all input lines have been processed.

## Example

Let's say you have a file named `data.txt` with the following content:
```
Name Age City
John 30 New York
Jane 25 London
Peter 35 Paris
```

To print the names and cities, you can use the following AWK command:
```bash
awk 'NR > 1 {print $1, $3}' data.txt
```

- `NR > 1`: This pattern matches lines where the line number `NR` is greater than 1 (skipping the header line).
- `{print $1, $3}`: This action prints the first field (Name) and the third field (City) for the matched lines.

This is a basic introduction to AWK. You can explore more advanced features like variables, control flow, and built-in functions for more complex text processing tasks.