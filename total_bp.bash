#!/bin/bash

echo "Input FASTA File:"
	read -e FASTA
	eval FASTA=$FASTA

grep -v ">" $FASTA | wc | awk '{print $3-$1}'
