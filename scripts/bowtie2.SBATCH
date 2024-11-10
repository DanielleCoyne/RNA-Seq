#!/bin/bash
#SBATCH --job-name=example.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=djc154@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

#--------------------------------------------------------------------------------------------------------#
# This script runs bowtie2 to slign reads      #
#--------------------------------------------------------------------------------------------------------#

module load bowtie2/2.5.3

#- RUN command ----------------------------------------------------------------#

bowtie2 -x baseindex \
-1 WTC1_1.trPE.fq \
-2 WTC1_2.trPE.fq \
-S WTC1.sam

module unload bowtie2/2.5.3

#- FIN -----------------------------------------------------------------------#
