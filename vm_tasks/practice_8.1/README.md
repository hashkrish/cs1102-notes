# Week 8 Problem 1

A software company has published some best practices for writing the code. One of the best practices mentioned is that no line in your code should exceed 50 characters in total including all types of characters or spaces.

Write a bash script ` script.sh ` using sed that prints the names of all .c files that contain one or more lines with a length of more than 50 characters (as specified above).

Hint:

q [exit-code]
      Immediately quit the sed script without processing any more
      input, except that if auto-print is not disabled  the  cur‐
      rent pattern space will be printed.  The exit code argument
      is a GNU extension.

Q [exit-code]
      Immediately quit the sed script without processing any more
      input.  This is a GNU extension.

Note:
- The files will be made available during evaluation.
