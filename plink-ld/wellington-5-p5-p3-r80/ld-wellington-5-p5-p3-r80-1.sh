#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 00:30:00
#SBATCH --mem=3G
#SBATCH -J ld-wellington-5-p5-p3-r80-1
#SBATCH --hint=nomultithread
#SBATCH -D /nesi/nobackup/uoo02915/PLINK

module load PLINK

plink --file wellington-5-p5-p3-r80-1.plink --r2 --ld-window-r2 0.8 --out wellington-5-p5-p3-r80-1-ld --allow-extra-chr
