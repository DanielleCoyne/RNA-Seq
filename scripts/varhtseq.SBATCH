#!/bin/bash
#SBATCH --job-name=htseq.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=djc154@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=12:00:00
#SBATCH --mem=4G

#-------------------------------------------------------------#
# This script uses htseq to count and assign reads to genes #

source activate htseq

#- Set variables ---------------------------------------------------------#
htseq=/home/djc154/.conda/envs/htseq/bin/htseq-count
bam=/home/djc154/WTC1.srt.bam
gtf=/home/djc154/GCF_000182965.3_ASM18296v3_genomic.gtf
samout=/home/djc154/WTC1_htseqCount

#-- Run script -----------------------------------------------------------#

$htseq \
 -f bam \
-r pos \
-s no \
-t exon \
-i gene_id \
-o $samout \
$bam \
$gtf \

