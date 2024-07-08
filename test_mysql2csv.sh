#!/bin/bash

# Test script for mysql2csv

# Test case 1: Basic MySQL dump file
./mysql2csv sample_dump.sql > output.csv
echo "Test case 1: Basic MySQL dump file"
cat output.csv

# Test case 2: MySQL dump file with complex data
./mysql2csv complex_dump.sql > output_complex.csv
echo "Test case 2: MySQL dump file with complex data"
cat output_complex.csv

echo "Remove the sample output files when you are done checking."
