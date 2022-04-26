# File header
cwlVersion: v1.2
class: CommandLineTool

# Command line tool inputs
inputs:
  gtf: File
  counts_input_bam: File

# Specifying the program to run
baseCommand: featureCounts

# Command arguments
arguments: [-T, $(runtime.cores),
            -a, $(inputs.gtf),
            -o, featurecounts.tsv,
            $(inputs.counts_input_bam)]

# Outputs section
outputs:
  featurecounts:
    type: File
    outputBinding:
      glob: featurecounts.tsv

# Running in a container
hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/subread:1.5.0p3--0
