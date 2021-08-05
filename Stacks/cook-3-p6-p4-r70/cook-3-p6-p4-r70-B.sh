#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 12:00:00
#SBATCH --mem=12G
#SBATCH -c 10
#SBATCH -J cook-3-p6-p4-r70-B
#SBATCH -D /nesi/nobackup/uoo02915/STACKS/stacks_out/cook-3

module load Stacks/2.53-gimkl-2020a

populations -t 10 -P /nesi/nobackup/uoo02915/STACKS/stacks_out/cook-3 -M /nesi/nobackup/uoo02915/STACKS/maps/cook-1-p6.txt -B /nesi/nobackup/uoo02915/STACKS/excluded-lists/cook-3-p6-p4-r70-B.list -r 0.7 -p 4 --min-maf 0.05 --write-single-snp --write-single-snp --structure --fstats --genepop --plink --vcf --hzar --fasta-loci --fasta-samples --phylip --phylip-var