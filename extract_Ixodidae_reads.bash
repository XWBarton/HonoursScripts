#!/bin/bash

#python extract_kraken_reads.py -k ~/storage/kraken/output/r.lin_tick-db.fastq -1 ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_1.fastq -2 ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_2.fastq\
# -t 6939 --include-children -o ~/storage/kraken/output/r.lin-ixodidae_1.fastq -o2 ~/storage/kraken/output/r.lin_ixodidae_2.fastq --report ~/storage/kraken/output/r.lin-tick-db.kraken --fastq-output

echo "Kraken FASTQ Output:"
	read -e KRAKEN
	eval KRAKEN=$KRAKEN

echo "Forward FASTQ Reads Input into Kraken:"
	read -e FORWARD
	eval FORWARD=$FORWARD

echo "Reverse FASTQ Reads Input into Kraken:"
	read -e REVERSE
	eval REVERSE=$REVERSE

echo "Ixodidae Output File Name / Path:"
	read -e OUTPUT
	eval OUTPUT=$OUTPUT

echo "Kraken Report File:"
	read -e REPORT
	eval REPORT=$REPORT

python ~/git/KrakenTools/extract_kraken_reads.py -k $KRAKEN -1 $FORWARD -2 $REVERSE -t 6939 --include-children -o $OUTPUT.1.fastq -o2 $OUTPUT.2.fastq --report $REPORT --fastq-output
