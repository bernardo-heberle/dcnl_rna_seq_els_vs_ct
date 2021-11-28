# RNA Seq Analysis for Publication: XXX

## doi:


### Repository Organization and Data Availability:



##### nextflow_pipeline/ --- Contains the nextflow pipeline for performing the quality control, trimming, mapping, and quantification of transcripts.

##### deseq2_scripts/ --- Contains the [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html) scripts used for outlier detection, differential gene expression analysis, and generating graphs.

##### deseq2_data/ --- Contains code used to cleanup feature matrix, the cleanud up feature matrices, and the metada used in the deseq2 analyses.

##### singularity/ --- Contains the [singularity](https://sylabs.io/docs/) recipe for the container used in this nextflow pipeline.

##### count_data/ ---- Contains gene quantification matrix with data for all samples outputed by [FeatureCounts](https://academic.oup.com/bioinformatics/article/30/7/923/232889)

##### quality_control/ --- Contains quality control report html file and QC data made with [MultiQC](https://multiqc.info/)

##### Raw Illumina paired-end data can be found at: [Raw Data](https://drive.google.com/drive/folders/1IRp2A5-B7ENPiobFfX452opIA5OixlzZ?usp=sharing)

##### Raw data tar file can be downloaded using command: ` wget --header 'Host: doc-0o-bs-docs.googleusercontent.com' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --header 'Alt-Used: doc-0o-bs-docs.googleusercontent.com' --header 'Cookie: AUTH_7mfqo06n24u7ujchd6338ec3c6t21k8j_nonce=rlja8k1ug99ji' --header 'Upgrade-Insecure-Requests: 1' --header 'Sec-Fetch-Dest: iframe' --header 'Sec-Fetch-Mode: navigate' --header 'Sec-Fetch-Site: cross-site' 'https://doc-0o-bs-docs.googleusercontent.com/docs/securesc/vk8etfpokj3jbs4mfdueg0h2bif4lorl/6n2vvn1pdocqf6lmqa526tu923o0n4um/1638139575000/04116607898065155461/04116607898065155461/1N7qi0U-ez_wpqT1yVbZwpiJOeKc2So6y?e=download&authuser=0&nonce=rlja8k1ug99ji&user=04116607898065155461&hash=3n756lh95di45o4ed9p919ljg15ucqjd' --output-document 'dcnl_rna_seq_raw_data.tar' `

##### Singularity container used for this analyses can be found at: [Container](https://cloud.sylabs.io/library/bernardo-heberle/default/dcnl_illumina_rna_seq)

##### Singularity container can be downloaded using command: ` wget --header 'Host: doc-0o-bs-docs.googleusercontent.com' --user-agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --header 'Alt-Used: doc-0o-bs-docs.googleusercontent.com' --header 'Cookie: AUTH_7mfqo06n24u7ujchd6338ec3c6t21k8j_nonce=jrdd2r73th1a2' --header 'Upgrade-Insecure-Requests: 1' --header 'Sec-Fetch-Dest: iframe' --header 'Sec-Fetch-Mode: navigate' --header 'Sec-Fetch-Site: cross-site' 'https://doc-0o-bs-docs.googleusercontent.com/docs/securesc/vk8etfpokj3jbs4mfdueg0h2bif4lorl/o392uk88eaeh0fcndlbadmc2mjo5568k/1638139875000/04116607898065155461/04116607898065155461/1C74HyBy41O6nnyKwG8u_hf78OKl-jDcR?e=download&authuser=0&nonce=jrdd2r73th1a2&user=04116607898065155461&hash=an4p5o6evcprj26c4f9hq2fjulv837af' --output-document 'dcnl_illumina_rna_seq.sif' `

##### Alternatively, singularity container can be pulled using command: ` singularity pull library://bernardo-heberle/default/dcnl_illumina_rna_seq:sha256.07e7e087d436daa71709dd0c48d60d0e3f6e50f2a89d5c7d9adf57ebf6ad136e `

##### Mouse reference genome used: [Mouse Reference Genome](http://ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/) --- Mus_musculus.GRCm39.dna.primary_assembly.fa.gz

##### Download from command line: ` wget ftp.ensembl.org/pub/release-104/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.primary_assembly.fa.gz `

##### Mouse reference annotation used: [Mouse Genome Annotation](http://ftp.ensembl.org/pub/release-104/gtf/mus_musculus/) --- Mus_musculus.GRCm39.104.gtf.gz

##### Download from command line: ` wget ftp.ensembl.org/pub/release-104/gtf/mus_musculus/Mus_musculus.GRCm39.104.gtf.gz `
