#!/bin/bash

#Script to extract 100 lines from NGS fasta or fastq files and run them through blast

#Input NGS Sequences

echo "Input sequences (.fasta or .fastq only):"
	read -e SEQ
	eval SEQ=$SEQ

#Line Count

COUNT=`wc -l $SEQ`
set -- $COUNT
echo $1
LINES=$1

echo $LINES lines counted.

#Random Line Picker

echo Picking starting line...

NUMBER=$(( $RANDOM % $LINES + 1 ))

#Odd Line Checker

while [ $(($NUMBER%2)) -eq 0 ]
	do
 		NUMBER=$(( $RANDOM % $LINES + 1 ))
		echo $NUMBER
	done

#End Number Calculation

if [[ $SEQ == *.txt ]]
	then
	ENDNUM=$(expr $NUMBER + 401)
	else
	ENDNUM=$(expr $NUMBER + 201)
fi

echo Picking 100 sequences from lines $NUMBER to $ENDNUM.

#Extract 100 Lines From Random Line Picker and save to a file

sed -n "$NUMBER, $ENDNUM p" $SEQ > 100_sequences_of_$SEQ

echo 100 sequences saved as 100_sequences_of_$SEQ
