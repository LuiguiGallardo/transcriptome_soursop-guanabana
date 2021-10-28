#!/bin/bash
# Title: script_deseq2_05022020.sh
# Purpose: Differential expression analysis with DESeq2 with Trinity
# Author: Luigui Gallardo-Becerra (bfllg77@gmail.com)
# Date: 28.10.2021

# Beginning of the script
# Differential expression analysis with DESeq2, genes. First comparison.
cd /a1/luigui/2020/01_transcriptoma_guanabana/04_RSEM_matrix_isoforms.results
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.gene.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp1.txt
mv DESeq* deseq2_genes_comp1

# LFC > 2 and FDR < 0.005
cd deseq2_genes_comp1
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.gene.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp1.txt  --max_genes_clust 1000000000000
cd .. 

# Differential expression analysis with DESeq2, isoforms. First comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.isoform.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp1.txt
mv DESeq* deseq2_isoforms_comp1

# LFC > 2 and FDR < 0.005
cd deseq2_isoforms_comp1
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.isoform.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp1.txt  --max_genes_clust 1000000000000
cd ..

# Differential expression analysis with DESeq2, genes. Second comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.gene.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp2.txt
mv DESeq* deseq2_genes_comp2

# LFC > 2 and FDR < 0.005
cd deseq2_genes_comp2
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.gene.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp2.txt  --max_genes_clust 1000000000000
cd .. 

# Differential expression analysis with DESeq2, isoforms. Second comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.isoform.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp2.txt
mv DESeq* deseq2_isoforms_comp2

# LFC > 2 and FDR < 0.005
cd deseq2_isoforms_comp2
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.isoform.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp2.txt  --max_genes_clust 1000000000000
cd ..

# Differential expression analysis with DESeq2, genes. Third comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.gene.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp3.txt
mv DESeq* deseq2_genes_comp3

# LFC > 2 and FDR < 0.005
cd deseq2_genes_comp3
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.gene.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp3.txt  --max_genes_clust 1000000000000
cd .. 

# Differential expression analysis with DESeq2, isoforms. Third comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.isoform.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp3.txt
mv DESeq* deseq2_isoforms_comp3

# LFC > 2 and FDR < 0.005
cd deseq2_isoforms_comp3
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.isoform.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp3.txt  --max_genes_clust 1000000000000
cd ..

# Differential expression analysis with DESeq2, genes. Fourth comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.gene.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp4.txt
mv DESeq* deseq2_genes_comp4

# LFC > 2 and FDR < 0.005
cd deseq2_genes_comp4
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.gene.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp4.txt  --max_genes_clust 1000000000000
cd .. 

# Differential expression analysis with DESeq2, isoforms. Fourth comparison.
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix 04_RSEM_matrix_isoforms.results.isoform.counts.matrix --method DESeq2 --samples_file ../metadata_trinity_comp4.txt
mv DESeq* deseq2_isoforms_comp4

# LFC > 2 and FDR < 0.005
cd deseq2_isoforms_comp4
/home/luigui/apps/trinityrnaseq-Trinity-v2.5.1/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../04_RSEM_matrix_isoforms.results.isoform.TMM.EXPR.matrix -P 0.005 -C 2 --samples ../../metadata_trinity_comp4.txt  --max_genes_clust 1000000000000
cd ..

# The end!

