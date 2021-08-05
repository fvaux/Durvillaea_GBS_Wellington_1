#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 12:00:00
#SBATCH --mem=12G
#SBATCH -c 10
#SBATCH -J wellington-5-p5-p3-r80-A
#SBATCH -D /nesi/nobackup/uoo02915/STACKS/stacks_out/wellington-5

module load Stacks/2.53-gimkl-2020a

populations -t 10 -P /nesi/nobackup/uoo02915/STACKS/stacks_out/wellington-5 -M /nesi/nobackup/uoo02915/STACKS/maps/wellington-3-p5.txt -B /nesi/nobackup/uoo02915/STACKS/excluded-lists/wellington-5-p5-p3-r80-A.list -r 0.80 -p 3 --min-maf 0.05 --write-single-snp --write-single-snp --structure --fstats --genepop --plink --vcf --hzar --fasta-loci --fasta-samples --phylip --phylip-var