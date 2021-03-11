#!/bin/bash


THREADS=16

DB=~/storage/kraken/microbe-db

kraken2-build --download-taxonomy --threads $THREADS --db $DB

kraken2-build --download-library bacteria --threads $THREADS --db $DB

kraken2-build --download-library viral --threads $THREADS --db $DB

kraken2-build --download-library protozoa --threads $THREADS --db $DB

kraken2-build --build --db $DB --threads $THREADS

echo "Done."
