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

#------------- Define variables with file locations -----------#

adapters=/home/djc154/HW4_input_files/TruSeq3-PE.fa

input_R1=/home/djc154/RNASeq/WTC1_1.fq
input_R2=/home/djc154/RNASeq/WTC1_2.fq

output_R1_PE=/home/djc154/RNASeq/WTC1_1.trPE.fq.gz
output_R2_PE=/home/djc154/RNASeq/WTC1_2.trPE.fq.gz
output_R1_SE=/home/djc154/RNASeq/WTC1_1.trSE.fq.gz
output_R2_SE=/home/djc154/RNASeq/WTC1_2.trPE.fq.gz

#- RUN command ----------------------------------------------------------------#

trimmomatic PE \
$input_R1 \
$input_R2 \
$output_R1_PE $output_R1_SE \
$output_R2_PE $output_R2_SE \
ILLUMINACLIP:$adapters:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75

module unload trimmomatic
#- FIN -----------------------------------------------------------------------#
