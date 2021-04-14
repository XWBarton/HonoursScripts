#!/bin/bash

echo "Path to SAM/BAM file:"
read -e FILE
eval FILE=$FILE


samtools depth -a $FILE | awk '{c++;s+=$3}END{print s/c}'

samtools depth -a $FILE | awk '{c++; if($3>0) total+=1}END{print (total/c)*100}'

samtools flagstat $FILE | awk -F "[(|%]" 'NR == 3 {print $2}'
