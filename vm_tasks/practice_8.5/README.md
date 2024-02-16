# Week 8 Problem 5

Write a sed script ` script.sed ` to extract the content inside every ` <td> ` tags. 

Print all the non-empty extracted contents with leading and trail spaces trimmed in the source order.

Note: Create environment array with name ` OPTS ` if more options to sed execution are required.

**Sample Input**
```
<html>
<head>
    <title>Example script for sed</title>
</head>

<body>
    <h1>Welcome to sed programming</h1>
    <p>sed is a steam editor known for manipulation of text.<br>
        sed can manipulate the text in the pipeline and can be used alond with other commands as well</p>
    <b>Frequently used options with sed</b>
    <table>
        <tr>
            <td> -n, --quiet, --silent </td>
            <td> suppress automatic printing of pattern space </td>
        </tr>
        <tr>
            <td> -e script, --expression=script </td>
            <td> add the script to the commands to be executed </td>
        </tr>
        <tr>
            <td> -f script-file, --file=script-file </td>
            <td> add the contents of script-file to the commands to be executed </td>
        </tr>
        <tr>
            <td> -i[SUFFIX], --in-place[=SUFFIX] </td>
            <td> edit files in place (makes backup if SUFFIX supplied) </td>
        </tr>
        <tr>
            <td> -l N, --line-length=N </td>
            <td> specify the desired line-wrap length for the `l' command </td>
        </tr>
        <tr>
            <td> -E, -r, --regexp-extended </td>
            <td> use extended regular expressions in the script (for portability use POSIX -E). </td>
        </tr>
    </table>
</body>
</html>
```

**Sample Output**

```
-n, --quiet, --silent
suppress automatic printing of pattern space
-e script, --expression=script
add the script to the commands to be executed
-f script-file, --file=script-file
add the contents of script-file to the commands to be executed
-i[SUFFIX], --in-place[=SUFFIX]
edit files in place (makes backup if SUFFIX supplied)
-l N, --line-length=N
specify the desired line-wrap length for the `l' command
-E, -r, --regexp-extended
use extended regular expressions in the script (for portability use POSIX -E).
```
