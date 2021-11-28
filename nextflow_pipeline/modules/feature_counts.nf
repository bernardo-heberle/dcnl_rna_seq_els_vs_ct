process FEATURE_COUNTS{

    publishDir 'results/feature_counts/', mode: 'copy', overwrite: false
    
    label "regular"

    input:
        val id
        path bam
        path bai 
        file annotation 

    output:
        path "*"

    script:
    """

    featureCounts \
    -T 12 \
    -p \
    -t exon \
    -g gene_id \
    -a $annotation \
    --extraAttributes 'gene_name' \
    -o "feature_counts.txt" $bam

    """
}

