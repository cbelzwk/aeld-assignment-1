#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: expected 2 arguments: writefile writestr"
    exit 1
fi

mkdir -p "$(dirname "$1")"
touch $1
printf '%s' "$2" > "$1"
