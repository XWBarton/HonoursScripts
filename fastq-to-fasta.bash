#!/bin/bash

spinner()
{
    local pid=$1
    local delay=0.75
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

echo Input fastq file:
	read -e FASTQ
	eval FASTA=$FASTQ

echo Output fasta file:
	read FASTA

echo Converting...

sed -n '1~4s/^@/>/p;2~4p' $FASTQ > $FASTA & spinner $!

echo Done.
