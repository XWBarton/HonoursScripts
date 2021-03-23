#!/bin/bash

echo "Building this database will take a long time, make sure there is a good internet connection and that it won't fail by the computer"
echo "switching off etc. If using SSH it is recommended using the program 'screen' so you can leave the process to run in the background"

echo "How many threads would you like to use?"

	read THREADS

echo "Building tick-db..."

# Making file system for database and genome storage

mkdir ~/storage/kraken
mkdir ~/storage/kraken/tick+human-db
mkdir ~/storage/kraken/tick-db-genomes
mkdir ~/storage/kraken/tick-db-genomes/tick
mkdir ~/storage/kraken/tick-db-genomes/marsupial
mkdir ~/storage/kraken/tick-db-genomes/mammal

DB=~/storage/kraken/tick-db
eval DB=$DB

GENOMES=~/storage/kraken/tick-db-genomes
eval GENOMES=$GENOMES

# Adding Bacteria / Virus / Protozoa to tick-db libarary

kraken2-build --download-taxonomy --threads $THREADS --db $DB

kraken2-build --download-library bacteria --threads $THREADS --db $DB

kraken2-build --download-library viral --threads $THREADS --db $DB

kraken2-build --download-library protozoa --threads $THREADS --db $DB

# Downloading / Unzipping / Renaming Tick Genomes

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/892/825/GCF_002892825.2_ISE6_asm2.2_deduplicated/\
GCF_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna.gz
gunzip $GENOMES/tick/GCF_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna.gz
cp $GENOMES/tick/GCF_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna $GENOMES/tick/I.scapularis.fna
rm $GENOMES/tick/GCF_002892825.2_ISE6_asm2.2_deduplicated_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/013/339/695/GCF_013339695.1_ASM1333969v1/GCF\
_013339695.1_ASM1333969v1_genomic.fna.gz
gunzip $GENOMES/tick/GCF_013339695.1_ASM1333969v1_genomic.fna.gz
cp $GENOMES/tick/GCF_013339695.1_ASM1333969v1_genomic.fna $GENOMES/tick/R.sanguineus.fna
rm $GENOMES/tick/GCF_013339695.1_ASM1333969v1_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/013/339/725/GCF_013339725.1_ASM1333972v1/GCF\
_013339725.1_ASM1333972v1_genomic.fna.gz
gunzip $GENOMES/tick/GCF_013339725.1_ASM1333972v1_genomic.fna.gz
cp $GENOMES/tick/GCF_013339725.1_ASM1333972v1_genomic.fna $GENOMES/tick/R.microplus.fna
rm $GENOMES/tick/GCF_013339725.1_ASM1333972v1_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/013/358/835/GCA_013358835.1_BMI_IPER_1.0/\
GCA_013358835.1_BMI_IPER_1.0_genomic.fna.gz
gunzip $GENOMES/tick/GCA_013358835.1_BMI_IPER_1.0_genomic.fna.gz
cp $GENOMES/tick/GCA_013358835.1_BMI_IPER_1.0_genomic.fna $GENOMES/tick/I.persulcatus.fna
rm $GENOMES/tick/GCA_013358835.1_BMI_IPER_1.0_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/973/045/GCA_000973045.2_ASM97304v2/\
GCA_000973045.2_ASM97304v2_genomic.fna.gz
gunzip $GENOMES/tick/GCA_000973045.2_ASM97304v2_genomic.fna.gz
cp $GENOMES/tick/GCA_000973045.2_ASM97304v2_genomic.fna $GENOMES/tick/I.ricinus.fna
rm $GENOMES/tick/GCA_000973045.2_ASM97304v2_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/013/339/745/GCF_013339745.1_ASM1333974v1/\
GCF_013339745.1_ASM1333974v1_genomic.fna.gz
gunzip $GENOMES/tick/GCF_013339745.1_ASM1333974v1_genomic.fna.gz
cp $GENOMES/tick/GCF_013339745.1_ASM1333974v1_genomic.fna $GENOMES/tick/D.silvarum.fna
rm $GENOMES/tick/GCF_013339745.1_ASM1333974v1_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/013/339/765/GCA_013339765.1_ASM1333976v1/\
GCA_013339765.1_ASM1333976v1_genomic.fna.gz
gunzip $GENOMES/tick/GCA_013339765.1_ASM1333976v1_genomic.fna.gz
cp $GENOMES/tick/GCA_013339765.1_ASM1333976v1_genomic.fna $GENOMES/tick/H.longicornis.fna
rm $GENOMES/tick/GCA_013339765.1_ASM1333976v1_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/013/339/685/GCA_013339685.1_ASM1333968v1/\
GCA_013339685.1_ASM1333968v1_genomic.fna.gz
gunzip $GENOMES/tick/GCA_013339685.1_ASM1333968v1_genomic.fna.gz
cp $GENOMES/tick/GCA_013339685.1_ASM1333968v1_genomic.fna $GENOMES/tick/H.asiaticum.fna
rm $GENOMES/tick/GCA_013339685.1_ASM1333968v1_genomic.fna

wget -P $GENOMES/tick https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/013/436/015/GCA_013436015.1_TxGen_Rann/\
GCA_013436015.1_TxGen_Rann_genomic.fna.gz
gunzip $GENOMES/tick/GCA_013436015.1_TxGen_Rann_genomic.fna.gz
cp $GENOMES/tick/GCA_013436015.1_TxGen_Rann_genomic.fna $GENOMES/tick/R.annulatus
rm $GENOMES/tick/GCA_013436015.1_TxGen_Rann_genomic.fna

