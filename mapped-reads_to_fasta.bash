#!/bin/bash

echo "Mapping output SAM:"
	read -e SAM
	eval SAM=$SAM

echo "FASTA file name:"
	read -e FASTA
	eval FASTA=$FASTA

samtools view -b -F 4 $SAM > $FASTA.bam

samtools fasta $FASTA.bam > $FASTA.fasta
