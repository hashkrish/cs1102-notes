# Week 7 Problem 8

` df -h ` gives the disk/filesystem usage information. Write a bash script to list all the filesystem mount point names based on their percentage usage divided in 5 categories in the format below.

```pseudo
0-50
(names of filesystem one in each line with usage between 0 to 50%)
50-75
(names of filesystem one in each line with usage between 50 to 75%)
75-85
(names of filesystem one in each line with usage between 75 to 85%)
85-95
(names of filesystem one in each line with usage between 85 to 95%)
>95
(names of filesystem one in each line with usage above 95%)
```

In each category, print the range in one line, followed by the filesystem mount point names. Print the range string even if there are no filesystems with usage in that range. Your script should not print anything else, all other errors and output from your script should be redirected to /dev/null.

Write your script in file ` script.sh `.

Filesystem mount point name is the last field in the output of df -h.

 The categories are

- 0% to less than 50% usage.
- 50% to less than 75% usage.
- 75% to less than 85% usage.
- 85% to less than 95% usage.
- Equal and above 95% usage.

Hint: Can store the df command output in a file. Then work on the file named ` dfOutput.txt ` line by line using the below script.

```Bash
while read -r line;
do
   echo $line; # To print the line.
   # Write your code to process the line.
done < dfOutput.txt
```

Use ${var:0:-1} to remove the last character of string var.

Note:
- The file ` dfOutput.txt ` will be made available during evaluation.