# Downloading / Unzipping / Renaming marsupial genomes

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/099/425/GCF_002099425.1_phaCin_unsw_v4.1/\
GCF_002099425.1_phaCin_unsw_v4.1_genomic.fna.gz
gunzip $GENOMES/marsupial/GCF_002099425.1_phaCin_unsw_v4.1_genomic.fna.gz
cp $GENOMES/marsupial/GCF_002099425.1_phaCin_unsw_v4.1_genomic.fna $GENOMES/marsupial/P.cinereus.fna
rm $GENOMES/marsupial/GCF_002099425.1_phaCin_unsw_v4.1_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/902/635/505/GCF_902635505.1_mSarHar1.11/\
GCF_902635505.1_mSarHar1.11_genomic.fna.gz
gunzip $GENOMES/marsupial/GCF_902635505.1_mSarHar1.11_genomic.fna.gz
cp $GENOMES/marsupial/GCF_902635505.1_mSarHar1.11_genomic.fna $GENOMES/marsupial/S.harrisii.fna
rm $GENOMES/marsupial/GCF_902635505.1_mSarHar1.11_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/004/035/GCA_000004035.1_Meug_1.1/\
GCA_000004035.1_Meug_1.1_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_000004035.1_Meug_1.1_genomic.fna.gz
cp $GENOMES/marsupial/GCA_000004035.1_Meug_1.1_genomic.fna $GENOMES/marsupial/N.eugenii.fna
rm $GENOMES/marsupial/GCA_000004035.1_Meug_1.1_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/813/085/GCA_904813085.1_ERS5079773_MarsupialExonCaptKit/\
GCA_904813085.1_ERS5079773_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904813085.1_ERS5079773_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904813085.1_ERS5079773_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/I.obesulus.fna
rm $GENOMES/marsupial/GCA_904813085.1_ERS5079773_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/812/355/GCA_904812355.1_ERS5079696_MarsupialExonCaptKit/\
GCA_904812355.1_ERS5079696_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904812355.1_ERS5079696_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904812355.1_ERS5079696_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/P.xanthopus.fna
rm $GENOMES/marsupial/GCA_904812355.1_ERS5079696_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/811/015/GCA_904811015.1_ERS5079592_MarsupialExonCaptKit/\
GCA_904811015.1_ERS5079592_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904811015.1_ERS5079592_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904811015.1_ERS5079592_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/I.auratus.fna
rm $GENOMES/marsupial/GCA_904811015.1_ERS5079592_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/812/665/GCA_904812665.1_ERS5079734_MarsupialExonCaptKit/\
GCA_904812665.1_ERS5079734_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904812665.1_ERS5079734_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904812665.1_ERS5079734_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/P.brachyotis.fna
rm $GENOMES/marsupial/GCA_904812665.1_ERS5079734_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/811/065/GCA_904811065.1_ERS5079590_MarsupialExonCaptKit/\
GCA_904811065.1_ERS5079590_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904811065.1_ERS5079590_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904811065.1_ERS5079590_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/I.macrourus.fna
rm $GENOMES/marsupial/GCA_904811065.1_ERS5079590_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/904/811/895/GCA_904811895.1_ERS5079657_MarsupialExonCaptKit/\
GCA_904811895.1_ERS5079657_MarsupialExonCaptKit_genomic.fna.gz
gunzip $GENOMES/marsupial/GCA_904811895.1_ERS5079657_MarsupialExonCaptKit_genomic.fna.gz
cp $GENOMES/marsupial/GCA_904811895.1_ERS5079657_MarsupialExonCaptKit_genomic.fna $GENOMES/marsupial/T.arnhemensis.fna
rm $GENOMES/marsupial/GCA_904811895.1_ERS5079657_MarsupialExonCaptKit_genomic.fna

wget -P $GENOMES/marsupial/ https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/900/497/805/GCF_900497805.2_bare-nosed_wombat_genome_assembly/\
GCF_900497805.2_bare-nosed_wombat_genome_assembly_genomic.fna.gz
gunzip $GENOMES/marsupial/GCF_900497805.2_bare-nosed_wombat_genome_assembly_genomic.fna.gz
cp $GENOMES/marsupial/GCF_900497805.2_bare-nosed_wombat_genome_assembly_genomic.fna $GENOMES/marsupial/V.ursinus.fna
rm $GENOMES/marsupial/GCF_900497805.2_bare-nosed_wombat_genome_assembly_genomic.fna

# Adding genomes to library

kraken2-build --add-to-library $GENOMES/tick/I.scapularis.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/R.sanguineus.fna  --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/R.microplus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/I.persulcatus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/I.ricinus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/D.silvarum.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/H.longicornis.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/H.asiaticum.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/tick/R.annulatus --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/P.cinereus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/S.harrisii.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/N.eugenii.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/V.ursinus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/T.arnhemensis.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/I.macrourus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/P.brachyotis.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/I.auratus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/P.xanthopus.fna --threads $THREADS --db $DB

kraken2-build --add-to-library $GENOMES/marsupial/I.obesulus.fna --threads $THREADS --db $DB

#kraken2-build --add-to-library  --threads $THREADS --db $DB

