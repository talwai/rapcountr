#!/bin/bash
FILES=lyrics/*

for FILE in $FILES
do
    echo "Processing $FILE"
    python src/counting.py $FILE
done

