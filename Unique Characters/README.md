# Unique Characters

## `#`

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

## `,` 

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

## `{}`

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

- `""` - partial quoting. You can insert variables in the string.
- `''` - content inside is taken literally.
- ` `` ` - redirects commands output.
- `a > b` - a's output redirected to b's input. b is rewrited.
- `a >> b` - a's output redirected to b's input. b is NOT rewrited, data is written to the end of b.
- `\` - the character after this one will be taken like any other normal character. Also a division.
- `*` - a mask character. Means everything. Also a multiplication.
- `**` - exponentiation.
- `? :` - ternary operator, works just like in javascript. 
- `.` - current directory.
- `:` - null command.
- `()` - subshell is created to process the code inside. Can be used for array initialization.
- `-` (`--`) - parameter prefix. Also a minus.
- `^`, `^^` - used for uppercase conversion just like `,` and `,,` for lowecase conversion.
- `~+` - the value of shell variable `pwd` (current directory) replaces tilde-prefix.
- `~-` - the value of shell variable `oldpwd` (previous directory) replaces tilde-prefix. 
