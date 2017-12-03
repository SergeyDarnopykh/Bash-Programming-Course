# Loops

## Parameters in `break`/`continue`
`break` and `continue` can take parameters to define how many levels 
should they break / continue. By default it's 1.

```bash
    for i in {0..5}
    do 
        echo $i

        for j in {0..3};
        do 
            echo $j
            break 2 # Breaks out of the outer loop
        done
    done
```

## `Case` construct
Syntax example:
```bash
    read a

    case $a in
        [[:lower:]] ) echo "a is lowercase";;
        [[:upper:]] ) echo "a is uppercase";;
        [0-9] ) echo "a is a digit"
        * ) echo "a is a special character"
    esac
```

## `Select` construct
Syntax example:
```bash
# Prompt string 3, works with select constuct
PS3="Pick your favourite band: "

select band in "Linkin Park" "Sum 41" "AC/DC" "Exit"
do 
    if [ $band = "Exit" ] 
    then
        break
   else
        echo "You selected $band"
    fi
done

```

