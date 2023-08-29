#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: ./gencsv.sh <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2
output_file="inputFile"

# Clear the contents of the output file if it exists
> "$output_file"

count=$start_index
while [ $count -le $end_index ]
do
    rand=$((RANDOM%100))
    echo "$count, $rand" >> "$output_file"
    count=$(($count+1))
done

echo "Generated $((end_index - start_index + 1)) entries in $output_file"
