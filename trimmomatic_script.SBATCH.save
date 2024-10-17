#!/bin/bash
#SBATCH --job-name=trimmomatic.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=djc154@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=12:00:00
#SBATCH --mem=4G

#--------------------------------------------------------------------------------------------------------#
# This script runs trimmomatic to clean fastq files       #
#--------------------------------------------------------------------------------------------------------#

#------------- set environment, load module ------------------#

shopt -s expand_aliases
module load trimmomatic

#- RUN command ----------------------------------------------------------------#

trimmomatic PE \
EC-12_R1_001.fastq \
EC-12_R2_001.fastq \
3output_R1_pairedend.fq.gz 3output_R1_singleend.fq.gz \
3output_R2_pairedend.fq.gz 3output_R2_singleend.fq.gz \
LEADING:10 \
TRAILING:10 \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
SLIDINGWINDOW:4:15 \
MINLEN:75


#- FIN -----------------------------------------------------------------------#
