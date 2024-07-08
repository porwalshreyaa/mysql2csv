#!/bin/bash

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <mysql_dump_file.sql>"
    exit 1
fi

# Extract data from MySQL dump file
awk '/INSERT INTO/{gsub(/\\\(/," ("); print}' "$1" | \
sed -e 's/INSERT INTO.*VALUES //g' \
    -e 's/;$//g' \
    -e 's/),(/)\n(/g' \
    -e 's/\\'\''/'\''/g' > extracted_data.txt

# Convert extracted data to CSV
awk 'BEGIN{FS=",";OFS=","} {gsub(/\(/,"",$1); gsub(/\)/,"",$NF); print}' extracted_data.txt > output.csv

# Cleanup temporary file
rm extracted_data.txt

echo "CSV file generated: output.csv"
