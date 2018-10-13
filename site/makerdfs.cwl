#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  schema:
    type: File
    inputBinding: {position: 1}
  target_path: string
outputs:
  rdfs: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
baseCommand: [python, "-mschema_salad", "--print-rdfs"]
stdout: $(inputs.target_path)
