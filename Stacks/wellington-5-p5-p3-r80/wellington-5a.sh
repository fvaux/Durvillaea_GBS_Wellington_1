#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 48:00:00
#SBATCH --mem=12G
#SBATCH -c 12
#SBATCH -J wellington-5a
#SBATCH -D /nesi/nobackup/uoo02915/STACKS/stacks_out/wellington-5

module load Stacks/2.53-gimkl-2020a

denovo_map.pl -T 12 -o /nesi/nobackup/uoo02915/STACKS/stacks_out/wellington-5 --popmap /nesi/nobackup/uoo02915/STACKS/maps/wellington-3-p4.txt --samples /nesi/nobackup/uoo02915/STACKS/paired/combined --paired -X "ustacks: -m 3 -M 2 --model_type bounded --bound_high 0.05" -X "cstacks:-n 2" -X "populations: -r 0.7 -p 2 --min-maf 0.05 --write-single-snp --structure --fstats --genepop --plink --vcf --hzar --fasta-loci --fasta-samples --phylip --phylip-var"