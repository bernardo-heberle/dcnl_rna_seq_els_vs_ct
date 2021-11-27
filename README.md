# RNA Seq Analysis for Publication: XXX

### doi:

Repository containing all the code utilized for the analyses of the RNA-seq data in publication XXX.



nextflow_pipeline - Contains the nextflow pipeline for performing the quality control, trimming, mapping, and quantification of transcripts.

deseq2_scripts/ - contains the deseq2 scripts used for outlier detection, differential gene expression analysis, and generating graphs.

deseq2_data/ - contains code used to cleanup feature matrix and the metada used in the deseq2 analyses.

singularity/illumina_rna_seq.rec - contains the singularity recipe for the container used in these analyses.

Raw Illumina paired-end data can be found at: 

singularity container used for this analyses can be found at:

Mouse reference genome used: ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

Mouse reference annotation used: ftp.ensembl.org/pub/release-104/gtf/mus_musculus/Mus_musculus.GRCm39.104.gtf.gz
