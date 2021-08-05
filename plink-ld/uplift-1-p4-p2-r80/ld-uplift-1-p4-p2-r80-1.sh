#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 00:30:00
#SBATCH --mem=3G
#SBATCH -J ld-uplift-1-p4-p2-r80-1
#SBATCH --hint=nomultithread
#SBATCH -D /nesi/nobackup/uoo02915/PLINK

module load PLINK

plink --file uplift-1-p4-p2-r80-1.plink --r2 --ld-window-r2 0.8 --out ld-uplift-1-p4-p2-r80-1 --allow-extra-chr
