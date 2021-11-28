process MAPPING {

    publishDir 'results/mapping/', mode: 'copy', overwrite: false

    label 'big_mem'

    input:
        val(id)
        path(trimmed_R1)
        path(trimmed_R2)
        path(index)

    output:
        val "$id", emit: id
        path "*.bam", emit: bam
        path "*.bai", emit: bai
        path "*Log.final.out", emit: QC_3
        path "*stat", emit: QC_4

    script:
    """

    STAR --genomeDir "${index}" \
        --runThreadN 16 \
        --readFilesIn "${trimmed_R1}" "${trimmed_R2}" \
        --outSAMtype BAM SortedByCoordinate \
        --outFileNamePrefix ./"${id}_"

    mv "${id}_Aligned.sortedByCoord.out.bam" "${id}.bam"
    samtools index "${id}.bam"
    samtools flagstat "${id}.bam" > "${id}.flagstat"
    samtools idxstats "${id}.bam" > "${id}.idxstat"

    """
}

