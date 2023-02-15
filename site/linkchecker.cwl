#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool
requirements:
  InitialWorkDirRequirement:
    listing:
    - entryname: linkcheckerrc
      entry: |
        [checking]
        localwebroot=$(inputs.inp.dirname)/
  NetworkAccess:
    networkAccess: true
hints:
  DockerRequirement:
    dockerFile: |
      FROM debian:11
      RUN apt-get update && \
          DEBIAN_FRONTEND=noninteractive apt-get -yq install --no-install-recommends linkchecker
    dockerImageId: commonworkflowlanguage/linkchecker
  ResourceRequirement:
    ramMin: 10
inputs:
  inp:
    type: File
    inputBinding: {position: 1}
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
- --ignore-url
- .*arxiv.org.*
- --ignore-url
- .*github.com.*
- --ignore-url
- .*badgen.net.*
stdout: linkchecker-report.txt
outputs:
  report:
    type: File
    outputBinding:
      glob: linkchecker-report.txt
