#!/bin/bash
#alphabetical sorted order based on the numbers in the first column ($1)
#ALPHAS=`awk '{print $1, $2, $3, $4}' sort.txt | sort`
#echo "$ALPHAS /n" >> alpha-sort.txt 
#cat size-sort.txt

sort --field-separator=';' -k 1 -o "alpha-sort.txt" "sort.txt"
#sort based on the alphabetical order
sort --field-separator=';' -h -k 2 -o "size-sort.txt" "sort.txt"
#sort based on the human readable sizes
sort --field-separator=';' -k 3M -o "date-sort.txt" "sort.txt" 
#sort based on the date - the month e.g Jan only 3 letters for each month
sort --field-separator=';' -k 4n -o "value-sort.txt" "sort.txt"
#sort based on the decimal values 

#-o outputs the file to from sort.txt to create the new file
#k chooses the columns
#1 is the 1st column 
#2 is the 2nd column
#3m is 3rd column but sorted by the month
#4n is the 4th column sorted by numbers
