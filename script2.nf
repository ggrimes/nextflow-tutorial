/*
 * pipeline input parameters
 */
params.reads = "$baseDir/data/yeast/reads/*_{1,2}.fq.gz"
params.transcript = "$baseDir/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa.gz"
params.multiqc = "$baseDir/multiqc"
params.outdir = "results"

log.info """\
         R N A S E Q - N F   P I P E L I N E
         ===================================
         transcriptome: ${params.transcript}
         reads        : ${params.reads}
         outdir       : ${params.outdir}
         """
         .stripIndent()


/*
 * define the `index` process that create a binary index
 * given the transcriptome file
 */
process index {

    input:
    path transcriptome from params.transcript

    output:
    path 'index' into index_ch

    script:
    """
    salmon index --threads $task.cpus -t $transcriptome -i index
    """
}
