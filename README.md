# Parallel Evolution in Turdus

Main directory contains fasta files generated using bcftools consensus utility
* Contain section of scaffold730
* Include region covering all hits in OCA2 and HERC genes

GenomeScan folder contains preliminary graphs
* Nucleotide diversity for all combinations of species
* Fst ("pseudo", because there are only two samples)

### Downloaded all recordings

# To do:
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
