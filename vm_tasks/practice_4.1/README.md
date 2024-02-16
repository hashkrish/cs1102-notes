# Week 4 Problem 1

Consider a file named ` lsinfo.txt ` in your current working directory that contains output of the command ` ls -al ` run on some directory.

1. Use grep/egrep to print all the files/directories in file ` lsinfo.txt ` such that for those files/directories:

   1.  Owner has read and write permission only.
   2.  The group to which user belongs to has read permission only
   3.  Other users have read permission only

Write your answer as a bash script ` script.sh `. Redirect your output to file ` out.txt `.

Note:
- Run ` synchro init ` before running ` synchro eval `.
