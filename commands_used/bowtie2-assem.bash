#!/bin/bash

bowtie2 -f --threads 16 -x ~/storage/bowtie2/H.sapiens/H.sapiens --very-sensitive-local -S 7.1-lane1-h.sap-assem.sam \
-U ~/storage/megahit/lane1/final.contigs.fa
