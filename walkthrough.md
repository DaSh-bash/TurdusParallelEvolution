### Walkthrough

June 6th

1. BUSCO
(base) [daria@rackham3 busco]$ module load BUSCO/5.3.1
augustus/3.4.0 : If you see errors about not being able to write to an augustus directory, see 'module help augustus/3.4.0'
The environment variable BUSCO_LINEAGE_SETS is set to a directory containing
BUSCO v5 lineage sets.  Use with the -l option, for example:
    run_BUSCO.py -l $BUSCO_LINEAGE_SETS/fungi_odb10 ...
A list of available lineage sets is provided via 'module help BUSCO/5.3.1'
----
If you see this error from BUSCO:
    Error: Cannot write to Augustus directory, please make sure you have write permissions to <directory>
then you need to create a local copy of the config directory from the augustus
module with 'source $AUGUSTUS_CONFIG_COPY'.  See 'module help augustus/3.4.0'

run_BUSCO.py -i GCF_009819885.2_bCatUst1.pri.v2_protein.faa -l $BUSCO_LINEAGE_SETS/aves_odb10 -f -o turdus_busco -m protein

Available genes:
>XP_032941916.1 embigin [Catharus ustulatus]
>XP_032933739.1 protein SCAI [Catharus ustulatus]
>XP_032933652.1 protein FAM78A [Catharus ustulatus]
>XP_032933707.1 torsin-4A [Catharus ustulatus]
>XP_032927768.1 thioredoxin reductase 3 [Catharus ustulatus]
>XP_032919305.1 calpain-3 isoform X1 [Catharus ustulatus]


June 7th
Organizing folders

June 8th
cat TAT_A_3754_ATCACG_trimmed.FAM78A.tst_for_aln.fasta TAT_A_3754_ATCACG_trimmed.TOR4A.tst_for_aln.fasta TAT_A_3754_ATCACG_trimmed.TXNRD3.tst_for_aln.fasta > prank_TATA_FAM78A_TOR4A_TXNRD3.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ cat TAT_B_3755_CGATGT_trimmed.FAM78A.tst_for_aln.fasta TAT_B_3755_CGATGT_trimmed.TOR4A.tst_for_aln.fasta TAT_B_3755_CGATGT_trimmed.TXNRD3.tst_for_aln.fasta > prank_TATB_FAM78A_TOR4A_TXNRD3.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ cat TEV_O_3760_CAGATC_trimmed.FAM78A.tst_for_aln.fasta TEV_O_3760_CAGATC_trimmed.TOR4A.tst_for_aln.fasta TEV_O_3760_CAGATC_trimmed.TXNRD3.tst_for_aln.fasta > prank_TEV_FAM78A_TOR4A_TXNRD3.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ cat TNA_1_3758_ACAGTG_trimmed.FAM78A.tst_for_aln.fasta TNA_1_3758_ACAGTG_trimmed.TOR4A.tst_for_aln.fasta TNA_1_3758_ACAGTG_trimmed.TXNRD3.tst_for_aln.fasta > prank_TNA1_FAM78A_TOR4A_TXNRD3.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ cat TNA_A_3756_TTAGGC_trimmed.FAM78A.tst_for_aln.fasta TNA_A_3756_TTAGGC_trimmed.TOR4A.tst_for_aln.fasta TNA_A_3756_TTAGGC_trimmed.TXNRD3.tst_for_aln.fasta > prank_TNAA_FAM78A_TOR4A_TXNRD3.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ cat prank* > turdus_prank.fasta
(base) Chiffchaff:BUSCO_concatenated dshipilina$ du -h turdus_prank.fasta
https://www.ebi.ac.uk/goldman-srv/cgi-bin/results.cgi?jobid=prank-S20220608-054448-0486-92906551-p2m&title=turdus_prank.fasta

(Turdus_naumani2TNAA:0.0118,(((Turdus_eunomus1:0.0064,Turdus_naumani1TNA1:0.0059):0.0002,Turdus_atrogularis1:0.008):0.0005,((Turdus_ruficolis1:0.0075,Turdus_ruficolis2:0.0046):0.002,Turdus_atrogularis2:0.0097):0.0013):0.0009);


September 2
Repeat masking completed
Working with PAML

April
Give a link to th  
