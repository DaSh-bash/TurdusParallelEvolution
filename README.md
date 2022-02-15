# Parallel Evolution in Turdus


## To do (February):
- Manhattan plot (4 comparisons)
- Prepare fasta for alignments:  

**File 1: OCA2**

\>NC_046222.1:91125859-91232199_Turdus1_OCA2_isoform_XP_032909437.1  
ATAGACAGT  
\>NC_046222.1:91125859-91232199_Turdus1_OCA2_isoform_XP_032909438.1  
ATAGACAGT  
\>NC_046222.1:91125859-91232199_Turdus1__OCA2_isoform_XP_032909436.1  
ATAGACAGT  
\>NC_046222.1:91125859-91232199_Turdus2__OCA2_isoform_XP_032909436.1  
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
