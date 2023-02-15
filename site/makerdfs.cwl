#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
hints:
  ResourceRequirement:
    ramMin: 1800
    ramMax: 2700
inputs:
  schema:
    type: File
    inputBinding: {position: 1}
  target_path: string
baseCommand: [schema-salad-tool, --print-rdfs]
stdout: $(inputs.target_path)
outputs:
  rdfs: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
