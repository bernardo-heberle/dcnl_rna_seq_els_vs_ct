#### Nextflow is a domains specific language that allows for the implementation of easily reproducible and scalable bioinformatics pipelines. 

### [Nextflow Documentation](https://www.nextflow.io/docs/latest/index.html)


## Directory structure and file description:


##### nextflow.config: contains configuration setup, needs to be changed to adapt to the configuration of your local or High Performance Computing environment.


##### main.nf: main pipeline script, it takes three parameters:

   ##### --ref <path_to_reference_genome>
   ##### --gtf <path_to_genome_annotaion>
   ##### --fastq <path_to_directory_containing_paired_end_fastq_files>
   ##### --multiqc_config <path_to_multiqc_yaml_file>
   

 ##### modules: Contains script for each module of the pipeline, there you can find the specific parameters set for each tool used in the analyses.
         
 ## Example Command:
 
 #### ` nextflow main.nf --ref references/human_genome.fa --gtf references/human_annotation.gtf --fastq raw_paired_end_data/ --multiqc_config multiqc_config/multiqc_config.yaml`
 

 
 ## Workflow:
 
 #### Trimming and Quality Control: [Trim Galore](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/)
 
 #### Alignment: [STAR Aligner](https://github.com/alexdobin/STAR)
 
 #### Gene Level Quantification: [FeatureCounts](https://academic.oup.com/bioinformatics/article/30/7/923/232889)
 
 #### Quality Control Report Generation: [MultiQC](https://multiqc.info/)
