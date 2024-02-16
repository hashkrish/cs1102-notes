# Week 4 Problem 10

Write the script ` script.sh ` to list the names of all the c++ files (i.e. with the extension ` .cpp `) in the current directory which contains a line such that

- The line starts with the string  ` void main() ` and ends with the character  ` { `. There should be one or more spaces/tabs between the characters ` { ` and  ` ) ` , but nothing except spaces.
    - For e.g the lines ` void main(){ `, ` void main() {}} ` are not a match for the above condition, but the lines ` void main() { `, ` void main()		 { ` are a match.

And also print the count of these files in the following line. (Note: Try ` tee /dev/tty ` to the purpose).

Store your output in file ` out.txt `.
