#!/bin/bash -l
#SBATCH -A snic2021-5-20
#SBATCH --job-name=repmask_Vaness_DToL
#SBATCH -n 16
#SBATCH --time=24:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=daria.shipilina@gmail.com
#SBATCH -p node

#module load bioinfo-tools
module load RepeatMasker/4.0.8
RepeatMasker -pa 20 -s -lib AR_CF_BoP_CC_BC.lib -gccalc -dir ./ -a -x -poly -html -gff -u -xm -excln GCF_009819885.2_bCatUst1.pri.v2_genomic.fna.gz


/nfs/scistore07/clustersw/shared/RepeatMasker/4.1.2/RepeatMasker/RepeatMasker -pa 20 -s -lib /nfs/scistore18/bartogrp/dshipili/Thrush/00_TEannotoation/AR_CF_BoP_CC_BC.lib -gccalc -dir ./ -a -x -poly -html -gff -u -xm -excln /nfs/scistore18/bartogrp/dshipili/Thrush/00_TEannotoation/GCF_009819885.2_bCatUst1.pri.v2_genomic.fna.gz

/nfs/scistore07/clustersw/shared/RepeatMasker/4.1.2/RepeatMasker/RepeatMasker -pa 20 -s -lib /nfs/scistore18/bartogrp/dshipili/Thrush/00_TEannotoation/AR_CF_BoP_CC_BC.lib -dir /nfs/scistore18/bartogrp/dshipili/Thrush/00_TEannotoation/ -a -x -poly -html -gff -u -xm /nfs/scistore18/bartogrp/dshipili/Thrush/00_TEannotoation/GCF_009819885.2_bCatUst1.pri.v2_genomic.fna.gz

NOTHING WORKS!!!

Another solution:
cd /proj/uppstore2017185/b2014034_nobackup/Dasha/GenomeEvaluation_Turdus
