# Unique Characters

## `'#'`

### Comments 
```bash 
# Something, that is not executed
echo "Something else"
```

### Execution instructions
This line means that this script will be executed in bash: 
```bash 
#!/bin/bash
```

### Count chars in the string

```bash
variable="Awesome"
echo "There is ${#variable} characters in $variable"
```

### Binary numbers

```bash
echo $(( 2#1010 )) # 10
```


## `','` 

### Expression separator 

Only the last expression  is returned:
```bash
let "var1=(( var2 = 150, 10 / 2 ))"
echo $var1 # 5
echo $var2 # 150
```

### Convert to lowercase

```bash
awesome="I Am Awesome"

# Convert only the first character
echo ${awesome,} # i Am Awesome

# Convert the whole string
echo ${awesome,,} # i am awesome
```

## `'{}'`

### Add characters to the beginning and the end of string elements

DOES NOT WORK
```bash
echo \$ {test1, test2, test3}\$ # #Hi$ #there$ #you$
```

### Move multiple files content to one file
```bash
cat {file1, file2, file3, file4, file5, file6, file7} > finalFile
```

### Loop without a loop

A fast way to loop through values form 0 to 9.
```bash
echo {0..9} # 0 1 2 3 4 5 6 7 8 9
```

### Create blocks of code
```bash
{
    var=10
}

echo $var # 10
```


## Other characters

- `""` Partial quoting. You can insert variables in the string.
- `''` Content inside is taken literally.
- ` `` ` Redirects commands output.
- `a > b` a's output redirected to b's input. b is rewrited.
- `a >> b` a's output redirected to b's input. b is NOT rewrited, data is written to the end of b.
- `\` The character after this one will be taken like any other normal character. Also a division.
- `*` It is a mask character. Means everything. Also a multiplication.
- `**` Exponentiation.
- `? :` Ternary operator, works just like in javascript. 
- `.` Current directory.
- `:` Null command.
- `()` Subshell is created to process the code inside. Can be used for array initialization.
- `{}` Can be used to create.