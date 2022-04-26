cwlVersion: v1.2
class: Workflow
label: RNAseq CWL practice workflow

inputs:
  fq: File
  genome: Directory
  gtf: File

steps:
  fastqc:
    run: bio-cwl-tools/fastqc/fastqc_2.cwl
    in:
      reads_file: fq
    out: [html_file]

  STAR:
    requirements:
      ResourceRequirement:
        ramMin: 9000
    run: bio-cwl-tools/STAR/STAR-Align.cwl
    in:
      RunThreadN: {default: 4}
      GenomeDir: genome
      ForwardReads: fq
      OutSAMtype: {default: BAM}
      OutSAMunmapped: {default: Within}
    out: [alignment]

  samtools:
    run: bio-cwl-tools/samtools/samtools_index.cwl
    in:
      bam_sorted: STAR/alignment
    out: [bam_sorted_indexed]

  featureCounts:
    requirements:
      ResourceRequirement:
        ramMin: 500
    run: featureCounts.cwl
    in:
      counts_input_bam: samtools/bam_sorted_indexed
      gtf: gtf
    out: [featurecounts]

outputs:
  qc_html:
    type: File
    outputSource: fastqc/html_file
  bam_sorted_indexed:
    type: File
    outputSource: samtools/bam_sorted_indexed

  featurecounts:
    type: File
    outputSource: featureCounts/featurecounts
