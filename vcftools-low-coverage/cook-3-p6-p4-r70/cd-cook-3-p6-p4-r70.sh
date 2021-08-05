#!/bin/sh
#SBATCH -A uoo02915
#SBATCH -t 00:30:00
#SBATCH --mem=3G
#SBATCH -J cd-cook-3-p6-p4-r70
#SBATCH --hint=nomultithread
#SBATCH -D /nesi/nobackup/uoo02915/VCFtools

module load VCFtools #load VCFtools

#Includes only genotypes greater than or equal to the "--minDP" value
vcftools --vcf cook-3-p6-p4-r70.vcf --minDP 8 --recode --out cook-3-p6-p4-r70-X

#Exclude sites on the basis of the proportion of missing data
#(defined to be between 0 and 1, where 0 allows sites that are completely missing and 1 indicates no missing data allowed)
vcftools --vcf cook-3-p6-p4-r70-X.recode.vcf --max-missing .4 --recode --out cook-3-p6-p4-r70-Y

#Find difference in loci after this filtering
diff cook-3-p6-p4-r70-X.recode.vcf cook-3-p6-p4-r70-Y.recode.vcf | grep -v "^#" | cut -f1-3 > low-coverage-loci.txt
