# Week 7 Problem 9

In Problem 8, modify the output of your script as below.

- Print the range string only if there is a filesystem in that range.

For example, if there is no filesystem with usage >95% and also none in the range 75-85, and the rest all range has at least one filesystem with usage in that range than your output should be

```pseudo
0-50
(names of filesystem one in each line with usage between 0 to 50%)
50-75
(names of filesystem one in each line with usage between 50 to 75%)
85-95
(names of filesystem one in each line with usage between 85 to 95%)
```

Note:
- ` dfOutput.txt ` will be made available during evaluation.
