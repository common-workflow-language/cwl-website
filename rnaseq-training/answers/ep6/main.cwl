cwlVersion: v1.2
class: Workflow
label: RNAseq CWL practice workflow

inputs:
  fq: File[]
  genome: Directory
  gtf: File

steps:
  alignment:
    run: alignment.cwl
    scatter: fq
    in:
      fq: fq
      genome: genome
      gtf: gtf
    out: [qc_html, bam_sorted_indexed]

  featureCounts:
    requirements:
      ResourceRequirement:
        ramMin: 500
    run: featureCounts.cwl
    in:
      counts_input_bam: alignment/bam_sorted_indexed
      gtf: gtf
    out: [featurecounts]

  ### 2. Organizing output files into Directories
  output-subdirs:
    run: subdirs.cwl
    in:
      fq: fq
      bams: alignment/bam_sorted_indexed
      qc: alignment/qc_html
    out: [dirs]

outputs:
  dirs:
    type: Directory[]
    outputSource: output-subdirs/dirs

  featurecounts:
    type: File
    outputSource: featureCounts/featurecounts

requirements:
  SubworkflowFeatureRequirement: {}
  ScatterFeatureRequirement: {}
