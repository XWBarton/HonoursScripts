#!/bin/bash

./bracken-build -k 37 -l 250 -d ~/storage/kraken/tick-db -t 16


~/Bracken/./bracken -d ~/storage/kraken/tick-db -i ~/storage/kraken/kraken-lane1.txt -o lane1_tick-db.bracken -w bracken_tick-db_lane1.txt -r 250 -l G
