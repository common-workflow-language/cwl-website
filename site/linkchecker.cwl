#!/usr/bin/env cwl-runner
class: CommandLineTool
cwlVersion: v1.0
hints:
  DockerRequirement:
    dockerFile: |
      FROM debian:8
      RUN apt-get update && \
          DEBIAN_FRONTEND=noninteractive apt-get -yq install w3c-linkchecker \
    dockerImageId: commonworkflowlanguage/checklink
  ResourceRequirement:
   ramMin: 10
inputs:
  inp:
    type: File
    inputBinding: {position: 1}
outputs:
  report:
    type: File
    outputBinding:
      glob: linkchecker-report.txt
      #loadContents: true
      #outputEval: |
      #  ${
      #    return if (self.contents.length > 0) {
      #
      #    }
      #  }
baseCommand: checklink
arguments: ["-X(http.*|mailto:.*)", "-q"]
stdout: linkchecker-report.txt
