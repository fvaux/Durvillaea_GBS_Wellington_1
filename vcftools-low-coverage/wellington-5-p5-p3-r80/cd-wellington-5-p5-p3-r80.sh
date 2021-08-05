#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 00:30:00
#SBATCH --mem=3G
#SBATCH -J cd-wellington-5-p5-p3-r80
#SBATCH --hint=nomultithread
#SBATCH -D /nesi/nobackup/uoo02915/VCFtools

module load VCFtools #load VCFtools

vcftools --vcf wellington-5-p5-p3-r80.vcf --minDP 8 --recode --out wellington-5-p5-p3-r80-X
vcftools --vcf wellington-5-p5-p3-r80-X.recode.vcf --max-missing .6 --recode --out wellington-5-p5-p3-r80-Y
diff wellington-5-p5-p3-r80-X.recode.vcf wellington-5-p5-p3-r80-Y.recode.vcf | grep -v "^#" | cut -f1-3 > low-coverage-loci.txt
