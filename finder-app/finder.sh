#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: expected 2 arguments: filesdir searchstr"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: $1 directory doesn't exist"
    exit 1
fi

file_count=$(grep -rl "$2" $1 | wc -l)
word_count=$(grep -r "$2" $1 | wc -l)

echo "The number of files are $file_count and the number of matching lines are $word_count"
