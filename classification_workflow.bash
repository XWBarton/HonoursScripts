#!/bin/bash

echo "Classification ID:"
	read ID

DBPATH=~/storage/kraken/ali-db
eval DBPATH=$DBPATH

echo "Forward reads path:"
read -e DATAPATHF
#DATAPATHF=~/storage/data/trim/lane2-r1-trim.fastq
eval DATAPATHF=$DATAPATHF


echo "Reverse reads path:"
read -e DATAPATHR
#DATAPATHR=~/storage/data/trim/lane2-r2-trim.fastq
eval DATAPATHR=$DATAPATHR

REPORT=~/storage/bracken/$ID.kraken
#REPORT=~/storage/data/trim/$ID-lane2_tick-db.kraken
eval REPORT=$REPORT

BREPORT=~/storage/bracken/$ID.bracken
#BREPORT=~/storage/data/trim/$ID-lane2_tick-db.bracken
eval BREPORT=$BREPORT

THREADS=16

kraken2 --paired --threads $THREADS --db $DBPATH --report $REPORT $DATAPATHF $DATAPATHR

bracken -d $DBPATH -i $REPORT -o $BREPORT -r 250 -l S
