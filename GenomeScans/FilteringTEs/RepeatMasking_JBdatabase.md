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

#!/bin/bash -l
#SBATCH -A snic2022-5-34
#SBATCH --job-name=repmask_TurEun
#SBATCH -n 4
#SBATCH --time=20:00:00
#  maximum requested memory
#  write std out and std error to these files
#  send a mail for job start, end, fail, etc.
#SBATCH --mail-type=ALL
#SBATCH --mail-user=daria.shipilina@gmail.com

## my own code:
module load bioinfo-tools
module load RepeatMasker/4.0.8
RepeatMasker -pa 20 -s -lib AR_CF_BoP_CC_BC.lib -dir ./ -a -x -poly -html -gff -u -xm -excln GCF_009819885.2_bCatUst1.pri.v2_genomic.fna.gz


**WORKS!**

file name: GCF_009819885.2_bCatUst1.pri.v2_genomic.fna
sequences:           160
total length: 1131616530 bp  (1118714499 bp excl N/X-runs)
GC level:         42.48 %
bases masked:  103040385 bp ( 9.21 %)
==================================================
               number of      length   percentage
               elements*    occupied  of sequence
--------------------------------------------------
SINEs:             8177       968822 bp    0.09 %
      ALUs            0            0 bp    0.00 %
      MIRs         2999       327299 bp    0.03 %

LINEs:           138883     38770497 bp    3.47 %
      LINE1          76        18113 bp    0.00 %
      LINE2        1573       311034 bp    0.03 %
      L3/CR1     133815     38186940 bp    3.41 %

LTR elements:     72506     39924271 bp    3.57 %
      ERVL        41359     23513638 bp    2.10 %
      ERVL-MaLRs      0            0 bp    0.00 %
      ERV_classI  13042      6776153 bp    0.61 %
      ERV_classII 12490      7792746 bp    0.70 %

DNA elements:     15774      2406074 bp    0.22 %
     hAT-Charlie    173        51788 bp    0.00 %
     TcMar-Tigger   235        39145 bp    0.00 %

Unclassified:      6178      1514721 bp    0.14 %

Total interspersed repeats: 83584385 bp    7.47 %


Small RNA:          583        56112 bp    0.01 %

Satellites:        3957      1220801 bp    0.11 %
Simple repeats:  251683     15033178 bp    1.34 %
Low complexity:   52259      3201968 bp    0.29 %
==================================================

* most repeats fragmented by insertions or deletions
  have been counted as one element
  Runs of >=20 X/Ns in query were excluded in % calcs


The query species was assumed to be homo          
RepeatMasker Combined Database: Dfam_Consensus-20171107, RepBase-20181026

run with rmblastn version 2.6.0+
