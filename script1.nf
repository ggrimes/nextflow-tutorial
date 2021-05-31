/*
 * pipeline input parameters
 */
params.reads = "$baseDir/data/yeast/reads/ref1_{1,2}.fq.gz"
params.transcript = "$baseDir/data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa.gz"
params.multiqc = "$baseDir/multiqc"

println "reads: $params.reads"
