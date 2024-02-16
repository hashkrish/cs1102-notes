# Week 8 Problem 3

The command ` cut -d " " -f 5 lsoutput ` is executed to extract the total size of the files. But the ` lsoutput ` contains multiple spaces between fields and for some reason we cannot change the cut command. Your task is to preprocess the file ` lsoutput ` to work with the cut command.

Write a script ` script.sh ` to perform the task.

Hint: Use the -i option in sed to do the modification in the file.

Note:
- ` lsoutput ` will be created during evaluation.
