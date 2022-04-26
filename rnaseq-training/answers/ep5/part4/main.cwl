cwlVersion: v1.2
class: Workflow
label: RNAseq CWL practice workflow

### 2. Scattering
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

  ### 4. Combining results
  featureCounts:
    requirements:
      ResourceRequirement:
        ramMin: 500
    run: featureCounts.cwl
    in:
      counts_input_bam: alignment/bam_sorted_indexed
      gtf: gtf
    out: [featurecounts]

outputs:
  qc_html:
    type: File[]
    outputSource: alignment/qc_html
  bam_sorted_indexed:
    type: File[]
    outputSource: alignment/bam_sorted_indexed

  ### 4. Combining results
  featurecounts:
    type: File
    outputSource: featureCounts/featurecounts

requirements:
  SubworkflowFeatureRequirement: {}
  ScatterFeatureRequirement: {}
