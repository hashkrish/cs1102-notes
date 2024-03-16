## ES Lab 4 Activities

> Find data files in /opt/assets to work on

## 4.1 Regular Expressions

Following set contains basics of regular expressions. Your job is to provide 2 examples of each sub-titles. Append the Lab report to your previous report on google Doc with appropriate title for the Activity and screenshots of the worked out examples.

### Regular Expressions Workbook

Regular expressions (regex) are patterns used to match character combinations in strings. They are widely used in text processing for searching, matching, and replacing patterns in text data. The regular expression forms the backbone for textual processing using shell scripting. The utilities grep, sed and awk rely on the regular expression to process textual data.

For the following do the task and create one more similar task there by compiling at least 2 examples/use-cases for each of the subtitle.

1. **Matching a Specific Pattern:**

   - Task: Match all email addresses in a text file.

2. **Matching Digits:**

   - Task: Match all phone numbers in a text file.

3. **Matching Words Starting with a Specific Letter: **

   - Task: Match all words starting with a word e.g. 'apple' in a text file.

4. **Matching Specific Characters:**

   - Task: Match all lines containing either of a word e.g. 'cat' or 'dog'.

5. **Quantifiers:**

   **Syntax:** `*`, `+`, `?`, `{n}`, `{n,}`, `{n,m}`

   **Purpose:** Specifies the number of repetitions for the preceding element.

   - Task: Match all lines containing at least n digits e.g. 3 consecutive digits.

6. **Matching Word Boundaries:**

   - Task: Match all occurrences of a whole word e.g. 'is' using word boundary.

7. **Negation:** (bonus)

   - Task: Match all lines not containing a word e.g. the word 'error' in an authlog file.

8. **Capturing Groups:**

   - Task: Match and capture the date components (year, month, day) from a date string. You can do the same for ip address or mac address or phone number using groups concept.

## 4.2 Grep

### grep Workbook

For the following do the task and create one more similar task there by compiling at least 2 examples/use-cases for each of the sub-titles.

1. **Basic Pattern Search:**

   - Task: Search for the word 'error' in a log file.

2. **Case Insensitive Search:**

   - Task: Search for the word 'warning' case insensitively in a log file.

3. **Inverted Match:**

   - Task: List all lines not containing the word 'success'.

4. **Recursive Search:**

   - Task: Search for a pattern recursively in all files within a directory. (you will need to create a directory structure with some content in files in the directory structure. You can use the Lab 3 `for` loop activity to do the task.)

5. **Counting Matches:**

   - Task: Count the number of occurrences of 'exception' in a log file.

6. **Displaying Line Numbers:**

   - Task: Show line numbers for all occurrences of 'timeout' in a file.

7. **Search for Whole Words:**

   - Task: Search for the word 'bug' as a whole word in a text file.

8. **Regular Expression Search:**

   - Task: Search for all lines starting with 'Error' (case insensitive).

## 4.3 SED

### sed Workbook

#### Introduction to `sed`:

`sed` (Stream Editor) is a powerful Unix utility used for performing text transformations on an input stream or files. It processes text line by line and applies specified operations or commands to each line, allowing for search, substitution, deletion, insertion, and more.

#### General Information on How `sed` Operates:

- **Pattern Space:**
  - The pattern space is a buffer that holds the current line of text being processed by `sed`. Most `sed` commands operate on the contents of the pattern space.
- **Hold Space:**
  - The hold space is an auxiliary buffer that can store text for later use. It is not modified by most `sed` commands and is primarily used for advanced text manipulation tasks.
- **Processing Cycle:**
  - `sed` operates on a cycle where it reads a line of input, applies the specified commands to the pattern space, and then prints or manipulates the pattern space as directed before moving on to the next line of input.

#### Basic Syntax:

The general syntax of a `sed` command is:

```bash
sed OPTIONS 'command' input_file(s)
```

- **OPTIONS:** Optional flags or parameters to modify `sed` behavior.
- **'command':** Specifies the operation(s) to be performed on each line.
- **input_file(s):** The file(s) to be processed by `sed`. If not specified, `sed` reads from standard input.

For the following do the task and create one more similar task there by compiling at least 2 examples/use cases for each of the subtitles.

Create the input test cases as required. task should accompany additional similar tasks you perform using your own example.

1. **Substitution:**

   - Task: Replace 'old' with 'new' in a file.

2. **Selective Substitution:**

   - Task: Replace 'apple' with 'orange' only in lines containing 'fruit'.

3. **Deleting Lines:**

   - Task: Delete all lines containing 'error'.

4. **Insertion:**

   - Task: Insert a line 'Hello World' before each line containing 'foo'.

5. **Appending Text:**

   - Task: Append 'End of file' at the end of each line.

