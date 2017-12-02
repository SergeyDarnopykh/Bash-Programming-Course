#!/bin/bash

ERROR_BAD_ARGS=303
ERROR_NOT_READABLE=202

if  [ $# -ne 2 ]
then
    echo "Wrond number of arguments. You need 2."
    exit "$ERROR_BAD_ARGS"
fi

j=1

for  i in $@; do {
    if [ ! -r $i ]
    then 
        echo "File $j does not exist."
        exit "$ERROR_NOT_READABLE"
    fi

    let "j++"
}; done

cmp $1 $2 &> /dev/null

if [ $? -eq 0 ]
then
    echo "File are the same"
else
    echo "Files are different"
fi


