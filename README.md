# RNA Seq Analysis for Publication: XXX

## doi:


### Repository Organization and Data Availability:



##### nextflow_pipeline/ --- Contains the nextflow pipeline for performing the quality control, trimming, mapping, and quantification of transcripts.

##### deseq2_scripts/ --- Contains the [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html) scripts used for outlier detection, differential gene expression analysis, and generating graphs.

##### deseq2_data/ --- Contains code used to cleanup feature matrix, the cleaned-up up feature matrices, and the metada used in the deseq2 analyses.

##### singularity/ --- Contains the [singularity](https://sylabs.io/docs/) recipe for the container used in this nextflow pipeline.

##### count_data/ ---- Contains gene quantification matrix with data for all samples outputed by [FeatureCounts](https://academic.oup.com/bioinformatics/article/30/7/923/232889)

##### quality_control/ --- Contains quality control report html file and QC data made with [MultiQC](https://multiqc.info/)

##### Raw Illumina paired-end data can be found at: <Insert Link Here> - Maybe NIH or Someone Else will make available, I don't currently have the capacity to host this on personal servers.

##### Singularity container and recipe used for this analyses can be found at: [Container](https://cloud.sylabs.io/library/bernardo-heberle/default/dcnl_illumina_rna_seq)

##### Singularity container can be pulled using command: ` singularity pull library://bernardo-heberle/default/dcnl_illumina_rna_seq:sha256.07e7e087d436daa71709dd0c48d60d0e3f6e50f2a89d5c7d9adf57ebf6ad136e `

##### Mouse reference genome used: [Mouse Reference Genome](http://ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/) --- Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

##### Download from command line: ` wget ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.primary_assembly.fa.gz `

##### Mouse reference annotation used: [Mouse Genome Annotation](http://ftp.ensembl.org/pub/release-104/gtf/mus_musculus/) --- Mus_musculus.GRCm39.104.gtf.gz

##### Download from command line: ` wget ftp.ensembl.org/pub/release-104/gtf/mus_musculus/Mus_musculus.GRCm39.104.gtf.gz `


#### Download this repository using commmand line: ` git clone https://github.com/bernardo-heberle/dcnl_rna_seq_els_vs_ct `
