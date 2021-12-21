#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0
hints:
  DockerRequirement:
    dockerFile: |
      FROM debian:11
      RUN apt-get update && \
          DEBIAN_FRONTEND=noninteractive apt-get -yq install --no-install-recommends linkchecker
    dockerImageId: commonworkflowlanguage/linkchecker
  ResourceRequirement:
   ramMin: 10
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: linkcheckerrc
        entry: |
          [checking]
          localwebroot=$(inputs.inp.dirname)/
inputs:
  inp:
    type: File
    inputBinding: {position: 1}
outputs:
  report:
    type: File
    outputBinding:
      glob: linkchecker-report.txt
baseCommand: linkchecker
arguments:
 - --config=$(runtime.outdir)/linkcheckerrc
 - --ignore-url
 - .*/cwl-staging/.*
 - --ignore-url
 - .*/rnaseq-training/.*
 - --ignore-url
 - .*/user_guide/.*
 - --check-extern
 - --no-robots
 - --ignore-url
 - .*identifiers.org.*
stdout: linkchecker-report.txt
