// Make this pipeline a nextflow 2 implementation
nextflow.enable.dsl=2


// Pipeline parameter default values, can be modified by user when calling pipeline on command line (e.g. --data_fq sample_1.fastq) ##
params.ref = 'references/Mus_musculus.GRCm39.dna.primary_assembly.fa'
params.gtf = 'references/Mus_musculus.GRCm39.104.gtf'
params.data_dir = 'raw_data/'
params.multiqc_config = "multiqc_config/multiqc_config.yaml"


log.info """\
 ILLUMINA RNA-SEQ PIPELINE FOR DCNL LAB
 ===============================================
 data directory with fastq files                   : ${params.data_dir}
 reference genome                                  : ${params.ref}
 reference annotation                              : ${params.gtf}
 multiqc report configuration                      : ${params.multiqc_config}
 """


// Import Modules
include {TRIM_GALORE} from './modules/trim_galore'
include {MAKE_INDEX} from './modules/make_index'
include {MAPPING} from './modules/mapping'
include {FEATURE_COUNTS} from './modules/feature_counts'
include {MULTIQC} from './modules/multiqc'

// Define initial files and channels
fastq_files = params.data_dir + '*_{1,2}.fq'
downsizes = Channel.from(0.05, 0.10, 0.15, 0.20, 0.25, 0.30, 0.35, 0.40, 0.45, 0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.00)
annotation = Channel.value(file(params.gtf))
reference = Channel.value(file(params.ref))
fastq_list = Channel.fromFilePairs(fastq_files, flat:true)
multiqc = Channel.from(file(params.multiqc_config))

// Workflow Implementation

workflow{

    TRIM_GALORE(fastq_list)

    MAKE_INDEX(reference, annotation)

    MAPPING(TRIM_GALORE.out.id, TRIM_GALORE.out.trim_1, TRIM_GALORE.out.trim_2, MAKE_INDEX.out)

    FEATURE_COUNTS(MAPPING.out.id, MAPPING.out.bam, MAPPING.out.bai, annotation)

    MULTIQC(TRIM_GALORE.out.QC_1.collect(), TRIM_GALORE.out.QC_2.collect(), MAPPING.out.QC_3.collect(), MAPPING.out.QC_4.collect(), multiqc)
    
}
