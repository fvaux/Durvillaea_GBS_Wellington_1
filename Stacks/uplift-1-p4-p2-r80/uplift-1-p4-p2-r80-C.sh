#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 12:00:00
#SBATCH --mem=12G
#SBATCH -c 10
#SBATCH -J uplift-1-p4-p2-r80-C
#SBATCH -D /nesi/nobackup/uoo02915/STACKS/stacks_out/uplift-1

module load Stacks/2.53-gimkl-2020a

populations -t 10 -P /nesi/nobackup/uoo02915/STACKS/stacks_out/uplift-1 -M /nesi/nobackup/uoo02915/STACKS/maps/uplift-model-4.txt -B /nesi/nobackup/uoo02915/STACKS/excluded-lists/uplift-1-p4-p2-r80-C.list -r 0.8 -p 2 --min-maf 0.05 --write-single-snp --write-single-snp --structure --fstats --genepop --plink --vcf --hzar --fasta-loci --fasta-samples --phylip --phylip-var