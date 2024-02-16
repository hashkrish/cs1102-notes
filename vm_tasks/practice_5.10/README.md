# Week 5 Problem 10

Write a bash script ` script.sh ` to redirect the **manual** entry (.i.e. output of man page) for the command which is specified as value of the shell variable named ` cmd ` to a text file ` man_commandValue.txt `, where ` commandValue ` is the value in variable ` cmd ` (example: if the variable ` cmd ` has value ` ls `, then redirect the out of `man ls` to the file named ` man_ls.txt ` ).

If there is an error in getting the man page of command in variable ` cmd `, then redirect the standard error to ` man_commandValue.err ` and execute the help command for the command in variable ` cmd ` and redirect the output to the file ` man_commandValue.txt `, where ` commandValue ` is the value in variable ` cmd `.

Hint: use operator && or || for executing help command based on exit status of first command.

