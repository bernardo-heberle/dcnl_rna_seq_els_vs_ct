# RNA Seq Analysis for Publication: XXX

### doi:

Repository containing all the code utilized for the analyses of the RNA-seq data in publication XXX.



nextflow_scripts/ill_pipeline.nf - contains the nextflow pipeline I wrote for the quality control, trimming, mapping, and quantification of transcripts.

deseq2/ - contains the deseq2 scripts used for the differential gene expression analysis and generating graphs. Also contains code used to cleanup feature matrix and the metadata
used in the deseq2 analyses.

singularity/ill_pipeline.recipe - contains the singularity recipe for the container used in these analyses.

Raw Illumina paired-end data can be found at:

singularity container used for this analyses can be found at:

Mouse reference genome used: ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

Mouse reference annotation used: ftp.ensembl.org/pub/release-104/gtf/mus_musculus/Mus_musculus.GRCm39.104.gtf.gz
