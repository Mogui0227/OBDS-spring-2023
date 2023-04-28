#!/bin/sh

#SBATCH --time=02:30:00
#SBATCH --ntasks=4
#SBATCH --mem=6G

hisat2 --threads 4 \
-x /databank/igenomes/Mus_musculus/Ensembl/GRCm38/Sequence/HISAT2/genome \
-1 ERR1755084_1.fastq.gz
-2 ERR1755084_2.fastq.gz 
--rna-strandness RF \ ≈
--summary-file hisat2_run_stats.txt \
-S ERR1755084.sam


