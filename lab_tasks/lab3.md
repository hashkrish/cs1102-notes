## ES Lab 3 Activities

### 3.1 Variables

1. **Assigning Values to a Variable**
    - Demonstrate four use cases of assigning values to variables.

2. **Bash Arithmetic with Variables**
    - Explore four different ways Bash can perform basic math operations, including using the `bc` command.
    - Try adding two floating-point numbers with Bash.

3. **Arrays in Bash**
    - Create indexed and associative arrays in Bash.
    - Demonstrate how to print elements of the arrays using a `for` loop.

4. **Variable Manipulation in Bash**
    - Illustrate basic string manipulation in Bash, following examples demonstrated in the lecture.

5. **`set -x`**
    - Explain what `set -x` does.

6. **`read` Command Use Case**
    - Report various use cases of the `read` command and assigning its value to a variable.

7. **`IFS` and Its Use**
    - Define `IFS` and provide at least two examples of its usage.

8. **Reading File Content**
    - Explain how `read`, `IFS`, and `while` are used together to read the content of a file word by word. Show how field separators can be changed, possibly using a log file shared in a previous session.

### 3.2 Loops

1. **For Loops**
    - Create a for loop to print numbers from 10 to 245.
    - Modify the for loop to print numbers from 10 to 245 with a step of 5.
    - Further modify the for loop to print numbers from 10 to 245 if divisible by 5 and 7.

2. **Prime Numbers**
    - Add an if condition to the for loop to print only prime numbers in the range 10 to 245.

3. **Odd Numbers Script**
    - Create a script that asks for a range (starting point and end point) and prints all odd numbers within that range.

4. **Prime Numbers Script**
    - Create a script that takes an argument and prints all prime numbers between 1 and the argument number.

### 3.3 Reading Files

1. **Reading /etc/passwd File**
    - Create a while loop to read the `/etc/passwd` text file.

2. **Using `IFS` to Read /etc/passwd File**
    - Create a while loop using `IFS` to use ':' as a separator to read `/etc/passwd` and print its contents word by word.

3. **Using Associative and Indexed Arrays**
    - Achieve the same result as above using associative and indexed arrays.

### 3.4 Creating Numerous Files with Complex Directory Structure

1. **Creating Files**
    - Use a for loop to create files `1.txt`, `2.txt`, ... `1000.txt`, where each file contains its own filename. Organize batches of 25 files in folders `folder1`, `folder2`, ... `folder40`.

2. **Printing Content of Files**
    - Print the content of files whose names are prime numbers.

### 3.5 Using Zip and Tar Functionality

1. **Flattening Directory with Tar**
    - Use the `tar` command to flatten the directory structure.

2. **Timing Zip Operations**
    - Use the `zip` command to compress files and folders, noting the time taken for the operation.

3. **Finding Files with Find Command**
    - Use the `find` command to print the content of files above 340 and below 874 if the filename is odd and has the digit 5 in it.

### 3.6 Setting up Backup Script Using Make Utility and Crontab

1. **Backup Script**
    - Create and run a backup script using the `make` utility and execute it using the `crontab` command. Mimic the backup script created in the lecture.
