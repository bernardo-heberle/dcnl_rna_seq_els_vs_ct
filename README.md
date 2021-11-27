# RNA Seq Analysis for Publication: XXX

## doi:


### Repository Organization and Data Availability:



##### nextflow_pipeline/ --- Contains the nextflow pipeline for performing the quality control, trimming, mapping, and quantification of transcripts.

##### deseq2_scripts/ --- Contains the deseq2 scripts used for outlier detection, differential gene expression analysis, and generating graphs.

##### deseq2_data/ --- Contains code used to cleanup feature matrix, the cleanud up feature matrices, and the metada used in the deseq2 analyses.

##### singularity/ --- Contains the singularity recipe for the container used in these analyses.

##### count_data/ ---- Contains gene quantification matrix with data for all samples outputed by FeatureCounts.

##### quality_control/ --- Contains quality control report html file made with MultiQC.

##### Raw Illumina paired-end data can be found at: [Raw Data](https://drive.google.com/drive/folders/1IRp2A5-B7ENPiobFfX452opIA5OixlzZ?usp=sharing)

##### Raw data tar file can be downloaded using command: ` wget --header 'Host: doc-0o-bs-docs.googleusercontent.com' --user-agent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --header 'Alt-Used: doc-0o-bs-docs.googleusercontent.com' --header 'Cookie: AUTH_7mfqo06n24u7ujchd6338ec3c6t21k8j_nonce=bihsqhs1hubbi' --header 'Upgrade-Insecure-Requests: 1' --header 'Sec-Fetch-Dest: iframe' --header 'Sec-Fetch-Mode: navigate' --header 'Sec-Fetch-Site: cross-site' 'https://doc-0o-bs-docs.googleusercontent.com/docs/securesc/vk8etfpokj3jbs4mfdueg0h2bif4lorl/bma65i8ki5vt65lpng7uqm4brcjh01c2/1638044775000/04116607898065155461/04116607898065155461/1N7qi0U-ez_wpqT1yVbZwpiJOeKc2So6y?e=download&authuser=0&nonce=bihsqhs1hubbi&user=04116607898065155461&hash=ce4f8988k9a8gtpd47fr15a276fvrakv' --output-document 'dcnl_rna_seq_raw_data.tar' `

##### Singularity container used for this analyses can be found at:

##### Singularity container can be downloaded using command: ` wget XXX `

##### Alternatively singularity container can be pulled using command: ` singularity pull XXX `

##### Mouse reference genome used: [Mouse Reference Genome](http://ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/) --- Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

##### Mouse reference annotation used: [Mouse Genome Annotation](http://ftp.ensembl.org/pub/release-104/gtf/mus_musculus/) --- Mus_musculus.GRCm39.104.gtf.gz