6. **Deleting Specific Lines:**

   - Task: Delete lines 5 to 10 from a file.

7. **Replacing Nth Occurrence:**

   - Task: Replace the third occurrence of 'old' with 'new' in each line.

8. **Using Variables in Replacement:**

   - Task: Replace 'apple' with the value of a shell variable 'fruit'.

9. **Global Flag (g):**

   - Task: Apply an operation globally (all occurrences) on each line.

10. **Addressing (1,2):**

    - Task: Specify line numbers or patterns to apply operations on.

11. **Transformation (y):**

    - Task:Transform characters based on specified mappings. (Examine what y does in sed and report it)

12. **Printing Line Numbers (=):**

    - Task: Print line numbers for each line.

13. **Suppressing Output (-n):**

    - Task: Suppress automatic printing of pattern space.

14. **Appending Next Line (N):**

    - Task: Append the next line to the pattern space.

15. **Conditional Branching (b):** (Bonus)

    - Task: Use branches to a specified label if the previous substitution was successful.

16. **Branching to Label (b):** (Bonus)

    - Task: Use Branches to a specified label unconditionally.

17. **Reading External File (r):** (Bonus)

    - Task: Read content from an external file and appends it to the output.

18. **Writing to External File (w):** (Bonus)

    - Task: Write the pattern space to an external file.

## 4.4 AWK

### Introduction to Awk

Awk is a versatile programming language primarily used for text processing and data extraction in Unix-like operating systems. It operates on text files, reading input line by line and performing specified actions based on user-defined patterns. Awk is particularly powerful for handling structured data, such as tables or logs, due to its ability to separate data into fields and manipulate them accordingly.

#### Basic Structure of Awk Programs:

An Awk program consists of patterns and actions, often enclosed in braces `{}`. Each pattern-action pair specifies a condition to match against input lines and an action to perform if the condition is met. If a pattern is omitted, the associated action is performed for every input line.

```awk
pattern1 { action1 }
pattern2 { action2 }
...
```

#### BEGIN and END Blocks:

Awk provides special BEGIN and END blocks that allow you to execute code before processing the input and after processing all input, respectively. These blocks are commonly used for initialization tasks or for performing final calculations or output.

```awk
BEGIN {
    # Initialization code
}

{
    # Main processing code
}

END {
    # Finalization code
}
```

#### Built-in Variables in Awk:

Awk provides several built-in variables that store useful information during program execution:

- **FS (Field Separator):** Specifies the input field separator (default is whitespace).
- **OFS (Output Field Separator):** Specifies the output field separator (default is whitespace).
- **RS (Record Separator):** Specifies the input record separator (default is newline).
- **ORS (Output Record Separator):** Specifies the output record separator (default is newline).
- **NF (Number of Fields):** Stores the number of fields in the current input record.
- **NR (Number of Records):** Stores the current input record number.
- **FNR (File Number of Records):** Stores the current input record number within the current file.
- **FILENAME:** Stores the name of the current input file being processed.

#### Built-in Functions in Awk:

Awk provides numerous built-in functions for string manipulation, numeric calculations, and more. Some commonly used functions include:

- **gsub():** Global substitution of a pattern with a replacement string.
- **length():** Returns the length of a string.
- **tolower():** Converts a string to lowercase.
- **toupper():** Converts a string to uppercase.
- **sprintf():** Formats a string based on a format specifier.
- **substr():** Extracts a substring from a string.
- **split():** Splits a string into an array based on a delimiter.

#### Example Awk Program:

Here's a simple Awk program that prints the second field of each line in a file:

```awk
{ print $2 }
```

This program consists of a single action block without a pattern, so it will be executed for every input line. The action `print $2` prints the second field of each line.

For the following do the task and create one more similar task there by compiling at least 2 examples/use-cases for each of the sub-titles.

### awk Workbook

1. **Basic Print:**

   - Task: Print the first column of a CSV file and a TSV file.

2. **Pattern Matching:**

   - Task: Print lines where the second column value is greater than 50.

3. **Custom Field Separator:**

   - Task: Print the last field of each line (fields are separated by ':').

4. **Calculations:**

   - Task: Calculate and print the sum of values in the second column. (create a sample data using brace expansion and `paste` command)

5. **Conditional Printing:**

   - Task: Print lines where the first column is equal to 'error'. (work on a log file)

6. **Formatting Output:**

   - Task: Print columns 2 and 3 with a tab separator. (create a sample data using brace expansion and `paste` command)

7. **Counting and Grouping:** (bonus)

   - Task: Count occurrences of each unique value in the second column. (create a sample data using brace expansion and `paste` command)

8. **Using Regular Expressions:**

   - Task: Print lines containing 'error' or 'warning' in any column. (Work on a log file)

9. Report one use case for each of the in-built variables and function in the introduction of the activity. (bonus)
