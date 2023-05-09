# Parallel Evolution in Turdus


Google Doc:
https://docs.google.com/document/d/13vqfp9LtZSgs3QCbmtYTmZpidZOh6sTw8f6pTtfI3xQ/edit#heading=h.14rhhgnzghmt

### To do:
**Figure 1**:  
1. Analyse acoustic data, present sonogram  
2. Replot with sampling locations

**Figure 2**:
1. Make new phylogeny

**Figure 3**:
1. **N** Filter vcf file (incl. repeats)  
 For repeats use bedtools, like:  
 `bedtools subtract -a no_missing.recode.vcf.gz -b pacbio.prim.assembly.fasta.out.gff > no_missing.recode.no_repeats.vcf`

 Annotation can be download from here:
 https://www.dropbox.com/s/q9rfycin6k5jwbr/GCF_009819885.2_bCatUst1.pri.v2_genomic.fna.out.gff?dl=0


2. **N** Calculate segregating SNPs + parallel SNP (rerun scripts)
3. Replot with an extra individual, separate chromosomes
4. Check elevated Fst regions

**Figure 4**:  
1. **N** Extract all genes for new individual
2. **N** Fix the OCA2 problem
3. Calculae dN/dS for all the genes  
4. Classify SNPs based on effect















### To do (February):
- Manhattan plot (4 comparisons)
- Prepare fasta for alignments:  

**File 1: OCA2**

\>NC_046222.1:91125859-91232199_Turdus1_OCA2_isoform_XP_032909437.1  
ATAGACAGT  
\>NC_046222.1:91125859-91232199_Turdus1_OCA2_isoform_XP_032909438.1  
ATAGACAGT  
\>NC_046222.1:91125859-91232199_Turdus1__OCA2_isoform_XP_032909436.1  
ATAGACAGT    
....

**File 2: HERC**
\>NC_046222.1:91125859-91232199_HERC_isoform_XP_032908953.1
\>NC_046222.1:91125859-91232199_HERC_isoform_XP_032908955.1
\>NC_046222.1:91125859-91232199_HERC_isoform_XP_032908954.1   


**How to ~~train your dragon~~ get your isoforms:**  
* Split isoforms
* Remove extra headers:
`sed '/>/d' TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.fasta > TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.tst.fasta`
* Remove line breaks:
`echo $(cat TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.tst.fasta) > tst2.txt`
* Remove extra spaces:
`sed  's/ //g' tst2.txt > tst_for_aln.fasta`
* Merge fastas from isoforms **and** individuals




#### Folder description

Main directory contains fasta files generated using bcftools consensus utility
* Contain section of scaffold730
* Include region covering all hits in OCA2 and HERC genes

GenomeScan folder contains preliminary graphs
* Nucleotide diversity for all combinations of species
* Fst ("pseudo", because there are only two samples)




### PLAN:
#### Fig.1 Manhattan plot
	Remap genome (bwa, STAMPY)
	Plot
#### Fig. 2 Types of substitutions
	Remap genome
	PAML
	snpEFF or similar
#### Fig. 3 Phylogeny
	Choose genes
	Choose software
	RAxML


How to ~~train your dragon~~ get your isoforms:
sed '/>/d' TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.fasta > TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.tst.fasta
echo $(cat TAT_A_3754_ATCACG_trimmed.XP_032908953.HERC2.exon.tst.fasta) > tst2.txt
sed  's/ //g' tst2.txt > tst_for_aln.fasta
