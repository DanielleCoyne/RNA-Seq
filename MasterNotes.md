# RNA Seq project workflow
## Experiment Overview
The overall goal of this project is to investigate how the presence of abscence of thiamine (Vitamin B) affects gene transcription in *Candida albicans*, an opportunistic fungal pathogen. Three isolates of wild type *C. albicans* (WTA, WTB, and WTC) were grown under two experimental treatments: in the presence of thiamine (thi+) and in the abscence of thiamine (thi-). Next, RNASeq was used to sequence the transcriptome of each of the isolates under each condition. This generated 6 sets of sequencing data (WTA1, WTA2, WTB1, WTB2, WTC1, and WTC2) labeled 1 for the presence of thiamine (1 = thi+) and 2 for the abscence of thiamine (2 = thi-). Each set of sequencing data generated 2 fasta files for the forward and reverse reads (for example: WTC1_1.fq.gz contains the forward reads for isolate C under thi+ conditions and WTC1_2.fq.gz contains the reverse reads).
## Raw data 
I worked on the RNA sequence data for isolate C in the presence of thiamine (WTC1). The raw data files are WTC1_1.fq.gz (fwr) and WTC1_2.fq.gz (rev).
## Quality analysis and trimming
I used fastqc software to evaluate the quality of the reads and looked at results (WTC1_1_fastqc.html and WTC1_2_fastqc.html) to determine optimum trimming setting. The number of reads in each fasta file (for forward and reverse reads) was 20752795 before cleaning. 
Then, I trimmed reads according to settings in vartrimmomatic_script.SBATCH.
After trimming, I repeated fastqc analysis on the trimmed files to confirm improvements in per-base sequence quality, per-base sequence content, and adapter contamination (WTC1_1.trPE_fastqc.html and WTC1_2.trPE_fastqc.html). The number of reads after trimming was 19924384, indicating that 96% of the reads were retained in the cleaning process. See https://docs.google.com/spreadsheets/d/1AOa-XaTzR_PKMIRQDmu8oDTmawXXnkIwEjKOQkNC7Vs/edit?gid=0#gid=0 for details on the quality analysis and trimming of the other data sets in this project. 
## Alignment
Aligned trimmed reads to reference C. albicans genome (GCF_000182965.3_ASM18296v3_genomic.fna.gz from NCBI) using bowtie2. Output: WTC1.sam. Results in z01 file: 19924384 reads; of these:
  19924384 (100.00%) were paired; of these:
    936104 (4.70%) aligned concordantly 0 times
    17783228 (89.25%) aligned concordantly exactly 1 time
    1205052 (6.05%) aligned concordantly >1 times
    ----
    936104 pairs aligned concordantly 0 times; of these:
      345379 (36.90%) aligned discordantly 1 time
    ----
    590725 pairs aligned 0 times concordantly or discordantly; of these:
      1181450 mates make up the pairs; of these:
        718444 (60.81%) aligned 0 times
        414129 (35.05%) aligned exactly 1 time
        48877 (4.14%) aligned >1 times
98.20% overall alignment rate.
Used samtools to convert the mapped reads from a .sam file to a sorted .bam file. 
