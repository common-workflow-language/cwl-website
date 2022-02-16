#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
hints:
  ResourceRequirement:
   ramMin: 180
   ramMax: 2600
inputs:
  schema:
    type: File
    inputBinding: {position: 1}
  target_path: string
outputs:
  jsonld_context: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
baseCommand: [schema-salad-tool, --print-jsonld-context]
stdout: $(inputs.target_path)
