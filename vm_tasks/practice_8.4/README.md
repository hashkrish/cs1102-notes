# Week 8 Problem 4

In python, the multiline comments can be bounded by either ` ''' ` or ` """ `. 

Write a sed script ` script.sed ` that converts all the comments inside the triple quotes to single-line comment (preceded by #) and remove the lines inside the triple quotes that do not have any contents.

**Sample Input:**

```python
print(1)
"""
This is a comment 1
"""
print(2)
"""This is a comment 2
"""
print(3)
"""
This is a comment 3"""
print(4)
"""This is a comment 4"""
print(5)
"""This is a comment 5"""
print(6)
```

**Sample Output**

```python
print(1)
#This is a comment 1
print(2)
#This is a comment 2
print(3)
#This is a comment 3
print(4)
#This is a comment 4
print(5)
#This is a comment 5
print(6)
```
