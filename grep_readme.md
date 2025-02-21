# Introduction to grep

`grep` is a powerful command-line tool used for searching text within files. It stands for "Global Regular Expression Print".

**Basic Syntax:**

```bash
grep [options] pattern [file(s)]
```

**Example:**

To find all lines containing the word "error" in a file named `logfile.txt`:

```bash
grep "error" logfile.txt
```

**Common Options:**

*   `-i`:  Ignore case (case-insensitive search).
*   `-n`:  Show line numbers.
*   `-v`:  Invert the search (show lines that *do not* match).
*   `-r`:  Recursive search (search within all files in a directory and its subdirectories).

`grep` is an essential tool for developers, system administrators, and anyone who needs to quickly find specific information within large amounts of text.