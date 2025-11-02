#! /usr/bin/env bash

filename=$1
n=$(wc -l < "$filename")

for file in "$@"; do
	if [[ ! -f "$filename" ]]; then
		echo "Error: $filename does not exist :("
		exit 2
	fi

	if [[ "$n" -eq 0 ]]; then
		echo " "$filename" has no lines"
	elif [[ "$n" -eq 1 ]]; then
		echo " "$filename" has 1 line"
	else 
		echo " "$filename" has more than 1 line"
	fi
done
