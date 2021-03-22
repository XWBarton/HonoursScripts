#!/bin/bash

#prefix for experiment output files

echo "Classification ID:"
	read ID

#path to kraken2 database

DBPATH=~/storage/kraken/tick-db
eval DBPATH=$DBPATH

#path to forward reads

echo "Forward reads path:"
read -e DATAPATHF
eval DATAPATHF=$DATAPATHF

#path to reverse reads

echo "Reverse reads path:"
read -e DATAPATHR
eval DATAPATHR=$DATAPATHR

#saving kraken2 report

REPORT=~/storage/kraken/reports/$ID.kraken
eval REPORT=$REPORT

#saving bracken report

BREPORT=~/storage/bracken/reports/$ID.bracken
eval BREPORT=$BREPORT

#number of threads being used

THREADS=16

#kraken2 and bracken commands

kraken2 --paired --threads $THREADS --db $DBPATH --report $REPORT $DATAPATHF $DATAPATHR

bracken -d $DBPATH -i $REPORT -o $BREPORT -r 250 -l S
