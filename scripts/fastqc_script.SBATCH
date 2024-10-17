#!/bin/bash
#SBATCH --job-name=fastqc.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=djc154@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=12:00:00
#SBATCH --mem=4G

#---------------------------------------------#
# This script runs fastqc on fastq files and puts in directory fastqc_out #
#---------------------------------------------#

#----------- load module command-----------#

module load fastqc

#----------- run paired end mode-----------#

fastqc -o fastqc_out \
fastq files

#------- unload module command --------#

module unload fastqc

#- FIN -----------------#
