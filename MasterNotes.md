# RNA Seq project workflow
## Raw data 
Started working on files WTC1_1.fq.gz (fwr) and WTC1_2.fq.gz (rev)- both for isolate C. 
## Quality analysis and trimming
Ran fastqc to evaluate the quality of the reads and looked at results (WTC1_1_fastqc.html and WTC1_2_fastqc.html) to determine optimum trimming setting.
Trimmed reads according to settings in vartrimmomatic_script.SBATCH.
Repeated fastqc analysis on trimmed files to confirm improvements in per-base sequence quality and per-base sequence content (WTC1_1.trPE_fastqc.html and WTC1_2.trPE_fastqc.html).
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
