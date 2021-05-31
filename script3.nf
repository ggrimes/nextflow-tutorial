/*
 * pipeline input parameters
 */
params.reads = "$baseDir/data/yeast/reads/ref1_{1,2}.fq.gz"
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


read_pairs_ch = Channel .fromFilePairs(params.reads)
