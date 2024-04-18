#!/bin/bash
#author:Tesmol shaji
INPUT_FILE="grades.txt"
if[[!-f"$INPUT_FILE"]] then
echo"Input file not found!"
exit 1
fi
declare -A grades
while read line;do
name=$(echo"$line"|cut-d','-f1)
grade=$(echo"$line"|cut-d','-f2)
grades["$name"]=$grade
done<"$INPUT_FILE"
for name in"${!grades[@]}";do
echo"$name:${grades[$name]}"
done


