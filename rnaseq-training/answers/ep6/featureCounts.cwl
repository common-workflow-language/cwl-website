cwlVersion: v1.2
class: CommandLineTool

inputs:
  gtf: File
  counts_input_bam:
   - File
   - File[]

baseCommand: featureCounts

arguments: [-T, $(runtime.cores),
            -a, $(inputs.gtf),
            -o, featurecounts.tsv,
            $(inputs.counts_input_bam)]

outputs:
  featurecounts:
    type: File
    outputBinding:
      glob: featurecounts.tsv

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/subread:1.5.0p3--0
