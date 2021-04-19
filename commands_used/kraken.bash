#!/bin/bash

#Lane 1

#kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_lane1.kraken\
# ~/storage/data/CTL-1/trim/lane1-r1-trim.fastq ~/storage/data/CTL-1/trim/lane1-r2-trim.fastq

#kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_lane1.kraken\
# ~/storage/data/CTL-1/trim/lane1-r1-trim.fastq ~/storage/data/CTL-1/trim/lane1-r2-trim.fastq

#kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_lane1.kraken\
# ~/storage/data/CTL-1/trim/lane1-r1-trim.fastq ~/storage/data/CTL-1/trim/lane1-r2-trim.fastq

#kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_lane1.kraken\
# ~/storage/data/CTL-1/trim/lane1-r1-trim.fastq ~/storage/data/CTL-1/trim/lane1-r2-trim.fastq

#Lane 2

#kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_lane2.kraken\
# ~/storage/data/CTL-1/trim/lane2-r1-trim.fastq ~/storage/data/CTL-1/trim/lane2-r2-trim.fastq

#kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_lane2.kraken\
# ~/storage/data/CTL-1/trim/lane2-r1-trim.fastq ~/storage/data/CTL-1/trim/lane2-r2-trim.fastq

#kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_lane2.kraken\
# ~/storage/data/CTL-1/trim/lane2-r1-trim.fastq ~/storage/data/CTL-1/trim/lane2-r2-trim.fastq

#kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_lane2.kraken\
# ~/storage/data/CTL-1/trim/lane2-r1-trim.fastq ~/storage/data/CTL-1/trim/lane2-r2-trim.fastq

#R.linnaei

#kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_r.lin.kraken\
# ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_1.fastq ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_2.fastq

#kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_r.lin.kraken\
# ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_1.fastq ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_2.fastq

#kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_r.lin.kraken\
# ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_1.fastq ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_2.fastq

#kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_r.lin.kraken\
# ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_1.fastq ~/storage/SRA/R.linnaei/trim/R.linnaei_trim_2.fastq

#R.appendiculatus

kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_r.app.kraken\
 ~/storage/SRA/R.appendiculatus/trim/SRR11263445_1_trim.fastq ~/storage/SRA/R.appendiculatus/trim/SRR11263445_2_trim.fastq

kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_r.app.kraken\
 ~/storage/SRA/R.appendiculatus/trim/SRR11263445_1_trim.fastq ~/storage/SRA/R.appendiculatus/trim/SRR11263445_2_trim.fastq

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_r.app.kraken\
 ~/storage/SRA/R.appendiculatus/trim/SRR11263445_1_trim.fastq ~/storage/SRA/R.appendiculatus/trim/SRR11263445_2_trim.fastq

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_r.app.kraken\
 ~/storage/SRA/R.appendiculatus/trim/SRR11263445_1_trim.fastq ~/storage/SRA/R.appendiculatus/trim/SRR11263445_2_trim.fastq

#D. variablilis

kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_d.var.kraken\
 ~/storage/SRA/D.variabilis/trim/SRR5317834_1.fastq ~/storage/SRA/D.variabilis/trim/SRR5317834_2.fastq

kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_d.var.kraken\
 ~/storage/SRA/D.variabilis/trim/SRR5317834_1.fastq ~/storage/SRA/D.variabilis/trim/SRR5317834_2.fastq

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_d.var.kraken\
 ~/storage/SRA/D.variabilis/trim/SRR5317834_1.fastq ~/storage/SRA/D.variabilis/trim/SRR5317834_2.fastq

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_d.var.kraken\
 ~/storage/SRA/D.variabilis/trim/SRR5317834_1.fastq ~/storage/SRA/D.variabilis/trim/SRR5317834_2.fastq

#Tick Virome

#kraken2 --db ~/storage/kraken/tick-db --threads 16 --paired --report ~/storage/kraken/reports/current/1_tick-db_viro.kraken\
# ~/storage/SRA/tick-virome/trim/tick-virome_1_trim.fastq ~/storage/SRA/tick-virome/trim/tick-virome_2_trim.fastq

#kraken2 --db ~/storage/kraken/standard --threads 16 --paired --report ~/storage/kraken/reports/current/2_standard_viro.kraken\
# ~/storage/SRA/tick-virome/trim/tick-virome_1_trim.fastq ~/storage/SRA/tick-virome/trim/tick-virome_2_trim.fastq

#kraken2 --db ~/storage/kraken/microbe-db --threads 16 --paired --report ~/storage/kraken/reports/current/3_microbe-db_viro.kraken\
# ~/storage/SRA/tick-virome/trim/tick-virome_1_trim.fastq ~/storage/SRA/tick-virome/trim/tick-virome_2_trim.fastq

#kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --paired --report ~/storage/kraken/reports/current/4_tick+human-db_viro.kraken\
# ~/storage/SRA/tick-virome/trim/tick-virome_1_trim.fastq ~/storage/SRA/tick-virome/trim/tick-virome_2_trim.fastq
