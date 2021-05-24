#!/bin/bash

# If a number is provided, print that many newlines. Otherwise, print 50 of
# them. Using this instead of `clear` helps to distinguish the output of
# different programs.

numNewlines=100

if [[ $# -ne 0 ]]; then
	numNewlines=$1
fi

for ((i = 1; i <= $numNewlines; i++)); do
	echo
done
