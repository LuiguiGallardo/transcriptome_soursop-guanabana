#!/bin/bash
# Title: script_rsem_bowtie2_28012020.sh
# Purpose: RSEM with bowtie transcripts quantification
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 28.01.2020

# Beginning of the script
# RSEM transcript quantification
cd /a1/luigui/2020/01_transcriptoma_guanabana/
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/util/align_and_estimate_abundance.pl --transcripts 01_metadata_trinity_out_dir_11102019/Trinity.fasta --seqType fq --samples_file metadata_trinity.txt --est_method RSEM --output_dir RSEM_output_dir --trinity_mode --prep_reference --gene_trans_map 01_metadata_trinity_out_dir_11102019/Trinity.fasta.gene_trans_map --aln_method bowtie2 --thread_count 30

/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/util/abundance_estimates_to_matrix.pl --est_method RSEM --gene_trans_map 01_metadata_trinity_out_dir_11102019/Trinity.fasta.gene_trans_map --name_sample_by_basedir A_S1/RSEM.genes.results B_S2/RSEM.genes.results C_S3/RSEM.genes.results D_S4/RSEM.genes.results E_S5/RSEM.genes.results G_S6/RSEM.genes.results H_S7/RSEM.genes.results I_S8/RSEM.genes.results J_S9/RSEM.genes.results K_S10/RSEM.genes.results L2_S11/RSEM.genes.results M_S12/RSEM.genes.results N_S13/RSEM.genes.results P_S15/RSEM.genes.results Q_S16/RSEM.genes.results R_S17/RSEM.genes.results X_S14/RSEM.genes.results --out_prefix 03_RSEM_matrix_gene.results
mkdir 03_RSEM_matrix_gene.results ; mv 03_RSEM_matrix_gene.results* 03_RSEM_matrix_gene.results

/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/util/abundance_estimates_to_matrix.pl --est_method RSEM --gene_trans_map 01_metadata_trinity_out_dir_11102019/Trinity.fasta.gene_trans_map --name_sample_by_basedir A_S1/RSEM.isoforms.results B_S2/RSEM.isoforms.results C_S3/RSEM.isoforms.results D_S4/RSEM.isoforms.results E_S5/RSEM.isoforms.results G_S6/RSEM.isoforms.results H_S7/RSEM.isoforms.results I_S8/RSEM.isoforms.results J_S9/RSEM.isoforms.results K_S10/RSEM.isoforms.results L2_S11/RSEM.isoforms.results M_S12/RSEM.isoforms.results N_S13/RSEM.isoforms.results P_S15/RSEM.isoforms.results Q_S16/RSEM.isoforms.results R_S17/RSEM.isoforms.results X_S14/RSEM.isoforms.results --out_prefix 04_RSEM_matrix_isoforms.results
mkdir 04_RSEM_matrix_isoforms.results ; mv 04_RSEM_matrix_isoforms.results* 04_RSEM_matrix_isoforms.results

# Differential expression analysis with DESeq2, isoforms.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 03_RSEM_matrix_gene.results/03_RSEM_matrix_gene.results.gene.counts.matrix --method DESeq2 --samples_file metadata_trinity.txt
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 03_RSEM_matrix_gene.results/03_RSEM_matrix_gene.results.isoform.counts.matrix --method DESeq2 --samples_file metadata_trinity.txt

/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.gene.counts.matrix --method DESeq2 --samples_file ../metadata_trinity.txt
mv DESeq* deseq2_genes

/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.isoform.counts.matrix --method DESeq2 --samples_file ../metadata_trinity.txt
mv DESeq* deseq2_isoforms

# LFC > 2 and FDR < 0.005
cd deseq2_genes
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.gene.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity.txt  --max_genes_clust 1000000000000
cd .. 

cd deseq2_isoforms
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.isoform.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity.txt  --max_genes_clust 1000000000000

# The end!

