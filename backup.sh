#!/bin/bash

SRC_DIR=/home/dianav1/ansible
DST_DIR=/home/dianav1/bash/backup

if [ ! -d "$DST_DIR" ]; then
	mkdir -p "$DST_DIR"
fi

if [ ! -d "$SRC_DIR"  ]; then
	echo "Error: Source directory does not exist"
	exit 1
fi

for file in "$SRC_DIR"/*; do # Loops over each file in the SRC_DIR
	cp "$file" "$DST_DIR" # Copy the files to the DST_DIR
done


