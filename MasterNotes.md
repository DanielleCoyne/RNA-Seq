Started working on files WTC1_1.fq.gz (fwr) and WTC1_2.fq.gz (rev)- both for isolate C. 
#Fastqc
Ran fastqc to evaluate the quality of the reads and looked at results (WTC1_1_fastqc.html and WTC1_2_fastqc.html) to determine optimum trimming setting.
Trimmed reads according to settings in vartrimmomatic_script.SBATCH
Repeated fastqc analysis on trimmed files to confirm improvements in per-base sequence quality and per-base sequence content.
