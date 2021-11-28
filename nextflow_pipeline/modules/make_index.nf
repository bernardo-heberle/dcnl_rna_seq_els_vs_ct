process MAKE_INDEX {

    publishDir 'results/mapping/', mode: 'copy', overwrite: false

    label 'big_mem'

    input:
        path reference
        path annotation

    output:
        path "./STAR_indexes"


    script:
    """

    STAR --runThreadN 32 \
         --runMode genomeGenerate \
         --genomeDir ./STAR_indexes \
         --genomeFastaFiles $reference \
         --sjdbGTFfile $annotation \
         --sjdbOverhang 149 \
 
    """
}
