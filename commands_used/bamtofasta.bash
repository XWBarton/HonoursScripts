#!/bin/bash

#samtools fasta -@ 16 -1 ~/storage/bowtie2/reports/lane1/fastq/5.1-lane1-H.longicornis_1.fasta -2 ~/storage/bowtie2/reports/lane1/fastq/5.1-lane1-H.longicornis_2.fasta ~/storage/bowtie2/reports/5.1-lane1-H.longicornis.sam

samtools fasta -@ 16 -1 ~/storage/bowtie2/reports/R.linnaei/fastq/2.1_r.lin-bt2-R.microplus_1.fasta -2 ~/storage/bowtie2/reports/R.linnaei/fastq/2.1_r.lin-bt2-R.microplus_2.fasta ~/storage/bowtie2/reports/R.linnaei/2.1_r.lin-bt2-R.microplus.sam

samtools fasta -@ 16 -1 ~/storage/bowtie2/reports/R.appendiculatus/fastq/5.1_r.app_bt2_R.microplus_1.fasta -2 ~/storage/bowtie2/reports/R.appendiculatus/fastq/5.1_r.app_bt2_R.microplus_2.fasta ~/storage/bowtie2/reports/R.appendiculatus/5.1_r.app_bt2_R.microplus.sam

samtools fasta -@ 16 -1 ~/storage/bowtie2/reports/D.variabilis/fastq/4.1_d.var_bt2_D.silvarum_1.fasta -2 ~/storage/bowtie2/reports/D.variabilis/fastq/4.1_d.var_bt2_D.silvarum_2.fasta ~/storage/bowtie2/reports/D.variabilis/4.1_d.var_bt2_D.silvarum.sam

samtools fasta -@ 16 -1 ~/storage/bowtie2/reports/tick-virome/fastq/4.1_tick-vir_bt2_H.longicornis_1.fasta -2 ~/storage/bowtie2/reports/tick-virome/fastq/4.1_tick-vir_bt2_H.longicornis_2.fasta ~/storage/bowtie2/reports/tick-virome/4.1_tick-vir_bt2_H.longicornis.sam

#Assembeled

#samtools fastq -@ 16 -0 ~/storage/bowtie2/reports/lane1/fastq/ ~/storage/bowtie2/reports

#samtools fastq -@ 16 -0 ~/storage/bowtie2/reports/ ~/storage/bowtie2/reports

#samtools fastq -@ 16 -0 ~/storage/bowtie2/reports/ ~/storage/bowtie2/reports

#samtools fastq -@ 16 -0 ~/storage/bowtie2/reports/ ~/storage/bowtie2/reports

#samtools fastq -@ 16 -0 ~/storage/bowtie2/reports/ ~/storage/bowtie2/reports
