# Conditional Statements

## `[]`
Used in the `if` statement, when there's only one expression within the brackets.

For example:
```bash
read a

if [ a -gt 0] 
then 
    echo "a is greater than 0"
else
    echo "a is lesser or equal to 0"
fi
```


## `[[]]`
Used in the `if` statement, when there's more than one expression within the brackets.

For example:
```bash
read a

if [[ a -gt 0 &&  a -lt 5 ]] 
then 
    echo "a is greater than 0 and lesser than 5"
else
    echo "a is lesser or equal to 0, or greater or equal to 5"
fi
```


## Little things

- `elif` statement is just like `else if` in javascript
- `-e` returns true if the file exists
- `-z` returns true if the string is empty (has zero length)
- `-f` returns true if the file exists and is a regular file (not a directory or device file)
- `-s` returns true if the file exists and is not zero size (there's something in it)
- `-r`  returns true if the file exists and the user has the permission to read the file
- `-x` returns true if the file exists and the user has the permission to execute the file
- `-w` returns true if the file exists and the user has the permission to write to the file 
- `!`  reverses the result of the operator
- `(( some arithmetic expression ))` gives exit code `1`, if the expression is `false` or equal to `0`, and `0`, if the expression is `true` or not equal to `0`