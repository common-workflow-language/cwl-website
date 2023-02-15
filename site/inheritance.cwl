#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool
requirements:
  ShellCommandRequirement: {}
  InlineJavascriptRequirement: {}
hints:
  ResourceRequirement:
    ramMin: 200
    ramMax: 2700
inputs:
  schema: File
  target_path: string
baseCommand: schema-salad-tool
arguments:
- "--print-inheritance-dot"
- $(inputs.schema)
- {valueFrom: "|", shellQuote: false}
- dot
- "-Tsvg"
stdout: $(inputs.target_path)
outputs:
  svg: stdout
  targetdir:
    type: string
    outputBinding:
      outputEval: $(inputs.target_path.match(/^([^/]+)\/[^/]/)[1])
