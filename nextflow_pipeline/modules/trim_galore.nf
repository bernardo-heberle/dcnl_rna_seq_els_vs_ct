process TRIM_GALORE {

    publishDir 'results/trim_galore/', mode: 'copy', overwrite: false

    label "regular"

    input:
    tuple val(id), file(file_R1), file(file_R2)

    output:
    val "$id", emit: id
    path "*val_1*.fq", emit: trim_1
    path "*val_2*.fq", emit: trim_2
    path "*report.txt", emit: QC_1
    path "*fastqc.zip", emit: QC_2

    script:
    """ 
    trim_galore --paired --illumina -j 8 --fastqc "${file_R1}" "${file_R2}" -o ./ --basename "${id}"
    """ 
}

