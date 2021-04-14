#!/bin/bash

#Lane 1

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_lane1-assem.kraken\
 ~/storage/megahit/lane1/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_lane1-assem.kraken\
 ~/storage/megahit/lane1/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_lane1-assem.kraken\
 ~/storage/megahit/lane1/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --report ~/storage/kraken/reports/current/4.1_tick+human-db_lane1-assem.kraken\
 ~/storage/megahit/lane1/final.contigs.fa

#Lane 2

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_lane2-assem.kraken\
 ~/storage/megahit/lane2/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_lane2-assem.kraken\
 ~/storage/megahit/lane2/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_lane2-assem.kraken\
 ~/storage/megahit/lane2/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 ~/storage/kraken/reports/current/4.1_tick+human-db_lane2-assem.kraken\
 ~/storage/megahit/lane2/final.contigs.fa

#R.linnaei

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_r.lin-assem.kraken\
 ~/storage/megahit/R.linnaei/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_r.lin-assem.kraken\
 ~/storage/megahit/R.linnaei/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_r.lin-assem.kraken\
 ~/storage/megahit/R.linnaei/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --report ~/storage/kraken/reports/current/4.1_tick+human-db_r.lin-assem.kraken\
 ~/storage/megahit/R.linnaei/final.contigs.fa

#R.appendicularis

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_r.app-assem.kraken\
 ~/storage/megahit/R.appendiculatus/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_r.app-assem.kraken\
 ~/storage/megahit/R.appendiculatus/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_r.app-assem.kraken\
 ~/storage/megahit/R.appendiculatus/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --report ~/storage/kraken/reports/current/4.1_tick+human-db_r.app-assem.kraken\
 ~/storage/megahit/R.appendiculatus/final.contigs.fa


#D. variablilis

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_d.var-assem.kraken\
 ~/storage/megahit/D.variabilis/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_d.var-assem.kraken\
 ~/storage/megahit/D.variabilis/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_d.var-assem.kraken\
 ~/storage/megahit/D.variabilis/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --report ~/storage/kraken/reports/current/4.1_tick+human-db_d.var-assem.kraken\
 ~/storage/megahit/D.variabilis/final.contigs.fa

#Tick Virome

kraken2 --db ~/storage/kraken/tick-db --threads 16 --report ~/storage/kraken/reports/current/1.1_tick-db_viro-assem.kraken\
 ~/storage/megahit/tick-virome/final.contigs.fa

kraken2 --db ~/storage/kraken/standard --threads 16 --report ~/storage/kraken/reports/current/2.1_standard_viro-assem.kraken\
 ~/storage/megahit/tick-virome/final.contigs.fa

kraken2 --db ~/storage/kraken/microbe-db --threads 16 --report ~/storage/kraken/reports/current/3.1_microbe-db_viro-assem.kraken\
 ~/storage/megahit/tick-virome/final.contigs.fa

kraken2 --db ~/storage/kraken/tick+human-db --threads 16 --report ~/storage/kraken/reports/current/4.1_tick+human-db_viro-assem.kraken\
 ~/storage/megahit/tick-virome/final.contigs.fa
