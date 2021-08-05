#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 00:30:00
#SBATCH --mem=3G
#SBATCH -J hc-uplift-1-p4-p2-r80-B
#SBATCH --hint=nomultithread
#SBATCH -D /nesi/nobackup/uoo02915/VCFtools

module load VCFtools #load VCFtools

vcftools --vcf uplift-1-p4-p2-r80-B.vcf  --interchrom-geno-r2 --min-r2 0.8
cut -f 1-2 out.interchrom.geno.ld | uniq > LD1snp.txt
#LD1snp.txt will be a exlcuded loci list that should be fed to the exclude function:
vcftools --vcf uplift-1-p4-p2-r80-B.vcf --exclude-positions LD1snp.txt --recode --recode-INFO-all