# Week 7 Problem 4

Write a bash script named ` script.sh ` that accepts a file path as an argument and checks if that exists and is readable by the current user and prints the output as below.

- Prints "DOES NOT EXIST" on STDERR and return with error code 1 if the file does not exist at the given path.
- Prints "NOT READABLE" on STDERR and return with error code 2 if the file is not readable by the current user.
- Prints "WOO HOO" if the file exists and is readable too.

Note: 
- Use the below if elif conditional statement if needed

```bash
if condition; then
	...
	...
elif condition; then
	...
	...
else
	...
	...
fi
```

- The files will be created during ` synchro eval `.
