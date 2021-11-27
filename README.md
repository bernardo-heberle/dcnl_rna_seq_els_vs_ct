# RNA Seq Analysis for Publication: XXX

## doi:


### Repository Organization and Data Availability:



##### nextflow_pipeline/ --- Contains the nextflow pipeline for performing the quality control, trimming, mapping, and quantification of transcripts.

##### deseq2_scripts/ --- Contains the deseq2 scripts used for outlier detection, differential gene expression analysis, and generating graphs.

##### deseq2_data/ --- Contains code used to cleanup feature matrix, the cleanud up feature matrices, and the metada used in the deseq2 analyses.

##### singularity/ --- Contains the singularity recipe for the container used in these analyses.

##### count_data/ ---- Contains gene quantification matrix with data for all samples outputed by FeatureCounts.

##### Raw Illumina paired-end data can be found at: [Raw Data](https://drive.google.com/drive/folders/1IRp2A5-B7ENPiobFfX452opIA5OixlzZ?usp=sharing)

##### Raw data can be downloaded using command: ` wget https://drive.google.com/drive/folders/1IRp2A5-B7ENPiobFfX452opIA5OixlzZ?usp=sharing `

##### Singularity container used for this analyses can be found at:

##### Singularity container can be downloaded using command: ` wget XXX `

##### Alternatively singularity container can be pulled using command: ` singularity pull XXX `

##### Mouse reference genome used: [Mouse Reference Genome](http://ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/) --- Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

##### Mouse reference annotation used: [Mouse Genome Annotation](http://ftp.ensembl.org/pub/release-104/gtf/mus_musculus/) --- Mus_musculus.GRCm39.104.gtf.gz
