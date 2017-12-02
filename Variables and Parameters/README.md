# Variables and Parameters

## Set variable to null

```bash
var="Hi"

echo $var # Hi
unset var
echo $var #
```


## Set variable to someting

1. Direct assignment
```bash 
var="Something"
```

2. Using read
```bash
read var
read -p "Input variable: " var2 # -p to add message before user input
```


## Output variable

Always use `""` to output a variable to save all of the spaces/newlines.
```bash
var="Hi there   my    friend"

echo $var # Hi there my friend
echo "$var" # Hi there   my    friend
```


## Assign the output of the command(s) to a variable

```bash
string=$( echo "Hi there" )

echo "$string" # Hi there
```


## `let` for ariphmetic operations
```bash
number=100

let "number *= 2"
echo "$number" # 200
```


## Replacing smth in a number.

It can be used for conversion
```bash
number=F

number=${number/F/16}
echo "$number" # 16
```

## Passed parameters

- `$i` i-th argument (or `${i}`, if `i` is greater or equal to `10`) 
- `$@` all arguments
- `$0` name of the script
- `$#` total number of passed argument 


## Small things

- `null` is `0` in ariphmetic operations
- any string is `0` in ariphmetic operations
- `-n` will return `true` if the parameter is specified